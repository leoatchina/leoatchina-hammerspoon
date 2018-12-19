# 功能概述
* [窗口管理](./window-management.lua)
    * 最大化窗口 (并不是 MacOS 的全屏模式)
    * 将当前窗口移动到另一屏幕
    * **直接**将窗口大小设置为当前的一半（上下左右四个方向）
    * 向**任意**方向调整窗口大小
    * **新功能** 类 Windows 的窗口移动，作用与 Windows 系统下的 `winKey + left/right` 一致

# 示例
# 安装
* **首先**安装 [HammerSpoon](https://github.com/Hammerspoon/hammerspoon)
* 下载、拷贝或者直接 `git clone` 这些文件：
    * [init.lua](https://github.com/leoatchina/hammerspon-config/blob/master/init.lua) - 主程序入口
    * [key-binding.lua](https://github.com/leoatchina/hammerspon-config/blob/master/key-binding.lua) - 窗口管理快捷键配置
    * [window-management.lua](https://github.com/leoatchina/hammerspon-config/blob/master/window-management.lua) - 窗口管理
* 将`init.lua`, `key-binding.lua`, 和 `window-management.lua` 放到 `~/.hammerspoon` 路径下

# 快捷键
## 窗口管理
* 将窗口移动到另一屏幕
	* `Ctrl-Alt-Cmd-Shift + [` - 将当前窗口移动到左侧的屏幕
	* `Ctrl-Alt-Cmd-Shift + ]` - 将当前窗口移动到右侧屏幕
* 窗口最大化
	* `Ctrl-Alt-Cmd-Shift + Up`
* 将窗口居中（注：会保持窗口高度）
	* `Ctrl-Alt-Cmd-Shift + Down`
* 类 Windows 的窗口移动（调整窗口位置至相对于当前窗口的左右，参考Windows 系统下的快捷键 `win + 左/右`）
  * `Ctrl-Alt-Cmd-Shift + Left`    将窗口移至相对于当前窗口的左方，并将窗口调整至二分之一屏幕大小
  * `Ctrl-Alt-Cmd-Shift + Right`   将窗口移至相对于当前窗口的右方，并将窗口调整至二分之一屏幕大小
* 布局窗口至二分之一当前屏幕大小
	* `Ctrl-Alt-Cmd + Left` - 窗口占屏幕左半部分
	* `Ctrl-Alt-Cmd + Right` - 窗口占屏幕右半部分
* 调整窗口右边、下边位置（保持左边、上边不变）
	* `Ctrl-Alt-Shift + Left` - 右边左移（窗口变小）
	* `Ctrl-Alt-Shift + Right` - 右边右移（窗口变大）
	* `Ctrl-Alt-Shift + Up` - 下边上移（窗口变小）
	* `Ctrl-Alt-Shift + Down` - 下边下移（窗口变大）
* 调整窗口左边、上边位置（保持右边、下边不变）
	* `Ctrl-Cmd-Shift + Left` - 左边左移（窗口变大）
	* `Ctrl-Cmd-Shift + Right` - 左边右移（窗口变小）
	* `Ctrl-Cmd-Shift + Up` - 上边上移（窗口变大）
	* `Ctrl-Cmd-Shift + Down` - 上边下移（窗口变小）
