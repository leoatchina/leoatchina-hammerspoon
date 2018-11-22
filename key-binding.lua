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

windowBind({"ctrl", "alt", "cmd", "shift"}, {
  pageup   = wm.throwLeft,
  pagedown = wm.throwRight,
  up       = wm.maximizeWindow,
  down     = wm.centerOnScreen,
  left     = wm.cycleLeft,
  right    = wm.cycleRight
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


local hyper = {'ctrl', 'cmd', 'alt', 'shift'}
-- Move Mouse to center of next Monitor
hs.hotkey.bind(hyper, 'tab', function()
    local screen = hs.mouse.getCurrentScreen()
    local nextScreen = screen:next()
    local rect = nextScreen:fullFrame()
    local center = hs.geometry.rectMidPoint(rect)
    hs.mouse.setAbsolutePosition(center)
end)

