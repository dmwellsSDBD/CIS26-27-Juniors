# End-of-Section Assignment: Styling a Rubik's Cube Page

**zyBooks Sections 4.5 (Common properties) and 4.6 (Font and text properties)**

The Rubik's Cube page (`rubiks-cube.html`) is already written. Every heading, paragraph, list, and image is in place, and the HTML uses classes and IDs for you to target. Your job is to bring it to life using **only** the CSS properties from sections 4.5 and 4.6, written in the external stylesheet `rubiks-cube.css`.

**Do not change the text in the HTML.** The only HTML edits allowed are linking the stylesheet (Step 1) and adding your name to the footer (Step 12).

---

## Project Objectives

By the end of this project, you will be able to:

1. Write colors as color names, hexadecimal, `rgb()`, `hsl()`, and with transparency (`rgba()` or `hsla()`).
2. Store a color palette in CSS variables declared in `:root` and use them with `var()`.
3. Apply `background-color`, `background-image`, and the `background` shorthand.
4. Wrap text around an image with `float` and stop the wrap with `clear`.
5. Control layout with `display: inline-block` and hide an element with `display: none`.
6. Build `font-family` stacks that end with a generic family and use the `font` shorthand correctly.
7. Size text with relative units (`rem`, `em`, `%`) and a size keyword.
8. Format text with `font-weight`, `font-style`, `font-variant`, `text-align`, `text-indent`, `text-transform`, and `text-decoration`.

---

## Files

| File | What it is |
|---|---|
| `rubiks-cube.html` | The finished content page. Read the comments; they tell you which classes and IDs to style. |
| `rubiks-cube.css` | Your stylesheet template. A **PROVIDED LAYOUT** section is already written. Add your rules under each Step comment. |
| `images/` | `cube.svg` (the cube illustration) and `sticker-pattern.svg` (a background tile). |
| `RUBRIC.md` | How this project is graded. |

### About the PROVIDED LAYOUT section

The top of `rubiks-cube.css` contains rules with `padding`, `margin`, `width`, and `border`. Those are **box model** properties from section 4.7, which we cover next. They are there so your page has good spacing. **Do not edit or delete them.** Write all of your work in the Step sections below them.

---

## Quick Reference

| Property | Section | Example |
|---|---|---|
| `color` | 4.5 | `color: #FFD500;` |
| CSS variable | 4.5 | `--cube-red: #B71234;` then `color: var(--cube-red);` |
| `background-color` | 4.5 | `background-color: rgba(255, 255, 255, 0.9);` |
| `background-image` | 4.5 | `background-image: url('images/sticker-pattern.svg');` |
| `background` | 4.5 | `background: navy url('images/sticker-pattern.svg');` |
| `float` / `clear` | 4.5 | `float: right;` / `clear: both;` |
| `display` | 4.5 | `display: inline-block;` / `display: none;` |
| `font-family` | 4.6 | `font-family: Verdana, Arial, sans-serif;` |
| `font` | 4.6 | `font: bold 2.8rem Georgia, serif;` |
| `font-size` | 4.6 | `1.6rem`, `0.85em`, `115%`, `small` |
| `font-weight` / `font-style` / `font-variant` | 4.6 | `bold` / `italic` / `small-caps` |
| `text-align` | 4.6 | `left`, `right`, `center`, `justify` |
| `text-indent` | 4.6 | `text-indent: 2em;` |
| `text-transform` | 4.6 | `uppercase`, `lowercase`, `capitalize` |
| `text-decoration` | 4.6 | `underline`, `overline`, `line-through`, `none` |

---

## Step 1: Link the Stylesheet

In `rubiks-cube.html`, find the comment that says **STEP 1** inside the `<head>`. On the line below it, add:

```html
<link rel="stylesheet" href="rubiks-cube.css">
```

Open the page in your browser. You should see a little spacing from the provided layout, but no colors yet.

## Step 2: Read the Page

Before you write any CSS, scroll through `rubiks-cube.html` and find these classes and IDs. You will style every one of them.

