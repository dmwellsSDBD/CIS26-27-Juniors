# Grading Rubric: Styling a Rubik's Cube Page

**Total: 100 points** (+ up to 5 points extra credit)

| Criteria | Exemplary (full points) | Proficient | Developing | Missing (0) | Points |
|---|---|---|---|---|---|
| **Stylesheet & Template** | Stylesheet linked in `<head>`; all styles load; PROVIDED LAYOUT unchanged; rules written under the correct Step comments. | Linked and working, but rules are out of place or a provided rule was edited. | Link exists but styles do not load (wrong name or path). | No external stylesheet, or CSS written in the HTML. | **/5** |
| **CSS Variables** | 8 variables declared in `:root` and used with `var()` throughout (swatches, header, body, footer). | Variables declared and used in most places. | Variables declared but rarely or incorrectly used (missing `--` or `var()`). | None. | **/10** |
| **Color Formats** | Name, hex, RGB, HSL, and RGBA/HSLA each used correctly. | 4 of the 5 formats used. | 2–3 formats used, or values out of range (e.g., `rgb(300, 0, 0)`). | 0–1 formats. | **/10** |
| **Backgrounds** | `background-color`, `background-image` with `url()`, and the `background` shorthand all work; all six swatches show the correct colors with readable labels. | All three used; one swatch or contrast problem. | One or two of the three used, or the image path is broken. | No backgrounds. | **/10** |
| **Float & Clear** | Cube image floats and text wraps; fun fact clears below the image. | Float works, clear missing or on the wrong element. | Float attempted but on the wrong element. | Not used. | **/10** |
| **Display** | Menu, swatches, and moves are `inline-block`; draft note is hidden with `display: none`. | 3 of 4 display rules correct. | 1–2 display rules correct. | Not used. | **/10** |
| **Font Families & Shorthand** | Every stack ends with a generic family; names with spaces are quoted; monospace used for moves and algorithm; `font` shorthand on `h1` is valid. | One stack missing a generic family, or minor quoting error. | Shorthand invalid (wrong order) or only one family set. | No fonts set. | **/10** |
| **Font Sizes** | `rem`, `em`, `%`, and a size keyword all used; no `px` font sizes. | 3 of the 4 used, no `px`. | 1–2 used, or `px` used for font size. | Not used. | **/10** |
| **Weight, Style, Variant** | Bold, italic, and small-caps each applied to the required elements. | All three used, but on fewer elements than required. | 1–2 of the three used. | None. | **/5** |
| **Text Properties** | `text-align` (center and justify), `text-indent`, `text-transform`, and `text-decoration` (none, underline on hover, line-through) all correct. | One property missing or incorrect. | Two or more missing. | None. | **/10** |
| **Personalization & Publishing** | Name in footer; 2+ page variables changed with readable contrast; CSS validates; linked from `index.html`; live on GitHub Pages with images. | One item missing. | Two or three items missing. | Page not submitted or not published. | **/5** |
| **Reflection Questions** | All three answered accurately in complete sentences in the CSS comment. | Answers present but one is incorrect or vague. | One or two answered. | None. | **/5** |
| **Extra Credit** | Up to 5 points for completed Optional Challenges. | | | | **+5** |

---

## Quick Check for Grading

1. Open the student's GitHub Pages link. Confirm the pattern background, the six colored swatches, the floated cube, and the horizontal uppercase menu.
2. Hover over the menu: the underline should appear.
3. Look for the crossed-out myth in "The Math" and the small-caps "Magic Cube" and CFOP words.
4. Confirm the "DRAFT NOTE" paragraph is not visible.
5. Open `rubiks-cube.css` and search for `px` inside any `font-size` or `font` rule (should find none), then check the reflection answers.
