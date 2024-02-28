# NSFC-LaTeX

简单易用的国家自然科学基金申请书 LaTeX 模板（2024版）。不保证完全准确，请使用前认真对照每年官方模板核实。

## 使用说明

### 字体配置

默认情况下，ctex 针对不同操作系统、不同编译器使用不同的字体（详见 [知乎 - LaTeX 字体配置](https://zhuanlan.zhihu.com/p/538459335)）。为了保证各平台效果一致，统一采用 Windows 系统内置的中易系列字体，即：中易宋体（SimSun）、中易楷体（KaiTi）、中易黑体（SimHei）、中易仿宋（FangSong）。这些字体在 Windows 系统中被叫作宋体、楷体、黑体、仿宋。英文采用 Times New Roman 字体。

如使用非 Windows 系统，需要提前将所需字体安装好。在 macOS ，如果直接安装字体后 xelatex 识别不到（暂时不知道什么原因），可复制字体到 `/资源库/fonts/`。在 Linux 系统，可复制字体到 `/usr/share/fonts/`。

### 文档撰写

将 `nsfc.cls` 置于主文档所在目录，并在主文档声明文档类型为 `\documentclass{nsfc}`。`\chapter` 和 `\section` 为蓝字提纲，自己写的内容从`\subsection`开始

### 格式调整

模板的全部样式设定都包括在 `nsfc.cls` 中。如需调整样式，例如各级标题与正文的字体字号等，可对照注释自行修改。

对于参考文献样式，建议在[zepinglee/gbt7714-bibtex-style](https://github.com/zepinglee/gbt7714-bibtex-style)下载所需的 bst 文件到主文件目录，并根据需要调整 load.config 函数中的参数（请参考 [gbt7714宏包说明文档](https://mirrors.sustech.edu.cn/CTAN/biblio/bibtex/contrib/gbt7714/gbt7714.pdf)）。

### 文件编译

由于使用了中文字符，不能使用 pdfLaTeX 编译。建议使用 XeLaTeX 编译，基本流程为 `xelatex -> bibtex -> xelatex*2`。

