# NSFC-LaTeX

简单易用的国家自然科学基金申请书 LaTeX 模板。不保证完全准确，请使用前认真对照核实。

## 使用说明

- 将 `nsfc.cls` 置于主文档同一文件夹
- 声明文档类型为 `\documentclass{nsfc}`
- 如需调整样式，可自行修改 `nsfc.cls`（做好了注释，非常易读）
- `\chapter` 和 `\section` 为蓝字提纲，自己写的内容从`\subsection`开始
- 标题、图表、公式、交叉引用自动编号
- 使用 `xelatex -> bibtex -> xelatex*2` 编译
