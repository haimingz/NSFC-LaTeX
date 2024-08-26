# NSFC-LaTeX

简单易用的国家自然科学基金申请书 LaTeX 模板（2024版）。不保证完全准确，请使用前认真对照每年官方模板核实。使用此模板申请的2024年度青年项目已获批。

## 使用说明

### 字体配置

默认情况下，ctex 针对不同操作系统、不同编译器使用不同的字体（详见 [知乎 - LaTeX 字体配置](https://zhuanlan.zhihu.com/p/538459335)）。为了保证各平台效果一致，统一采用 Windows 系统内置的中易系列字体，即：中易宋体（SimSun）、中易楷体（KaiTi）、中易黑体（SimHei）、中易仿宋（FangSong）。这些字体在 Windows 系统中被叫作宋体、楷体、黑体、仿宋。英文采用 Times New Roman 字体。

如使用非 Windows 系统，需要提前将所需字体安装好。在 macOS ，如果直接安装字体后 xelatex 识别不到（暂时不知道什么原因），可复制字体到 `/资源库/fonts/`。在 Linux 系统，可复制字体到 `/usr/share/fonts/`。

由于楷体字形较小，为了使得整体观感更协调，已将黑体、宋体、Times New Roman 字体缩小至95%。

### 文档撰写

将 `nsfc.cls` 置于主文档所在目录，并在主文档声明文档类型为 `\documentclass{nsfc}`。

`\chapter` 和 `\section` 为蓝字提纲。蓝字提纲内容可能每年略有改变，目前模板已匹配2024版。

对于自己写的内容，`\subsection` 对应二级标题，`\subsubsection` 对应三级标题。

如果需要突出强调一部分文字，可以添加下划线或加粗。加粗的命令是`\textbf{需要加粗的文字}`。添加下划线的方法为`\CJKunderline*{直下划线}` 或 `\CJKunderwave*{波浪下划线}` 。如果需要其他下划线，请参考`xeCJK`官方[说明文档](https://mirrors.jlu.edu.cn/CTAN/macros/xetex/latex/xecjk/xeCJK.pdf)中关于`xeCJKfntef`的说明。需要注意的是，如果需要同时加粗和加下划线，应该将加粗命令放在外面，即`\textbf{\CJKunderwave*{需要强调的文字}}`。

### 格式调整

模板的全部样式设定都包括在 `nsfc.cls` 中。如需调整样式，例如各级标题与正文的字体字号等，可对照注释自行修改。

对于参考文献样式，本模板默认采用的是 `gbt7714-numerical.bst`（顺序编号制）。也可以从 [zepinglee/gbt7714-bibtex-style](https://github.com/zepinglee/gbt7714-bibtex-style) 下载所需的 bst 文件到主文件目录。

默认参考文献样式严格遵照国标。我们可根据需要调整 load.config 函数中的参数（请参考 [gbt7714宏包说明文档](https://mirrors.sustech.edu.cn/CTAN/biblio/bibtex/contrib/gbt7714/gbt7714.pdf)）。例如：

- 将 `bibliography.et.al.min` 和 `bibliography.et.al.use.first` 调整到比较大的数（例如`10`），以避免参考文献列表省略排在后面的作者。
- 将 `uppercase.name` 设置为 `0`，不将英文文献作者姓名大写。
- 将 `show.doi` 和 `show.url` 设置为 `0` ，关闭显示 doi 和 url。

### 文件编译

由于使用了中文字符，不能使用 pdfLaTeX 编译。建议使用 XeLaTeX 编译，基本流程为 `xelatex -> bibtex -> xelatex*2`。

