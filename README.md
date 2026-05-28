# ToolShell — SharePoint Zero-Day Presentation

A Marp slide deck about CVE-2025-53770, with each slide kept in its own file under `slides/`.

## Setup (once)

```bash
npm install               # installs marp-cli locally — no more npx every time
```

Theme path and `--allow-local-files` live in `.marprc.yml`, so `marp` picks
them up automatically.

## Build

```bash
npm run build             # assemble + render HTML + PDF
npm run html              # just HTML
npm run pdf               # just PDF
npm run pptx              # PowerPoint export
npm run preview           # PNG of each slide in preview/
npm run watch             # live-reload server, rebuilds on save
```

Or, without npm:

```bash
./build.sh                # just assemble presentation.md
./build.sh all            # assemble + HTML + PDF + previews (uses npx)
```

## Project layout

```
presentation/
├── slides/                  # one Markdown file per slide
├── themes/toolshell.css     # custom Marp theme (SharePoint teal palette)
├── assets/                  # images, e.g. sharepoint.svg
├── presentation.template.md # references each slide via @@INCLUDE:...@@
├── build.sh                 # inlines the includes into presentation.md
├── .marprc.yml              # marp-cli config (theme, html, allow-local-files)
├── package.json             # npm scripts and marp-cli devDependency
└── presentation.md          # generated, do not edit by hand
```

## Add a new slide

1. Create the slide file, e.g. `slides/16-new-slide.md`:

   ```markdown
   # My Title

   <h2><span class="pill-tag">Section</span>Sub headline</h2>

   <div class="grid-2">
     <div class="tile"><h3>Card A</h3><p>...</p></div>
     <div class="tile pink"><h3>Card B</h3><p>...</p></div>
   </div>
   ```

2. Reference it in `presentation.template.md` at the right position:

   ```markdown
   ---

   @@INCLUDE:slides/16-new-slide.md@@
   ```

3. Rebuild:

   ```bash
   npm run build
   ```

   Or run `npm run watch` and just save the file — the browser reloads.

## Available CSS classes

Look at existing slides for examples — the theme provides `tile`, `grid-2/3`,
`term`, `score-card`, `flow`, `compare`, `measure`, `lesson`, `pill-tag`,
`chip`, plus body classes `title`, `hero`, `end` for full-bleed layouts.
