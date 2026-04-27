# redshift.nvim

A disciplined, monochromatic Neovim colorscheme — pure neutral greyscale surfaces and text, with every chromatic accent collapsed to a small ladder of reds. No green, no yellow, no blue, no purple. Inspired by a deep-space horizon: the void of night sky pierced only by signal-red glow.

The name is a wink to [redshift](https://en.wikipedia.org/wiki/Redshift) — the cosmic phenomenon where light stretches toward longer wavelengths as objects recede. A theme that's *literally* shifted to red.

## Aesthetic

This is a **two-axis** theme. Variation lives in *intensity*, not hue.

- **Greyscale axis** — pure neutral greys with zero saturation, from `#000000` through ten steps to `#FFFFFF`. Used for surfaces, text, comments, info diagnostics, and any role that doesn't need to grab attention.
- **Red axis** — five main stops:
  - `#2A0608` deepest blood (the void's edge)
  - `#7A1218` rust (deep accents, control flow)
  - `#C81A22` signal red (search highlights, errors, `Statement`)
  - `#C26868` soft dusty rose (most syntax accents — keywords, functions, identifiers)
  - `#E83840` bright planet-rim (incremental search, `diff_change`, hot states)

Plus support reds (`#A8484E`, `#8A4040`, `#7A4040`) for muted roles where rose would be too loud — strings, `diff_add`, deep types.

In code, syntax differentiation comes from **how much red** you're looking at, not which color. Identifiers blaze (bright `#E83840`), keywords are visible but calmer (rose `#C26868`), strings recede (muted `#8A4040`), and comments disappear into pure grey (`#5A5A5A`). Search highlights light the screen up like the horizon glow itself.

## Restraint by repetition

The palette has **145 named role keys but only 39 unique colors**. This is intentional. Roles that traditionally hold distinct hues — `accent_green`, `accent_yellow`, `accent_purple`, `accent_blue`, `accent_magenta` — all map to the appropriate red or grey for what that role *does*, not what its name suggests. For example:

| Role | Holds | Reasoning |
|---|---|---|
| `accent_green` (strings) | `#8A4040` muted dark rose | Visible but quiet, recedes from keywords |
| `accent_yellow` (functions, numbers) | `#C26868` soft rose | Same as keywords; functions get bold weight to differentiate |
| `accent_purple` (operators) | `#8A484E` muted rose-purple | The closest red-family stand-in |
| `accent_blue` (info diagnostics) | `#6A6A6A` mid-grey | Info should be quiet; grey keeps it out of the way |
| `accent_aqua`, `accent_teal`, `accent_sky` | various pure greys | The image had no cool tones; neither does this theme |
| `diff_add` | `#8A4040` muted rose | Distinguished from `diff_delete` by brightness, not hue |

If you re-skin the theme later — push the reds toward arterial crimson, dial up the grey contrast — you're editing one short ladder, not 145 individual values.

## Install

### lazy.nvim

```lua
{
  "your-username/redshift.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd("colorscheme redshift")
  end,
}
```

### packer.nvim

```lua
use({
  "your-username/redshift.nvim",
  config = function()
    vim.cmd("colorscheme redshift")
  end,
})
```

### Local development

Drop the directory into `~/.config/nvim/pack/themes/start/redshift.nvim/` and run `:colorscheme redshift`.

## Structure

```
.
├── colors
│   └── redshift.lua          -- entry point for :colorscheme redshift
├── lua
│   ├── redshift
│   │   ├── highlights.lua    -- role-based highlight definitions
│   │   └── palette.lua       -- 145 role keys, 39 unique colors
│   └── redshift.lua          -- setup() function
└── README.md
```

`highlights.lua` is palette-agnostic and identical to its sister themes — every assignment goes through a semantic role name. To re-skin redshift, edit only `palette.lua`.

## Plugin Coverage

Treesitter, LSP semantic tokens, diagnostics, GitSigns / MiniDiff / Neogit, Telescope, nvim-cmp, nvim-tree, indent-blankline, rainbow brackets, notify, Hydra, Alpha, BufferLine, Vimwiki, markdown, asciidoc, netrw, and built-in Vim groups.

## Customizing

Override colors before `setup()`:

```lua
local palette = require("redshift.palette")

-- Push the void blacker
palette.surface_main  = "#000000"
palette.surface_panel = "#000000"

-- Punchier signal red across the board
palette.accent_ember  = "#FF1A22"  -- search bg, errors, Statement
palette.accent_orange = "#FF4048"  -- identifiers, incsearch
palette.diag_error    = "#FF1A22"

-- Brighter starlight
palette.text_primary  = "#FFFFFF"

require("redshift.highlights").apply(palette)
vim.g.colors_name = "redshift"
```

To shift the entire theme away from red without touching `highlights.lua`, change just the red-ladder stops in `palette.lua`. The keys named after greens, yellows, purples, and blues will follow automatically because they all reference the same small set of underlying colors.
