local M = {
  -- ============================================================
  -- TONAL FOUNDATION
  -- Pure neutral greyscale void; no tint, no warm bias.
  -- ============================================================

  bg_0              = "#060606",
  bg_1              = "#141414",
  bg_2              = "#222222",
  bg_3              = "#2E2E2E",

  fg_0              = "#EAEAEA",
  fg_1              = "#C2C2C2",
  fg_2              = "#8A8A8A",
  fg_3              = "#5A5A5A",

  neutral_0         = "#000000",
  neutral_1         = "#0A0A0A",
  neutral_2         = "#1A1A1A",
  neutral_3         = "#2E2E2E",
  neutral_9         = "#FFFFFF",

  -- ============================================================
  -- SURFACE ROLES
  -- ============================================================

  surface_main      = "#060606",
  surface_subtle    = "#141414",
  surface_emphasis  = "#222222",
  surface_panel     = "#030303",
  surface_panel_alt = "#020202",
  surface_accent    = "#1C1C1C",
  surface_prompt    = "#161616",
  surface_hint      = "#040404",

  -- ============================================================
  -- TEXT ROLES
  -- ============================================================

  text_primary      = "#EAEAEA",
  text_secondary    = "#C2C2C2",
  text_muted        = "#8A8A8A",
  text_dim          = "#5A5A5A",

  -- ============================================================
  -- WARM CORE ACCENTS
  -- A small ladder of reds: deep blood -> rust -> signal red
  -- -> soft dusty rose -> bright. Roles whose names suggest
  -- non-red colors (gold, amber, yellow, olive, green, purple,
  -- magenta) are reassigned to red shades or greys for a
  -- monochromatic feel.
  -- ============================================================

  accent_red_deep     = "#2A0608",
  accent_rose         = "#C26868",
  accent_rust         = "#7A1218",
  accent_ember        = "#C81A22",

  accent_orange       = "#E83840",
  accent_orange_soft  = "#E89090",

  accent_gold         = "#A8484E",
  accent_amber        = "#7A1218",
  accent_yellow       = "#C26868",
  accent_yellow_soft  = "#E89090",

  accent_olive        = "#7A4040",
  accent_olive_deep   = "#3A2020",
  accent_yellow_green = "#7A4040",

  accent_green        = "#8A4040",
  accent_green_deep   = "#3A2020",
  accent_moss         = "#5A3030",

  accent_purple       = "#8A484E",
  accent_violet       = "#5A2828",
  accent_violet_soft  = "#C26868",
  accent_plum         = "#3A1818",

  accent_magenta      = "#C24855",
  accent_rose_dust    = "#C26868",

  -- ============================================================
  -- CONTROLLED / COOL ACCENTS
  -- All cools collapse to greys (since the theme has no blue
  -- voice) or to red shades where the role demands warmth.
  -- ============================================================

  accent_aqua         = "#8A8A8A",
  accent_teal         = "#5A5A5A",
  accent_cyan         = "#A8484E",
  accent_cyan_soft    = "#C26868",

  accent_blue         = "#6A6A6A",
  accent_blue_soft    = "#9A9A9A",
  accent_slate_blue   = "#4A4A4A",

  accent_cyan_hot     = "#E83840",
  accent_blue_hot     = "#BABABA",
  accent_blue_neon    = "#9A9A9A",

  accent_sky          = "#C2C2C2",
  accent_lavender     = "#8A6A6A",

  accent_pink         = "#C26868",
  accent_pink_hot     = "#E83840",

  -- ============================================================
  -- SOFT SUPPORT ACCENTS
  -- ============================================================

  support_green       = "#8A4040",
  support_red         = "#C81A22",
  support_success     = "#8A4040",
  support_ok          = "#C26868",

  -- ============================================================
  -- SEMANTIC UI ROLES
  -- Search lights up with signal red; incsearch escalates to
  -- the brightest rim red so the active match is unmistakable.
  -- ============================================================

  ui_border           = "#EAEAEA",
  ui_selection        = "#2A0A14",
  ui_selection_subtle = "#160A0E",
  ui_search_bg        = "#C81A22",
  ui_search_fg        = "#060606",
  ui_incsearch_bg     = "#E83840",
  ui_incsearch_fg     = "#060606",
  ui_cursor_bg        = "#EAEAEA",
  ui_cursor_fg        = "#060606",

  -- ============================================================
  -- DIAGNOSTIC SEMANTICS
  -- Differentiated by red intensity rather than hue; info goes
  -- grey since blue is no longer in the palette.
  -- ============================================================

  diag_error          = "#C81A22",
  diag_warn           = "#E83840",
  diag_info           = "#8A8A8A",
  diag_hint           = "#C26868",

  -- ============================================================
  -- DIFF / GIT SEMANTICS
  -- Add -> muted dark rose (gentle, additive); delete -> signal
  -- red (alarming); change -> bright red (active).
  -- ============================================================

  diff_add            = "#8A4040",
  diff_delete         = "#C81A22",
  diff_change         = "#E83840",
  diff_text           = "#EAEAEA",

  -- ============================================================
  -- RARE / SPECIAL PURPOSE COLORS
  -- ============================================================

  special_statement   = "#C81A22",
  special_rainbow_1   = "#FFFFFF",
  special_yellow      = "#E83840",
  special_green       = "#8A4040",
  special_red         = "#E83840",

  -- ============================================================
  -- COMPATIBILITY ALIASES
  -- ============================================================

  bg                  = "#060606",
  bg_alt              = "#141414",
  bg_alt2             = "#222222",
  bg_panel            = "#030303",
  bg_panel_alt        = "#020202",
  bg_accent           = "#1C1C1C",
  bg_prompt_title     = "#161616",
  bg_hint             = "#040404",

  fg                  = "#EAEAEA",
  fg_alt              = "#C2C2C2",
  fg_muted            = "#8A8A8A",
  comment             = "#5A5A5A",
  grey                = "#0A0A0A",
  grey_alt            = "#1A1A1A",
  grey_bright         = "#2E2E2E",
  black               = "#000000",
  white               = "#FFFFFF",

  red                 = "#C81A22",
  red_dark            = "#2A0608",
  rose                = "#C26868",
  green               = "#8A4040",
  green_strong        = "#3A2020",
  yellow              = "#A8484E",
  yellow_bright       = "#C26868",
  yellow_soft         = "#E89090",
  gold                = "#A8484E",
  olive               = "#7A4040",
  purple              = "#8A484E",
  purple_alt          = "#C24855",
  violet              = "#5A2828",
  blue                = "#6A6A6A",

  cyan                = "#A8484E",
  cyan_alt            = "#C26868",
  cyan_bright         = "#E83840",
  blue_bright         = "#BABABA",
  blue_neon           = "#9A9A9A",
  pink                = "#C26868",
  pink_bright         = "#E83840",
  lavender            = "#8A6A6A",
  sky                 = "#C2C2C2",

  green_soft          = "#8A4040",
  red_soft            = "#E83840",
  success             = "#8A4040",
  ok                  = "#C26868",

  search_bg           = "#C81A22",
  search_fg           = "#060606",
  incsearch_bg        = "#E83840",
  incsearch_fg        = "#060606",

  cursor_bg           = "#EAEAEA",
  cursor_fg           = "#060606",

  border              = "#EAEAEA",
  selection           = "#2A0A14",
  selection_alt       = "#160A0E",

  statement_red       = "#C81A22",
  rainbow_1           = "#FFFFFF",
  pure_yellow         = "#E83840",
  pure_green          = "#8A4040",
  pure_red            = "#E83840",
}

return M
