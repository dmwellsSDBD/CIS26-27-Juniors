# Code-Along: CIS Game Night

A teacher-led project. You type, students type the same thing, and everyone refreshes the browser after each step. The HTML is finished; all the work happens in `gamenight.css`.

**Part 1 (Day 1, after section 4.5):** Steps 1–6, about 30 minutes.
**Part 2 (Day 2, after section 4.6):** Steps 7–10, about 25 minutes.

**Setup:** Students copy the `walkthrough-game-night` folder (without `teacher-checkpoints/`) into their workspace and open `gamenight.html` in a browser. The page should look plain and unstyled. The stylesheet is already linked.

**If a student falls behind:** copy `teacher-checkpoints/checkpoint-1-after-4.5.css` over their `gamenight.css` at the start of Part 2. `gamenight-FINAL.css` is the finished file.

---

## Part 1: Common Properties (4.5)

### Step 1: CSS variables

```css
:root {
    --night: #1B1D3A;
    --neon-pink: #FF5C8A;
    --neon-green: #3DDC97;
    --gold: #FFD166;
    --paper: #F4F3FA;
}
```

Nothing changes yet. **Ask:** Why didn't the page change? *(Variables only store values. Nothing uses them until a rule calls `var()`.)*

### Step 2: Colors in four formats

```css
body {
    color: var(--night);
    background-color: var(--paper);
}

h1 {
    color: #FFD166;                        /* hexadecimal */
}

.tagline {
    color: rgb(255, 255, 255);             /* RGB */
}

h2 {
    color: hsl(340, 100%, 45%);            /* HSL */
}

.game {
    background-color: rgba(61, 220, 151, 0.2);   /* RGBA */
}
```

The h1 and tagline turn nearly invisible on the light background. That's expected; Step 3 fixes it. **Ask:** What does the `0.2` in the `.game` rule do? *(Alpha: 20% opaque, so the page color shows through.)*

### Step 3: Background shorthand

```css
header {
    background: var(--night) url('images/dots.svg');
}

footer {
    background-color: var(--night);
    color: white;
}

footer a {
    color: var(--gold);
}
```

**Point out:** the dots are drawn on top of the navy color. Remove the color from the shorthand and the dots sit on a transparent background.

### Step 4: A horizontal menu with display

```css
nav li {
    display: inline-block;
}

nav a {
    color: var(--neon-green);
}

nav a:hover {
    color: var(--gold);
}
```

**Ask:** An `li` is normally block. What changed? *(Each item now sits on the same line like inline text.)* Bonus: set it to `display: block`, then back.

### Step 5: Float and clear

```css
.float-right {
    float: right;
}

footer {
    clear: both;
}
```

Shrink the browser window so the About text wraps around the controller. **Demo:** delete `clear: both`, shrink the window until the image hangs low, and show the footer sliding up beside it.

### Step 6: More display values

```css
.badge {
    display: inline-block;
    background-color: var(--neon-pink);
    color: white;
}

.staff-note {
    display: none;
}
```

**Ask:** Is the staff note gone from the HTML? *(No. It's hidden, but anyone can see it with View Source. Never put private information in a page and hide it with CSS.)* Good cybersecurity tie-in.

**Final Part 1 demo:** change `--night` to `#3A0F2E` and show the header, footer, and text all update from one edit. Change it back.

---

## Part 2: Font and Text Properties (4.6)

### Step 7: Font families and the font shorthand

```css
body {
    font-family: Verdana, Arial, Helvetica, sans-serif;
}

h1 {
    font: bold 3rem Impact, "Arial Black", sans-serif;
}

.time {
    font-family: "Courier New", Consolas, monospace;
}
```

**Point out:** `"Arial Black"` and `"Courier New"` need quotes because of the space. Every list ends with a generic family. In the shorthand, size and family come last. **Demo:** write `font: Impact 3rem;` and show that the browser ignores the whole declaration.

### Step 8: Font sizes

```css
h2 {
    font-size: 1.8rem;
}

.tagline {
    font-size: 120%;
}

.badge {
    font-size: 0.7em;
}

footer {
    font-size: small;
}
```

**Ask:** If the root size is 16px, how big is the h2? *(1.8 × 16 = 28.8px.)* Why does `.badge` use `em`? *(It shrinks relative to the h3 it sits in.)*

### Step 9: Weight, style, variant

```css
.tagline {
    font-style: italic;
}

.time {
    font-weight: bold;
}

h2 {
    font-variant: small-caps;
}
```

### Step 10: Text properties

```css
header,
footer {
    text-align: center;
}

nav a {
    text-transform: uppercase;
    text-decoration: none;
}

nav a:hover {
    text-decoration: underline;
}

#rules p {
    text-align: justify;
    text-indent: 2em;
}

.cancelled {
    text-decoration: line-through;
}
```

**Point out:** the HTML still says "About" in normal case; `text-transform` changes only how it looks. We removed the nav underline, so we bring it back on hover to keep links easy to spot.

**Wrap-up question:** Which properties from today will you need for the Rubik's Cube assignment? *(All of them.)*
