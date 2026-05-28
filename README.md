# ToolShell — SharePoint Zero-Day Presentation

A Marp slide deck about CVE-2025-53770, with each slide kept in its own file under `slides/`.

## Build

```bash
./build.sh           # assemble slides into presentation.md
./build.sh html      # + render presentation.html
./build.sh pdf       # + render presentation.pdf
./build.sh all       # + HTML, PDF, and PNG preview of every slide
```

The script uses `npx` to fetch `@marp-team/marp-cli` on demand — no global
install required.

## Project layout

```
presentation/
├── slides/                  # one Markdown file per slide
├── themes/toolshell.css     # custom Marp theme (SharePoint teal palette)
├── assets/                  # images, e.g. sharepoint.svg
├── presentation.template.md # references each slide via @@INCLUDE:...@@
├── build.sh                 # assembles + renders
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
   ./build.sh all
   ```

## Available CSS classes

Look at existing slides for examples — the theme provides `tile`, `grid-2/3`,
`term`, `score-card`, `flow`, `compare`, `measure`, `lesson`, `pill-tag`,
`chip`, plus body classes `title`, `hero`, `end` for full-bleed layouts.
