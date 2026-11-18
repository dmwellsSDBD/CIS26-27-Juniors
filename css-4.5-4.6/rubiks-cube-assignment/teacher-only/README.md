# Teacher Notes: Rubik's Cube Assignment

`rubiks-cube-SOLUTION.css` is the completed stylesheet. To preview it, rename it to `rubiks-cube.css`, place it beside `rubiks-cube.html`, and add the `<link>` from Step 1.

**Do not push this folder to the student-facing repository.**

Property coverage in the solution:

| Property | zyBooks | Where it appears |
|---|---|---|
| CSS variables | 4.5 | `:root` (8 variables); used in body, header, swatches, `.move`, `.algorithm`, footer, links |
| Color name / hex / RGB / HSL / RGBA | 4.5 | `h1` / `.tagline` / `h2` / `.piece` / `.fun-fact` and `.card` |
| `background-color` | 4.5 | body, `.card`, swatches, `.move`, `.algorithm`, footer |
| `background-image` | 4.5 | body |
| `background` shorthand | 4.5 | `#page-header` |
| `float` / `clear` | 4.5 | `.cube-photo` / `.fun-fact` |
| `display` | 4.5 | `nav li`, `.swatch`, `.move` (inline-block); `.draft-note` (none) |
| `font-family` stacks | 4.6 | body (sans-serif), `h2` (serif), `.move, .algorithm` (monospace) |
| `font` shorthand | 4.6 | `h1` |
| `font-size` | 4.6 | `h2`, `.big-number` (rem); `.swatch` (em); `.tagline` (%); footer (keyword) |
| `font-weight` / `font-style` / `font-variant` | 4.6 | `.big-number, .piece, .move` / `.tagline, .fun-fact, .term` / `.method-name, .original-name` |
| `text-align` | 4.6 | center: header, footer, `.big-number`, `.algorithm`, `.swatch`; justify: `#speedcubing p` |
| `text-indent` | 4.6 | `#history p` |
| `text-transform` | 4.6 | `nav a` |
| `text-decoration` | 4.6 | `nav a` (none), `nav a:hover` (underline), `.myth` (line-through) |

**Timing:** about 90 minutes of work time. Students who finish early can do the Optional Challenges.

**Common problems to watch for**

- Image path broken on GitHub Pages because the `images` folder was not pushed.
- `var(cube-red)` without the two dashes, or variables declared outside `:root` and then used elsewhere.
- `font: Georgia 2.8rem;` (family before size) makes the browser ignore the whole declaration.
- Students editing the PROVIDED LAYOUT section when the spacing "looks off."
- Unreadable contrast after personalizing `--page-dark` or `--page-light`.
