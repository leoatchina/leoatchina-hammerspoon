local wm = require('window-management')
local hk = require "hs.hotkey"

-- * Key Binding Utility
--- Bind hotkey for window management.
-- @function windowBind
-- @param {table} hyper - hyper key set
-- @param { ...{key=value} } keyFuncTable - multiple hotkey and function pairs
--   @key {string} hotkey
--   @value {function} callback function
local function windowBind(hyper, keyFuncTable)
  for key,fn in pairs(keyFuncTable) do
    hk.bind(hyper, key, fn)
  end
end


hyper = {"ctrl", "alt", "cmd", "shift"}
hk.bind(hyper, "home", wm.throwLeft)
hk.bind(hyper, "end", wm.throwRight)

windowBind(hyper, {
  up    = wm.maximizeWindow,
  down  = wm.centerOnScreen,
  left  = wm.cycleLeft,
  right = wm.cycleRight
})

windowBind({"ctrl", "alt", "cmd"}, {
  left  = wm.leftHalf,
  right = wm.rightHalf,
  up    = wm.topHalf,
  down  = wm.bottomHalf
})

windowBind({"ctrl", "alt", "shift"}, {
  left  = wm.rightToLeft,
  right = wm.rightToRight,
  up    = wm.bottomUp,
  down  = wm.bottomDown
})

windowBind({"ctrl", "cmd", "shift"}, {
  left  = wm.leftToLeft,
  right = wm.leftToRight,
  up    = wm.topUp,
  down  = wm.topDown
})

windowBind({"alt"}, {
 tab = wm.toggleScreen 
})
