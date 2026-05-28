# ToolShell — SharePoint Zero-Day Presentation

A Marp slide deck about CVE-2025-53770, with each slide kept in its own file under `slides/`.

## Build

```bash
./build.sh                    # concat slides/*.md into presentation.md

# render
npx @marp-team/marp-cli presentation.md --html  --theme-set themes/toolshell.css --allow-local-files -o presentation.html
npx @marp-team/marp-cli presentation.md --pdf   --html --theme-set themes/toolshell.css --allow-local-files -o presentation.pdf
npx @marp-team/marp-cli presentation.md --images png  --theme-set themes/toolshell.css --allow-local-files -o preview/slide.png
```

## Project layout

```
presentation/
├── slides/                  # one Markdown file per slide
├── themes/toolshell.css     # custom Marp theme (SharePoint teal palette)
├── assets/                  # images, e.g. sharepoint.svg
├── presentation.template.md # references each slide via @@INCLUDE:...@@
├── build.sh                 # inlines the includes into presentation.md
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

3. Rebuild and re-render:

   ```bash
   ./build.sh && npx @marp-team/marp-cli presentation.md --html --theme-set themes/toolshell.css --allow-local-files -o presentation.html
   ```

## Available CSS classes

Look at existing slides for examples — the theme provides `tile`, `grid-2/3`, `term`, `score-card`, `flow`, `compare`, `measure`, `lesson`, `pill-tag`, `chip`, plus body classes `title`, `hero`, `end` for full-bleed layouts.
