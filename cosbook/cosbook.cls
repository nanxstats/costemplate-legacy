%% Capital of Statistics (http://cos.name/) Book Class Based on XeTeX

\def\fileversion{1.0}
\def\filename{cosbook}
\def\filedate{2010/12/04}

\ProvidesClass{cosbook}
\LoadClass[hyperref,fancyhdr,nofonts,twoside]{ctexbook}
\CTEXsetup[format+={\zihao{4}}]{section}
\setCJKmainfont[BoldFont={方正黑体_GBK}, ItalicFont={方正楷体_GBK}]{方正书宋_GBK}
\setCJKsansfont{方正黑体_GBK}
\setCJKmonofont{方正仿宋_GBK}
\setCJKfamilyfont{rm}[BoldFont={方正黑体_GBK}, ItalicFont={方正楷体_GBK}]{方正书宋_GBK}
\setCJKfamilyfont{sf}{方正黑体_GBK}
\setCJKfamilyfont{tt}{方正仿宋_GBK}
\setCJKfamilyfont{song}[BoldFont={方正黑体_GBK}]{方正书宋_GBK}
\setCJKfamilyfont{kai}{方正楷体_GBK}
\setCJKfamilyfont{hei}{方正黑体_GBK}
\setCJKfamilyfont{fs}{方正仿宋_GBK}

% 下面两行针对CTeX 2.9.0.148绑定的xeCJK而hack 旧版本不需要 新版本不知道是否需要
\xeCJKsetcharclass{"0}{"2E7F}{0}
\xeCJKsetcharclass{"2E80}{"FFFF}{1}

\RequirePackage{amssymb,amsmath,amsthm,booktabs,graphicx,xcolor,fancyvrb}
\RequirePackage[a4paper,lmargin={3.18cm},rmargin={3.18cm},tmargin={2.84cm},bmargin={2.54cm}]{geometry}

% fancyhdr设置
\pagestyle{fancy}
\lhead{\zihao{-5}{\textit{统计之都}~~http://cos.name}}
\chead{}
\rhead{\zihao{-5}{\textit{书籍标题示例}}} % 全部改写 cosbook和cosart的页眉格式要分开!
\lfoot{}
\cfoot{\thepage}
\rfoot{}

% hyperref设置
\hypersetup{colorlinks=false} % 取消所有链接的颜色
\hypersetup{pdftitle={标题},pdfauthor={作者},pdfsubject={主题},pdfkeywords={关键词}} % 要改写

% fancyvrb设置
\RecustomVerbatimEnvironment{Verbatim}{Verbatim}{frame=leftline,numbers=left,rulecolor=\color{lightgray},framerule=4pt,numbersep=3pt}
\fvset{frame=leftline,numbers=left,rulecolor=\color{lightgray},framerule=4pt,numbersep=3pt}

% 自定义了三种环境 证明环境是amsthm自带的  % 要改写
\theoremstyle{definition}
\newtheorem{thm}{Theorem} % 定理
\theoremstyle{plain}
\newtheorem{lem}{Lemma} % 引理
\theoremstyle{remark}
\newtheorem{rmk}{Remark} % 注意

%%% 自定义环境 %%%
\newcommand{\email}[1]{\href{mailto:#1}{\normalfont\texttt{#1}}} % E-mail地址
\newcommand{\prolang}[1]{\textsf{#1}} % 一般编程语言名称
\newcommand{\R}{\textsf{R}} % R的名称
\newcommand{\rcode}[1]{\texttt{#1}} % 行间代码片段
\newcommand{\pkg}[1]{\textbf{\textsf{#1}}} % 包的名称
\newcommand{\fun}[1]{\textit{#1}} % 函数名称
