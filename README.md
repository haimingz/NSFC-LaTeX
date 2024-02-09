# NSFC-LaTeX

简单易用的国家自然科学基金申请书 LaTeX 模板。不保证完全准确，请使用前认真对照每年官方模板核实。

## 使用说明

- 将 `nsfc.cls` 置于主文档同一文件夹
- 如需调整样式，可自行修改 `nsfc.cls`（做好了注释，非常易读）
- 声明文档类型为 `\documentclass{nsfc}`
- `\chapter` 和 `\section` 为蓝字提纲，自己写的内容从`\subsection`开始
- 使用 `xelatex -> bibtex -> xelatex*2` 编译

## 字库配置

不同系统的字体配置真是个大坑。如果只使用 Windows 平台，可以传入 `fontset=windows` 参数到 `ctex`，保证使用的字体与官方模板一致。但对于 macOS 和 Linux，系统预装字体与 Windows 不同，要做到完全一致的字体效果太麻烦了。与其这样，还不如统一使用 `fontset=fandol` 参数，保证跨平台的一致性。