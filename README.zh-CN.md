<div align="center">

<img src="kapture.png" alt="KaPin" width="88" />

# KaPin

**Linux X11 上好用的截图方案**

截图 · 长截图 · OCR 取词 · 钉图 · 标注 · 录屏

一个常驻托盘的轻量工具，覆盖 X11 桌面上的日常截图流程 —— 截下来、标清楚、取走文字、贴在屏幕边上。

[English](README.md) · [快速开始](#快速开始) · [功能](#功能) · [反馈问题](https://github.com/CyberAn-Dev/KaPin/issues)

![Platform](https://img.shields.io/badge/Linux-X11-3776ab)
[![License](https://img.shields.io/badge/license-MIT-green)](LICENSE)

</div>

<div align="center">

<img src="docs/images/editor.png" alt="KaPin 编辑器" width="900" />

<sub>完整编辑器：标注工具、OCR 结果与输出菜单。截图使用演示内容。</sub>

</div>

<details>
<summary>查看原位编辑与录屏工具条</summary>

<div align="center">

<img src="docs/images/capture.png" alt="蓝框八点调节，截图后直接标注。" width="900" />

<sub>蓝框八点调节，截图后直接标注。</sub>

<img src="docs/images/recording.png" alt="下拉选择帧率、分辨率、倒计时和时长。" width="525" />

<sub>下拉选择帧率、分辨率、倒计时和时长。</sub>

</div>

</details>

## 截图、标注、贴图，一条链走完

KaPin 把整套截图流程收在一个工具里，原生跑在 X11 桌面上：

- **截完就地标注。** 框选区域或点击窗口后，选区立刻可编辑 —— 箭头、序号、马赛克、文字，不必先打开另一个窗口。Enter 复制，Esc 取消。
- **图片里的字直接拿走。** 进入完整编辑器时默认自动 OCR，也能在图上拖选取词，或框选屏幕区域把文字直接送进剪贴板。
- **参考图贴在手边。** 把剪贴板图片钉在最上层，滚轮缩放、Ctrl+滚轮调透明度，钉图本身也能标注，识别出的文字拖选即可复制。
- **一屏不够就滚动。** 长截图把红框区域拼成一张长图，支持手动和自动滚动，实时预览且不会重复追加已采集的内容。
- **静图不够就录。** 选区旁边直接出录屏工具条：帧率、分辨率、倒计时、时长下拉选择，结束后导出 MP4、GIF 或 MKV。

## 功能

| 功能 | 说明 |
| --- | --- |
| 截图 | 蓝框八点调节，调边时显示像素放大镜；单行工具栏分组选择标注工具，截图后立即原位编辑。 |
| 滚动长截图 | 工具栏一键进入红框长截图；支持手动和自动向上/向下，实时预览并避免重复拼接。 |
| OCR | 中英文识别、图片拖选取词和截屏取词；进入完整编辑器时默认自动识别。 |
| 钉图 | 置顶、缩放、透明度；右键进入分组标注工具栏或选词，直接拖选文字复制。 |
| 编辑保存 | 撤销/重做、移动/删除标注、修改颜色/线宽、画布内即时输入文字、双击修改；支持裁剪，并可保存原尺寸 PNG / JPEG 标注图。 |
| 录屏 | 即时处理条和编辑器均可切换到选区旁的录屏工具条：下拉选择帧率、分辨率、倒计时和时长；结束后导出 MP4、GIF 或 MKV，支持多次导出和进度反馈。 |
| 历史 | 本机保留最多 10 张带时间戳的截图和 10 张剪贴板图片，两类记录都可在重启后恢复。 |
| 桌面集成 | GNOME 和 KDE Plasma 5 快捷键、主题、系统托盘与后台启动。 |

界面支持简体中文和英文。OCR 使用 Tesseract，录屏使用 ffmpeg。

## 快速开始

请使用 **X11** 会话。安装脚本面向使用 `apt` 的 Ubuntu 或 Kubuntu，需要联网。

### 从源码安装

```bash
git clone https://github.com/CyberAn-Dev/KaPin.git
cd KaPin
bash install.sh
./run.sh
```

脚本会安装系统依赖并添加应用菜单入口。启动器依赖源码目录，请保留该目录。

本仓库的 Releases 即为 KaPin 自己的版本；包名与命令仍为 `kapture`，老用户升级无缝。

<details>
<summary>界面与设置</summary>

<div align="center">

<img src="docs/images/settings.png" alt="KaPin 设置" width="560" />

<sub>配置快捷键、截图行为、OCR 与录屏默认值，以及界面外观。</sub>

</div>

GNOME 启动时恢复已保存的快捷键，有冲突可在设置中修改。“启动时隐藏主界面”仅隐藏窗口，不等于登录自启。

</details>

## 常用操作

| 操作 | 按键 / 手势 |
| --- | --- |
| 钉住最近 / 上一张剪贴板图片 | Ctrl+1 / Ctrl+2（GNOME 默认，可修改） |
| 缩放 / 调整钉图透明度 | 滚轮 / Ctrl+滚轮 |
| 识别钉图文字 | O 或右键菜单 |
| 撤销 / 重做 | Ctrl+Z / Ctrl+Shift+Z |
| 删除选中标注 | Delete |
| 停止长截图 / 关闭当前钉图 | Esc |

截图后固定进入原位编辑；Enter 复制、Esc 取消，工具条中的“在编辑器打开”可进入完整编辑器。钉图右键可选“标注 / 编辑”或“选取文字”，鼠标穿透后从托盘恢复。

需要截取 KaPin 自身时，在「设置 → 常规」勾选「截图时保留主界面」。设置窗口打开时也可用截图快捷键截取它，未保存的设置会保留。

长截图的滚速位于长截图下拉菜单；截图延时位于截图菜单。录屏使用独立的帧率、分辨率、倒计时和时长设置，结束后再选择输出格式。

历史保存在本机，重启可恢复：最多 10 张带时间戳的截图和 10 张剪贴板图片；每类另有 4000 万总像素预算，最新单张始终保留。历史窗口可清空两类记录。

## 使用须知

KaPin 是独立的开源项目，聚焦核心截图流程 —— 原位编辑、OCR、长截图、钉图和录屏集中在一个应用中，并保持这一范围精简。目前不提供 OCR 翻译、二维码识别或录屏音频。

- 仅支持 X11，暂不支持 Wayland。GNOME 和 KDE Plasma 5 支持在应用内设置全局快捷键。
- 长截图高度上限为 40,000 像素。动态页面、悬浮层、懒加载和重复内容会影响拼接；本功能不是浏览器整页导出。
- 多屏使用不同缩放比例的截图坐标尚未完整验证。
- OCR 效果受文字大小、字体和图像质量影响。需安装 Tesseract 及中英文语言包。

## 贡献与许可证

问题和改进建议请提交到 [Issues](https://github.com/CyberAn-Dev/KaPin/issues)，代码贡献请使用 [Pull Requests](https://github.com/CyberAn-Dev/KaPin/pulls)。

KaPin 采用 MIT 许可证，详见 [LICENSE](LICENSE)。项目最初源自 [Kapture](https://github.com/ycwei5/kapture)，此后已大幅演进。主题配色参考 [One Dark Pro](https://github.com/Binaryify/OneDark-Pro) 与 [Vitesse](https://github.com/antfu/vscode-theme-vitesse)。
