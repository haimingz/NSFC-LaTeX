\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{nsfc}

% 页面设置
\LoadClass[a4paper,12pt]{report}% 默认纸张大小为A4
\RequirePackage[left=30mm,right=30mm,top=25.4mm,bottom=25.4mm]{geometry}% 设置页边距

% 设置字体
\RequirePackage[AutoFakeBold=5]{xeCJK}% 启用伪粗体（此行需要在下一行之前）
\RequirePackage[UTF8,heading=true,12pt,fontset=fandol]{ctex}% 启用中文支持（mac、linux）
% \RequirePackage[UTF8,heading=true,12pt,fontset=windows]{ctex}% 启用中文支持（windows）
\RequirePackage{mathptmx}% 设置公式字体为 Times 而不是 Computer Modern
\setmainfont{Times New Roman}% 默认英文字体（需要保证已经安装）

% 设置章节标题
\RequirePackage{xcolor}% 颜色支持
\definecolor{nsfc_blue}{RGB}{0,112,192}% 定义提纲标题颜色
\renewcommand{\thesection}{\arabic{section}} % 在section标题编号中去除chapter的编号
\ctexset{% 利用ctex设置章节样式
    secnumdepth=subsubsection, % 设置章节编号深度
    chapter/format={\color{nsfc_blue}\bfseries\kaishu\fontsize{14pt}{16pt}\selectfont},
    chapter/break={\vspace{0pt}},% 取消章节前的换页
    chapter/beforeskip=10pt, % 段前间距
    chapter/afterskip=10pt, % 段后间距
    chapter/indent=2em, % 首行缩进
    chapter/name={（,）},% 编号格式
    chapter/aftername={}, % 编号与标题内容之间
    section/format={\color{nsfc_blue}\kaishu\fontsize{14pt}{16pt}\selectfont},
    section/indent=2em,% 首行缩进
    section/hang=false,% 取消悬挂缩进
    section/aftername={.}, % 编号与标题内容之间
    subsection/format={\heiti\fontsize{12pt}{14pt}\selectfont},
    subsubsection/format={\heiti\fontsize{12pt}{14pt}\selectfont},
    bibname={\centerline{\normalsize\mdseries\heiti\color{black}\hspace{-60pt}{参考文献}}},
}

% 设置行间距
\RequirePackage{setspace}
\onehalfspacing% 设置1.5倍行间距
\RequirePackage[shortlabels]{enumitem}% 用于自定义列表编号样式
\setlist[enumerate]{nosep}% 设置列表的行高和间距与正文一致
\setlist[itemize]{nosep}% 设置列表的行高和间距与正文一致

% 设置参考文献样式
\RequirePackage{gbt7714}% 采用国标参考文献样式
\bibliographystyle{gbt7714-numerical}% 顺序编码制
% \bibliographystyle{gbt7714-author-year}% 作者年份制
\renewcommand{\bibfont}{\footnotesize}% 设置参考文献字体大小
\setlength{\bibsep}{0pt}% 设置参考文献条目间距

% 设置图表公式编号格式
\renewcommand{\thefigure}{\arabic{figure}}%
\renewcommand{\thetable}{\arabic{table}}%
\renewcommand{\theequation}{\arabic{equation}}%

% 设置图表公式标题样式
\RequirePackage{caption}%
\captionsetup[figure]{labelsep=period, font=small}%
\captionsetup[table]{labelsep=period, font=small}% 

% 其他
\RequirePackage[hidelinks]{hyperref} % 设置交叉引用超链接
\RequirePackage{nopageno} % 去掉页眉页脚（注意防止被其他 package 改回去）
\RequirePackage{graphicx}% 图片支持
\RequirePackage{mathtools} % 用于插入公式
\RequirePackage{amsmath} % 用于插入公式
\RequirePackage{amsfonts} % 用于插入公式