`#page-header`, `.tagline`, `nav`, `.card`, `.cube-photo`, `.fun-fact`, `.original-name`, `.piece`, `.swatch` (plus `.white`, `.yellow`, `.red`, `.orange`, `.blue`, `.green`), `.big-number`, `.myth`, `.term`, `.move`, `.algorithm`, `.method-name`, `#speedcubing`, `.draft-note`, `footer`

---

## Part 1: Common Properties (4.5)

### Step 3: CSS Variables

In the **Step 3** section, declare **eight** variables in `:root`: one for each of the six cube colors, plus a dark and a light page color.

```css
:root {
    --cube-white: #FFFFFF;
    --cube-yellow: #FFD500;
    --cube-red: #B71234;
    --cube-orange: #FF5800;
    --cube-blue: #0046AD;
    --cube-green: #009B48;
    --page-dark: #1A1A2E;
    --page-light: #F5F5FA;
}
```

Nothing on the page changes yet. Variables do nothing until a rule uses `var()`.

### Step 4: Text Colors in Five Formats

Set text colors using **each** of these formats at least once. The table suggests targets; you may pick your own colors.

| Format | Suggested rule |
|---|---|
| Variable | `body` uses `color: var(--page-dark);` |
| Color name | `h1` (for example, `white`) |
| Hexadecimal | `.tagline` |
| RGB | `h2` |
| HSL | `.piece` |
| RGBA or HSLA | `.fun-fact` (make the text slightly see-through) |

Some text will be hard to read until Step 5 adds backgrounds. That is expected.

### Step 5: Backgrounds

Write these rules:

1. `body`: a `background-color` using `var(--page-light)` **and** a `background-image` using `url('images/sticker-pattern.svg')`.
2. `#page-header`: the **`background` shorthand** with a dark variable and the same image.
3. `.card`: a `background-color` that uses **RGBA** so a little of the pattern shows through (try an alpha of `0.9`).
4. Each swatch: `.swatch.white`, `.swatch.yellow`, `.swatch.red`, `.swatch.orange`, `.swatch.blue`, and `.swatch.green` gets `background-color` from its matching variable. Make the text white on the dark swatches so the label is readable.
5. `.move` and `.algorithm`: a background color and a text color that contrast well.
6. `footer`: a dark background and light text.
7. `nav a` and `footer a`: a link color that is easy to read on the dark background, plus a different color for `nav a:hover`.

**Check:** the pattern appears around the edges of the page, the header shows the pattern on a dark color, and all six swatches show the correct cube color.

### Step 6: Float and Clear

```css
.cube-photo {
    float: right;
}

.fun-fact {
    clear: both;
}
```

**Check:** the history text wraps around the cube, and the fun fact starts below the cube. Try deleting the `clear` line, refresh, and watch the fun fact jump up next to the image. Then put it back.

### Step 7: Display

1. `nav li` → `display: inline-block;` so the menu runs across the page.
2. `.swatch` → `display: inline-block;` so the six color squares sit in a row.
3. `.move` → `display: inline-block;` so each notation letter looks like a key.
4. `.draft-note` → `display: none;` to hide the draft note from visitors.

> **Security note:** `display: none` only hides content on screen. Anyone can still read it with View Source. Never hide private information with CSS.

---

## Part 2: Font and Text Properties (4.6)

### Step 8: Font Families

1. `body`: a sans-serif stack, such as `Verdana, Arial, Helvetica, sans-serif`.
2. `h1`: use the **`font` shorthand** with a weight, a size, and a serif stack. Remember: size and family are required and come **last**, in that order.
   ```css
   h1 {
       font: bold 2.8rem Georgia, "Times New Roman", serif;
   }
   ```
3. `h2`: the same serif stack using `font-family`.
4. `.move` and `.algorithm`: a **monospace** stack, such as `"Courier New", Consolas, monospace`. (A multiple selector works well here.)

Every stack must **end with a generic family**, and any font name with a space needs quotation marks.

### Step 9: Font Sizes

Use **all four** of these somewhere in your stylesheet:

