\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{nsfc}
\LoadClass[a4paper,12pt]{report}% 默认纸张大小为A4，字体大小为12pt
\RequirePackage[AutoFakeBold=3]{xeCJK}% 启用伪粗体（需要在ctex之前）
\RequirePackage[UTF8,heading=true,12pt,punct]{ctex}% 启用中文支持
\RequirePackage[left=30mm,right=30mm,top=25.4mm,bottom=25.4mm]{geometry}% 设置页边距
\RequirePackage{graphicx}% 图片支持
\RequirePackage{mathtools} % 用于插入公式
\RequirePackage{amsmath} % 用于插入公式
\RequirePackage{amsfonts} % 用于插入公式
\RequirePackage{xcolor}% 颜色支持
\RequirePackage[hidelinks]{hyperref} % 设置交叉引用超链接
\definecolor{nsfc_blue}{RGB}{0,112,192}% 定义提纲标题颜色
\renewcommand{\thesection}{\arabic{section}} % 在section标题编号中去除chapter的编号
\ctexset{% ctex设置
    secnumdepth=subsubsection, % 设置章节编号深度
    chapter={
        format={\color{nsfc_blue}\bfseries\sffamily\kaishu% 蓝色粗体楷书
            \fontsize{14pt}{16pt}\selectfont% 字体大小
        },
        break={\vspace{0pt}},% 取消章节前的换页
        beforeskip=10pt, % 段前间距
        afterskip=10pt, % 段后间距
        indent=2em, % 首行缩进
        name={（,）},% 编号格式
        aftername={}, % 编号与标题内容之间
    },
    section={
        format={\color{nsfc_blue}\sffamily\kaishu% 蓝色粗体楷书
            \fontsize{14pt}{16pt}\selectfont% 字体大小
        },
        indent=2em, % 首行缩进
        hang=false,% 取消悬挂缩进
        aftername={.}, % 编号与标题内容之间
    }, 
    subsection={
        format={\heiti\fontsize{12pt}{14pt}\selectfont},
    },
    subsubsection={
        format={\heiti\fontsize{12pt}{14pt}\selectfont},
    },
}

\setmainfont{Times New Roman} % 设置英文默认字体
\setsansfont{KaiTi}  % 英文无衬线字体（用于提纲蓝字）
\setCJKmainfont{KaiTi} % 设置中文默认字体

\RequirePackage{setspace}% 设置行间距
\onehalfspacing% 设置行间距为1.5倍

\RequirePackage{nopageno} % 去掉页眉页脚

% 设置参考文献
\RequirePackage{gbt7714}
\renewcommand{\bibname}{%设置参考文献标题
    \centerline{% 居中
        \normalsize\mdseries\heiti\color{black}{% 字体
            \hspace{-5.5em}% 补偿左侧缩进
            参考文献}}% 标题文字
}% 
\bibliographystyle{gbt7714-numerical}% 设置参考文献样式
% \bibliographystyle{gbt7714-author-year}% 设置参考文献样式
\renewcommand{\bibfont}{\footnotesize}% 设置参考文献字体大小
\setlength{\bibsep}{0pt}% 设置参考文献条目间距

% 设置图表公式编号格式
\renewcommand{\thefigure}{\arabic{figure}}%
\renewcommand{\thetable}{\arabic{table}}%
\renewcommand{\theequation}{\arabic{equation}}%

% 设置图表公式标题格式
\RequirePackage{caption}%
\captionsetup[figure]{labelsep=period, font=small}%
\captionsetup[table]{labelsep=period, font=small}% 

% 设置列表的行高和间距与正文一致
\RequirePackage[shortlabels]{enumitem}% 用于自定义列表编号样式
\setlist[enumerate]{nosep}%
\setlist[itemize]{nosep}%