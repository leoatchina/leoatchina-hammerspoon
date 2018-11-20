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

-- * Move window to screen
windowBind({"ctrl", "alt", "cmd", "shift"}, {
  left  = wm.throwLeft,
  right = wm.throwRight
})

-- * Set Window Position on screen
windowBind({"ctrl", "alt", "cmd"}, {
  k     = wm.maximizeWindow, -- ⌃⌥⌘ + k
  j     = wm.centerOnScreen, -- ⌃⌥⌘ + j
  h     = wm.cycleLeft,      -- ⌃⌥⌘ + h
  l     = wm.cycleRight,     -- ⌃⌥⌘ + l
  left  = wm.leftHalf,       -- ⌃⌥⌘ + ←
  right = wm.rightHalf,      -- ⌃⌥⌘ + →
  up    = wm.topHalf,        -- ⌃⌥⌘ + ↑
  down  = wm.bottomHalf      -- ⌃⌥⌘ + ↓
})
-- * Set Window Position on screen
windowBind({"ctrl", "alt", "shift"}, {
  left = wm.rightToLeft,      -- ⌃⌥⇧ + ←
  right = wm.rightToRight,    -- ⌃⌥⇧ + →
  up = wm.bottomUp,           -- ⌃⌥⇧ + ↑
  down = wm.bottomDown        -- ⌃⌥⇧ + ↓
})
-- * Set Window Position on screen
windowBind({"ctrl", "cmd", "shift"}, {
  left = wm.leftToLeft,      -- ⌃⌘⇧ + ←
  right = wm.leftToRight,    -- ⌃⌘⇧ + →
  up = wm.topUp,             -- ⌃⌘⇧ + ↑
  down = wm.topDown          -- ⌃⌘⇧ + ↓
})

