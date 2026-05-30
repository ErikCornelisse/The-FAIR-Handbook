/*
 * search-subsection-label.js
 *
 * The MyST book-theme labels every search result with its page's top-level
 * title (hierarchy.lvl1), even for body-text matches that live in a deeper
 * subsection. So a hit under "Health data sharing in practice" is shown under
 * the page header "Welcome to the Playbook..." instead.
 *
 * This script relabels each result's context line (the small `span.text-xs`)
 * with the *deepest* heading the match belongs to:
 *   - body-text match  -> nearest heading (lvl3 || lvl2 || lvl1)
 *   - heading match     -> its parent (so the label doesn't just repeat the
 *                          heading already shown on the main line)
 *   - flat page (no subheadings) -> page title, unchanged
 *
 * The result's link already targets the correct anchor; only the label changes.
 *
 * Data comes from myst.search.json (already fetched by the app, so cached).
 * It degrades gracefully: if the index can't be loaded or the theme's result
 * markup changes in a future mystmd, the relabel simply no-ops and the default
 * lvl1 label remains.
 */
(function () {
  "use strict";

  // Derive the site base path (e.g. "" locally, "/The-FAIR-Handbook" on Pages)
  // from the always-present theme stylesheet link.
  function basePath() {
    var link = document.querySelector('link[href$="myst-theme.css"]');
    if (!link) return "";
    try {
      return new URL(link.href).pathname.replace(/\/myst-theme\.css.*$/, "");
    } catch (e) {
      return "";
    }
  }

  var BASE = basePath();
  var byUrl = null; // record url (no base) -> { h: hierarchy, rank }

  function norm(s) {
    return (s || "").replace(/\s+/g, " ").trim();
  }

  fetch(BASE + "/myst.search.json")
    .then(function (r) { return r.json(); })
    .then(function (data) {
      byUrl = {};
      (data.records || []).forEach(function (rec) {
        var h = rec.hierarchy || {};
        var rank = h.lvl3 ? 3 : h.lvl2 ? 2 : 1;
        var cur = byUrl[rec.url];
        if (!cur || rank > cur.rank) byUrl[rec.url] = { h: h, rank: rank };
      });
      relabelAll();
    })
    .catch(function () { /* no index -> leave default labels */ });

  function relabel(item) {
    var a = item.querySelector("a");
    if (!a || !byUrl) return;
    var key = a.getAttribute("href") || "";
    if (BASE && key.indexOf(BASE) === 0) key = key.slice(BASE.length);
    if (key === "") key = "/";

    var entry = byUrl[key];
    if (!entry) return;
    var h = entry.h;
    var span = a.querySelector("span.text-xs");
    if (!span) return;

    var chain = [h.lvl1, h.lvl2, h.lvl3].filter(Boolean);
    if (chain.length === 0) return;

    // If the result IS a heading (main line equals the deepest level), label
    // with the parent level so we don't repeat the heading.
    var main = norm((a.querySelector(".myst-search-result-highlight") || {}).textContent);
    if (norm(chain[chain.length - 1]) === main && chain.length > 1) chain.pop();

    var label = chain[chain.length - 1];
    if (label && span.textContent !== label) span.textContent = label;
  }

  function relabelAll() {
    if (!byUrl) return;
    document.querySelectorAll(".myst-search-result-item").forEach(relabel);
  }

  // Results render inside a dialog that mounts/updates as the user types, so
  // watch the DOM and re-apply. The textContent guard prevents observer loops.
  //
  // Timing is the tricky part: this script runs synchronously during <head>
  // parse (so it executes before the SPA's hydration strips foreign scripts),
  // but the SPA replaces document.body during hydration — an observer attached
  // before that ends up watching a detached node and never sees the dialog.
  // The search dialog can only be opened *after* the page is interactive (i.e.
  // hydrated), so attach the observer on the first user interaction, by which
  // point document.body is the live, app-managed node. Guarded to run once.
  var started = false;
  function startObserver() {
    if (started) return;
    started = true;
    new MutationObserver(relabelAll).observe(document.body, {
      childList: true,
      subtree: true,
    });
    relabelAll();
  }
  ["pointerdown", "keydown", "focusin"].forEach(function (ev) {
    document.addEventListener(ev, startObserver, true);
  });
})();
