# 功能概述
* [窗口管理](./window-management.lua)
    * 最大化窗口 (并不是 MacOS 的全屏模式)
    * 将当前窗口移动到另一屏幕
    * **直接**将窗口大小设置为当前的一半（上下左右四个方向）
    * 向**任意**方向调整窗口大小
    * **新功能** 类 Windows 的窗口移动，作用与 Windows 系统下的 `winKey + left/right` 一致
* **新功能** 全局类 Vim 快捷键绑定 (感谢 [@A-RON](https://github.com/asmagill) 的帮助)
    * `Ctrl + hjkl` 光标的上下左右
    * 可以与 `alt`, `shift`, `cmd` 搭配使用，实现按词移动、移到行首行尾以及选中

# 示例
## 全局类 Vim 快捷键绑定

![vim-key-binding](./assets/vim-key-binding(block-caret).gif)

# 安装
* **首先**安装 [HammerSpoon](https://github.com/Hammerspoon/hammerspoon)
* 下载、拷贝或者直接 `git clone` 这些文件：
    * [init.lua](https://github.com/S1ngS1ng/HammerSpoon/blob/master/init.lua) - 主程序入口
    * [key-binding.lua](https://github.com/S1ngS1ng/HammerSpoon/blob/master/key-binding.lua) - 窗口管理快捷键配置
    * [vim-binding.lua](https://github.com/S1ngS1ng/HammerSpoon/blob/master/vim-binding.lua) - 类 Vim 快捷键绑定
    * [vox-control.lua](https://github.com/S1ngS1ng/HammerSpoon/blob/master/vox-control.lua) - VOX 播放器控制
    * [window-management.lua](https://github.com/S1ngS1ng/HammerSpoon/blob/master/window-management.lua) - 窗口管理
* 将`init.lua`, `key-binding.lua`, `vim-binding.lua`, `vox-control.lua` 和 `window-management.lua` 放到 `~/.hammerspoon` 路径下

# 快捷键
## 窗口管理
* 将窗口移动到另一屏幕
	* `Ctrl-Alt-Cmd-Shift + Left` - 将当前窗口移动到左侧的屏幕
	* `Ctrl-Alt-Cmd-Shift + Right` - 将当前窗口移动到右侧屏幕
* 窗口最大化
	* `Ctrl-Alt-Command + k`
* 将窗口居中（注：会保持窗口高度）
	* `Ctrl-Alt-Command + j`
* 类 Windows 的窗口移动（调整窗口位置至相对于当前窗口的左右，效果请参考 Windows 系统下的快捷键 `win + 左/右`）
  * `Ctrl-Alt-Command + h`    将窗口移至相对于当前窗口的左方，并将窗口调整至二分之一屏幕大小
  * `Ctrl-Alt-Command + l`    将窗口移至相对于当前窗口的右方，并将窗口调整至二分之一屏幕大小
* 布局窗口至二分之一当前屏幕大小
	* `Ctrl-Alt-Command + Left` - 窗口占屏幕左半部分
	* `Ctrl-Alt-Command + Right` - 窗口占屏幕右半部分
	* `Ctrl-Alt-Command + Up` - 窗口占屏幕上半部分
	* `Ctrl-Alt-Command + Down` - 窗口占屏幕下半部分
* 调整窗口右边、下边位置（保持左边、上边不变）
	* `Ctrl-Alt-Shift + Left` - 右边左移（窗口变小）
	* `Ctrl-Alt-Shift + Right` - 右边右移（窗口变大）
	* `Ctrl-Alt-Shift + Up` - 下边上移（窗口变小）
	* `Ctrl-Alt-Shift + Down` - 下边下移（窗口变大）
* 调整窗口左边、上边位置（保持右边、下边不变）
	* `Ctrl-Command-Shift + Left` - 左边左移（窗口变大）
	* `Ctrl-Command-Shift + Right` - 左边右移（窗口变小）
	* `Ctrl-Command-Shift + Up` - 上边上移（窗口变大）
	* `Ctrl-Command-Shift + Down` - 上边下移（窗口变小）

## 类 Vim 全局快捷键绑定
* 基本操作
  * `Ctrl + h` 左
  * `Ctrl + j` 下
  * `Ctrl + k` 上
  * `Ctrl + l` 右
* 与 `Alt` 配合使用
  * `Ctrl-Alt + H` 光标向左移动一个词
  * `Ctrl-Alt + L` 光标向右移动一个词
* 与 `Cmd` 配合使用
  * `Ctrl-Cmd + H` 光标移至行首
  * `Ctrl-Cmd + L` 光标移至行尾
* 与 `Shift` 配合使用
  * 上面所列出的操作，配合 `Shift` 可以实现选中功能