| Unit | Suggested rule |
|---|---|
| `rem` | `h2` at `1.6rem` and `.big-number` at `2rem` |
| `em` | `.swatch` at `0.85em` |
| `%` | `.tagline` at `115%` |
| Size keyword | `footer` at `small` |

Do **not** use `px` for any font size in this project. Relative sizes grow when a user increases the browser's default text size.

### Step 10: Weight, Style, and Variant

1. `font-weight: bold;` on `.big-number`, `.piece`, and `.move`.
2. `font-style: italic;` on `.tagline`, `.fun-fact`, and `.term`.
3. `font-variant: small-caps;` on `.method-name` and `.original-name`.

### Step 11: Text Properties

1. `text-align: center;` on `#page-header`, `footer`, `.big-number`, `.algorithm`, and `.swatch`.
2. `text-align: justify;` on the paragraphs in the speedcubing section (`#speedcubing p`).
3. `text-indent: 2em;` on the paragraphs in the history section (`#history p`).
4. On `nav a`: `text-transform: uppercase;` and `text-decoration: none;`.
5. On `nav a:hover`: `text-decoration: underline;` so links are still easy to identify.
6. On `.myth`: `text-decoration: line-through;` to cross out the myth.

**Check:** the HTML still says "Home" and "History" in normal case, but the menu shows them in capitals. That is `text-transform` at work.

---

## Step 12: Make It Yours, Validate, Link, and Publish

1. In the footer of `rubiks-cube.html`, replace `YOUR NAME` with your name.
2. Change the values of **at least two** of your page variables (`--page-dark`, `--page-light`, or a new one you add) so the page has its own look. Keep the six cube colors accurate, and keep all text easy to read.
3. Paste your CSS into the W3C CSS Validator (https://jigsaw.w3.org/css-validator/, **By direct input**) and fix any errors.
4. Add a link to the page from your `index.html`:
   ```html
   <a href="rubiks-cube.html">The Rubik's Cube</a>
   ```
5. Commit and push `rubiks-cube.html`, `rubiks-cube.css`, the `images` folder, and `index.html`. Open your GitHub Pages site and confirm the page **and** its styles and images load.
6. Answer the reflection questions below in the comment at the top of `rubiks-cube.css`.

---

## Reflection Questions

1. Why was it helpful to store the six cube colors in CSS variables? What would you have to do to change the red on every part of the page?
2. Explain what `float: right` did to the cube image and what `clear: both` did to the fun fact.
3. Why are relative font sizes (`rem`, `em`, `%`) better than `px` for people who need larger text?

---

## Optional Challenges (Extra Credit)

- Add a `:hover` rule to `.swatch` that changes its `text-transform` to `uppercase`.
- Use `hsla()` to give `.algorithm` a semi-transparent background.
- Add a `--font-heading` variable that holds your heading font stack, and use `var(--font-heading)` for both `h1` and `h2`.
- Give `.move:hover` a different background color using one of the cube variables.

---

## Submission Checklist

- [ ] `rubiks-cube.css` is linked in the `<head>` of `rubiks-cube.html`
- [ ] The PROVIDED LAYOUT section is unchanged
- [ ] Eight variables are declared in `:root` and used with `var()`
- [ ] Colors use a name, hex, RGB, HSL, and RGBA or HSLA
- [ ] `background-color`, `background-image`, and the `background` shorthand are all used
- [ ] The cube image floats and the fun fact clears it
- [ ] The menu, swatches, and moves use `inline-block`; the draft note is hidden
- [ ] Every font stack ends with a generic family; the `font` shorthand is used on `h1`
- [ ] Font sizes use `rem`, `em`, `%`, and a keyword, with no `px`
- [ ] Bold, italic, and small-caps are each used
- [ ] `text-align`, `text-indent`, `text-transform`, and `text-decoration` are each used
- [ ] Your name is in the footer and the page is linked from `index.html`
- [ ] CSS passes the W3C validator and the page works on GitHub Pages
- [ ] Reflection questions are answered in the CSS comment

See `RUBRIC.md` for how this project will be graded.
