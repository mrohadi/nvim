require'colorizer'.setup(
  { "*";},
  {
    RGB       = true;     -- #RGB hex codes
    RRGGBB    = true;     -- #RRGGBB hex codes
    RRGGBBAA  = true;     -- #RRGGBBAA hex codes
    rgb_fn    = true;     -- CSS rgb() and rgba()
    hsl_fn    = true;     -- CSS hsl() and hsla()
    css       = true;     -- Enable all CSS feature
    css_fn    = true;     -- Enable all CSS *func
  });
