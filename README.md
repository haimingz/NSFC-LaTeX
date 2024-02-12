# NSFC-LaTeX

简单易用的国家自然科学基金申请书 LaTeX 模板。不保证完全准确，请使用前认真对照每年官方模板核实。

## 使用说明

- 如使用非 Windows 系统，需要提前将所需字体（`simsun`、`simkai`、`simhei`、`simfang`）安装好（macOS 需要复制字体到`/资源库/fonts/`，Linux 需要复制字体到 `/usr/share/fonts/`）
- 将 `nsfc.cls` 置于主文档同一文件夹
- 如需调整样式，可自行修改 `nsfc.cls`（做好了注释，非常易读）
- 声明文档类型为 `\documentclass{nsfc}`
- `\chapter` 和 `\section` 为蓝字提纲，自己写的内容从`\subsection`开始
- 使用 `xelatex -> bibtex -> xelatex*2` 编译
