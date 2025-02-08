-- Kanagawa theme
-- stylua: ignore
local kanagawa = {
   sumiInk0 = '#090618',
   sumiInk1 = '#1f1f28',
   sumiInk2 = '#2a2a37',
   sumiInk3 = '#363646',
   sumiInk4 = '#54546d',
   waveBlue1 = '#223249',
   waveBlue2 = '#2d4f67',
   winterGreen = '#2b3328',
   winterYellow = '#49443c',
   winterRed = '#43242b',
   winterBlue = '#252535',
   autumnGreen = '#76946a',
   autumnRed = '#c34043',
   autumnYellow = '#c0a36e',
   samuraiRed = '#e82424',
   roninYellow = '#ff9e3b',
   dragonBlue = '#658594',
   fujiWhite = '#dcd7ba',
   oldWhite = '#c8c093',
   sakuraPink = '#ff5d62',
   waveAqua1 = '#6a9589',
   waveAqua2 = '#7aa89f',
   springViolet1 = '#938aa9',
   oniViolet = '#957fb8',
   crystalBlue = '#7e9cd8',
   springViolet2 = '#9cabca',
   springBlue = '#7fb4ca',
}

local colorscheme = {
   foreground = kanagawa.fujiWhite,
   background = kanagawa.sumiInk1,
   cursor_bg = kanagawa.oldWhite,
   cursor_border = kanagawa.oldWhite,
   cursor_fg = kanagawa.oldWhite,
   selection_bg = kanagawa.waveBlue2,
   selection_fg = kanagawa.oldWhite,
   ansi = {
      kanagawa.sumiInk0, -- black
      kanagawa.autumnRed, -- red
      kanagawa.autumnGreen, -- green
      kanagawa.autumnYellow, -- yellow
      kanagawa.crystalBlue, -- blue
      kanagawa.oniViolet, -- magenta/purple
      kanagawa.waveAqua1, -- cyan
      kanagawa.oldWhite, -- white
   },
   brights = {
      kanagawa.sumiInk4, -- black
      kanagawa.samuraiRed, -- red
      kanagawa.waveAqua2, -- green
      kanagawa.roninYellow, -- yellow
      kanagawa.springBlue, -- blue
      kanagawa.springViolet1, -- magenta/purple
      kanagawa.springViolet2, -- cyan
      kanagawa.fujiWhite, -- white
   },
   tab_bar = {
      background = 'rgba(0, 0, 0, 0.4)',
      active_tab = {
         bg_color = kanagawa.sumiInk3,
         fg_color = kanagawa.fujiWhite,
      },
      inactive_tab = {
         bg_color = kanagawa.sumiInk1,
         fg_color = kanagawa.sumiInk4,
      },
      inactive_tab_hover = {
         bg_color = kanagawa.sumiInk1,
         fg_color = kanagawa.fujiWhite,
      },
      new_tab = {
         bg_color = kanagawa.sumiInk1,
         fg_color = kanagawa.fujiWhite,
      },
      new_tab_hover = {
         bg_color = kanagawa.sumiInk2,
         fg_color = kanagawa.fujiWhite,
         italic = true,
      },
   },
   visual_bell = kanagawa.autumnRed,
   indexed = {
      [16] = kanagawa.roninYellow,
      [17] = kanagawa.sakuraPink,
   },
   scrollbar_thumb = kanagawa.sumiInk0,
   split = kanagawa.sumiInk0,
   compose_cursor = kanagawa.autumnRed,
}

return colorscheme