<<<<<<< HEAD
GHApex - Static Landing Page

This is a lightweight static recreation of the GHApex landing page.

Files created:
- `index.html`: Main static page
- `css/styles.css`: Styles
- `js/main.js`: Small interactive bits (smooth-scroll, contact form validation)
- `thank-you.html`: Page redirected to after a successful contact form submission
- `admin.html`, `customer-dashboard.html`, `driver-dashboard.html`: Static dashboard pages (demo-only)

Contact form
- The contact form is wired to FormSubmit (https://formsubmit.co). It's configured to post to `info@ghapex.com`, disable FormSubmit's captcha, and redirect to `thank-you.html` on success. If you want the messages sent to a different email, update the `action` attribute on the form in `index.html`.

Deploying to GitHub Pages (automatic via Actions)
1. Push this repository to GitHub on the `main` branch.
2. The workflow at `.github/workflows/gh-pages.yml` will run on pushes to `main` and publish the repository root to the `gh-pages` branch.
3. In the repository Settings → Pages, set the site source to the `gh-pages` branch if needed. The workflow already attempts to publish.

Run locally
1. Open `index.html` in your browser, or serve the directory with a static server:

```powershell
npx http-server . -c-1
```

Notes and next steps
- Images are referenced from the original site; if you want local copies, I can download and place them under an `assets/` folder.
- Dashboards are static mockups (no auth or backend). I can convert these to React or wire them to a backend if you provide an API.
- If you prefer Netlify or Vercel, I can add a config for those instead of GitHub Pages.

Downloading images and deploying
- To download images used on the site into a local `assets/` folder, run the PowerShell script included (Windows PowerShell):

```powershell
.\
GHApex - Static Landing Page

This is a lightweight static recreation of the GHApex landing page (inspired by https://ghapex.lovable.app/).

Files created:
- `index.html`: Main static page
- `css/styles.css`: Styles
- `js/main.js`: Small interactive bits (smooth-scroll, contact form validation)
- `thank-you.html`: Page redirected to after a successful contact form submission
- `admin.html`, `customer-dashboard.html`, `driver-dashboard.html`: Static dashboard pages (demo-only)

Contact form
- The contact form is wired to FormSubmit (https://formsubmit.co). It's configured to post to `info@ghapex.com`, disable FormSubmit's captcha, and redirect to `thank-you.html` on success. If you want the messages sent to a different email, update the `action` attribute on the form in `index.html`.

Deploying to GitHub Pages (automatic via Actions)
1. Push this repository to GitHub on the `main` branch.
2. The workflow at `.github/workflows/gh-pages.yml` will run on pushes to `main` and publish the repository root to the `gh-pages` branch.
3. In the repository Settings → Pages, set the site source to the `gh-pages` branch if needed. The workflow already attempts to publish.

Run locally
1. Open `index.html` in your browser, or serve the directory with a static server:

```powershell
npx http-server . -c-1
```

Notes and next steps
- Images are referenced from the original site; if you want local copies, I can download and place them under an `assets/` folder.
- Dashboards are static mockups (no auth or backend). I can convert these to React or wire them to a backend if you provide an API.
- If you prefer Netlify or Vercel, I can add a config for those instead of GitHub Pages.

Downloading images and deploying
- To download images used on the site into a local `assets/` folder, run the PowerShell script included (Windows PowerShell):

```powershell
.\
download-assets.ps1
```

- To initialize a GitHub repository and push the site using the GitHub CLI, run:

```powershell
.\
deploy_to_github.ps1
```

	This requires `gh` (GitHub CLI) and `git` installed and `gh auth login` performed. The script will create the repository, push the code, and the GitHub Actions workflow will publish to GitHub Pages.
