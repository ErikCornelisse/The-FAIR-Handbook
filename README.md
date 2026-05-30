# The FAIR Handbook

A complete knowledge base for health data sharing ecosystems using FAIR data and services.

[Available here](https://erikcornelisse.github.io/The-FAIR-Handbook/), automatically built from this source using [Github workflow](https://docs.github.com/en/actions/learn-github-actions/understanding-github-actions).

## Development Instructions

### Building the book

If you'd like to develop and/or build the The FAIR Handbook book, you should:

1. Clone this repository
2. Run `pip install -r requirements.txt` (it is recommended you do this within a virtual environment)
3. (Optional) Edit the books source files located in the `The-FAIR-Handbook/` directory (markdown, jupyter notebooks and tex supported)
4. Run `./build.sh` to compile

A fully-rendered HTML version of the book will be built in `The-FAIR-Handbook/_build/html/`.

#### `build.sh` — always build with this

`build.sh` wraps `jupyter-book build` and applies post-build fixups that the
deployed site depends on. **Use it instead of a bare `jupyter-book build`**, and
note that `jupyter-book start` (the live dev server) does **not** run these
fixups — so search/anchor behaviour there will not match production. To preview
the real behaviour locally, build and serve the static output. The `./serve.sh`
helper does both in one command:

```bash
./serve.sh           # build + serve on http://localhost:8000
./serve.sh 9000      # use a different port
```

(Equivalent to running `./build.sh` then
`python3 -m http.server -d The-FAIR-Handbook/_build/html 8000`.)

To mimic the GitHub Pages subpath locally, build with the same `BASE_URL` CI uses
and serve it under that path:

```bash
BASE_URL=/The-FAIR-Handbook ./build.sh
```

What `build.sh` does on top of `jupyter-book build`:

- **Index-page search links** — MyST records the index page under its slug (e.g.
  `/intro1`), but it is served at the site root, so those search hits would 404.
  The script rewrites them to `/`.
- **Subsection search labels** — inlines `The-FAIR-Handbook/search-subsection-label.js`
  into each page so search results are labelled with the subsection they belong
  to instead of the page title (the link target is unchanged).

The same script runs in CI ([.github/workflows/deploy.yml](.github/workflows/deploy.yml)),
so local builds and the deployed site stay identical.

#### `start.sh` — fast dev loop

For quick iteration while editing content, use the live dev server with
auto-reload:

```bash
./start.sh                 # serves on http://localhost:3000
./start.sh --port 4000     # extra flags pass through to jupyter-book start
```

`start.sh` runs `jupyter-book start` from the project directory and stops its
Node server cleanly on Ctrl+C (the bare command tends to leave that server
running, piling up idle processes). It is for editing convenience only — it does
**not** apply the `build.sh` fixups above, so search and anchor behaviour will
differ from production. Verify those with `./build.sh` before pushing.

### Hosting the book

Please see the [Jupyter Book documentation](https://jupyterbook.org/publish/web.html) to discover options for deploying a book online using services such as GitHub, GitLab, or Netlify. This project already includes a Github workflow that automatically compiles the book to the `gh-pages` branch of this repository.

For GitHub and GitLab deployment specifically, the [cookiecutter-jupyter-book](https://github.com/executablebooks/cookiecutter-jupyter-book) includes templates for, and information about, optional continuous integration (CI) workflow files to help easily and automatically deploy books online with GitHub or GitLab. For example, if you chose `github` for the `include_ci` cookiecutter option, your book template was created with a GitHub actions workflow file that, once pushed to GitHub, automatically renders and pushes your book to the `gh-pages` branch of your repo and hosts it on GitHub Pages when a push or pull request is made to the main branch.


## Acknowledgement

This project is created using the excellent open source [Jupyter Book Project](https://jupyterbook.org/) and the [Jupyter Book Template](https://github.com/executablebooks/cookiecutter-jupyter-book).

## Core Contributors

The core contributors of this project include:
- [Andre Boorsma](https://github.com/aboorsma)
- [Robin van Stokkum](https://github.com/stokkumrmv)
- [Elena Lazovik](https://github.com/elenalazovik)
- [Ruduan Plug](https://github.com/dualslash)

### Would you like to contribute? 

An accessible option is to [open an issue](https://github.com/dualslash/The-FAIR-Handbook/issues) with any question, suggestion or addition that you may have. More advanced users can [create a branch](https://github.com/dualslash/The-FAIR-Handbook/branches) and then make a [pull request](https://github.com/dualslash/The-FAIR-Handbook/pulls) to merge their contribution with the knowledge base.
