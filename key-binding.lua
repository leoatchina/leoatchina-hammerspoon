local wm = require('window-management')
local hk = require "hs.hotkey"

local function windowBind(keys, keyFuncTable)
  for key,fn in pairs(keyFuncTable) do
    hk.bind(keys, key, fn)
  end
end


hk.bind({"ctrl", "alt", "cmd"}, "[", wm.throwLeft)
hk.bind({"ctrl", "alt", "cmd"}, "]", wm.throwRight)
hk.bind({"ctrl", "alt", "cmd"}, "space", wm.showTimeDateBattery)

windowBind({"ctrl", "alt", "cmd"}, {
  up    = wm.maximizeWindow,
  down  = wm.centerOnScreen,
  left  = wm.cycleLeft,
  right = wm.cycleRight
})

windowBind({"shift", "alt", "cmd"}, {
  left  = wm.leftHalf,
  right = wm.rightHalf,
  up    = wm.topHalf,
  down  = wm.bottomHalf
})

windowBind({"cmd", "alt"}, {
  left  = wm.rightToLeft,
  right = wm.rightToRight,
  up    = wm.bottomUp,
  down  = wm.bottomDown
})

windowBind({"ctrl", "shift"}, {
  left  = wm.leftToLeft,
  right = wm.leftToRight,
  up    = wm.topUp,
  down  = wm.topDown
})

windowBind({"alt"}, {
  tab = wm.toggleScreen 
})
