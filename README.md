# portfolio.hyeonbin.net

Personal site of HyeonBin Im — security & cloud, The University of Suwon.

Live: https://portfolio.hyeonbin.net

## What it is

A single static page. No framework, no build step.

- `index.html` — the whole site: markup, styles, and scripts in one file
- `cv.html` → `cv.pdf` — one-page academic CV, rendered with headless Chrome
- `avatar.jpg`, `favicon.png`, `robots.txt`

## Features

- English by default, Korean via toggle (`data-i18n` dictionary in the page)
- Light / dark theme following the system preference, with a manual override
- Publication and project cards open detail modals (abstract, method, results, links)
- Print stylesheet so the page itself prints as a résumé
- Search engines are deliberately blocked (`robots.txt`, `noindex`); the site is meant to be reached by link

## Run locally

```bash
npx serve .
```

Any static file server works.

## Regenerate the CV

```bash
"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" --headless=new --disable-gpu \
  --no-pdf-header-footer --print-to-pdf="$PWD/cv.pdf" "file://$PWD/cv.html"
```

## Deploy

The files are served by nginx behind Cloudflare Tunnel. Deployment is a plain file copy — nothing here assumes a particular host.

## License

Code (HTML/CSS/JS) — MIT. Text, images, and publications — all rights reserved.
