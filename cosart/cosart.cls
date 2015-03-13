%% Capital of Statistics (http://cos.name/) Article Class

\def\fileversion{1.0}
\def\filename{cosart}
\def\filedate{2010/12/04}

\ProvidesClass{cosart}
\LoadClass[hyperref,fancyhdr,nofonts,twoside]{ctexart}
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

% 使用旧式footnote符号
\renewcommand\thefootnote{\fnsymbol{footnote}}  % 要改写 其他页恢复正常

\RequirePackage{amssymb,amsmath,amsthm,booktabs,graphicx,xcolor,fancyvrb}
\RequirePackage[a4paper,lmargin={3.18cm},rmargin={3.18cm},tmargin={2.84cm},bmargin={2.54cm}]{geometry}

% fancyhdr设置
\pagestyle{fancy}
\lhead{\zihao{-5}{\textit{统计之都}~~http://cos.name}}
\chead{}
\rhead{\zihao{-5}{\textit{\@title}}} % 要改写
\lfoot{}
\cfoot{\thepage}
\rfoot{}

% hyperref设置
\hypersetup{colorlinks=false} % 取消所有链接的颜色
\hypersetup{pdftitle={标题},pdfauthor={作者},pdfsubject={主题},pdfkeywords={关键词}} % 要改写

% fancyvrb设置
\RecustomVerbatimEnvironment{Verbatim}{Verbatim}{frame=leftline,numbers=left,rulecolor=\color{lightgray},framerule=4pt,numbersep=3pt}
\fvset{frame=leftline,numbers=left,rulecolor=\color{lightgray},framerule=4pt,numbersep=3pt}

% 自定义了三种环境 证明环境是amsthm自带的  % 需要改写
\theoremstyle{definition}
\newtheorem{thm}{Theorem} % 定理
\theoremstyle{plain}
\newtheorem{lem}{Lemma} % 引理
\theoremstyle{remark}
\newtheorem{rmk}{Remark} % 注意

%%% 定义标题环境 %%%
\newtoks\arturl % 定义文章在线阅读地址
\newtoks\authorinst % 定义作者单位

\def\maketitle{
  \begin{center}
     {\zihao{-2}{\textbf{\@title}}\footnote{在线阅读: {\the\arturl}}}
     \vskip 0.1in
     {\zihao{4}{\textit{\@author}}\footnote{作者单位: {\the\authorinst}.}}
     \zihao{5}
  \end{center}
  }

%%% 自定义环境 %%%
\newcommand{\email}[1]{\href{mailto:#1}{\normalfont\texttt{#1}}} % E-mail地址
\newcommand{\prolang}[1]{\textsf{#1}} % 一般编程语言名称
\newcommand{\R}{\textsf{R}} % R的名称
\newcommand{\rcode}[1]{\texttt{#1}} % 行间代码片段
\newcommand{\pkg}[1]{\textbf{\textsf{#1}}} % 包的名称
\newcommand{\fun}[1]{\textit{#1}} % 函数名称

%%% 顺序编码的参考文献格式 %%%
\RequirePackage[numbers,sort&compress]{natbib}
\bibliographystyle{cosn}
% 重新定义citep
\let\oldcitep\citep
\newcommand{\citen}[2][]{\textsuperscript{\oldcitep{#2}#1}}
\renewcommand{\citep}{\citen}

%%% 著者-出版年的参考文献格式 %%%
% \RequirePackage{natbib}
% \bibliographystyle{cosay} % 著者-出版年的参考文献格式
% 重新定义citet
% \let\oldcitet\citet
% \newcommand{\citeayt}[2][]{\oldcitet{#2}\textsuperscript{#1}}
% \renewcommand{\citet}{\citeayt}
% 重新定义citep
% \let\oldcitep\citep
% \newcommand{\citeayp}[2][]{\oldcitep{#2}\textsuperscript{#1}}
% \renewcommand{\citep}{\citeayp}
