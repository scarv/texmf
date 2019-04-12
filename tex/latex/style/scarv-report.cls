% Copyright (C) 2019 SCARV project <info@scarv.org>
%
% Use of this source code is restricted per the MIT license, a copy of which 
% can be found at https://opensource.org/licenses/MIT (or should be included 
% as LICENSE.txt within the associated archive or repository).

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{scarv-report}[2019/11/01]

\PassOptionsToClass{10pt}{article} \LoadClass{article}

% =============================================================================

\usepackage{amssymb}
\usepackage{amsmath}
\usepackage[plain,shortend]{algorithm2e}
\usepackage{authblk}
\usepackage[backend=biber,style=numeric]{biblatex}
\usepackage{bytefield}
\usepackage{booktabs}
\usepackage{caption}
\usepackage{currfile}
\usepackage{enumitem}
\usepackage{fancyhdr}
\usepackage{float}
\usepackage[a4paper,margin={2cm}]{geometry}
\usepackage[hidelinks]{hyperref}
\usepackage{import}
\usepackage[utf8]{inputenc}
\usepackage{listings}
\usepackage{longtable}
\usepackage{multirow,bigdelim}
\usepackage{pbox}
\usepackage{ragged2e}
\usepackage{tabularx}
\usepackage{titlesec}
\usepackage{tikz}
\usepackage{url}
\usepackage{xargs}
\usepackage{xspace}
\usepackage{xstring}
\usepackage{xcolor}

\usetikzlibrary{arrows}
\usetikzlibrary{arrows.meta}
\usetikzlibrary{calc}
\usetikzlibrary{decorations.markings}
\usetikzlibrary{decorations.pathmorphing}
\usetikzlibrary{decorations.pathreplacing}
\usetikzlibrary{decorations.shapes}
\usetikzlibrary{decorations.text}
\usetikzlibrary{fit}

\usepackage{scarv-notation}
\usepackage{scarv-xcrypto}
\usepackage{scarv-lab}

% =============================================================================

\hypersetup{colorlinks,linkcolor={red!90!black},citecolor={blue!50!black},urlcolor={blue!80!black}}

\fancypagestyle{plain}{
  \fancyhf{}
      
  \renewcommand{\headrulewidth}{0.5pt}
  \renewcommand{\footrulewidth}{0.5pt}

  \fancyhead[L]{}
  \fancyhead[C]{}
  \fancyhead[R]{}
  \fancyfoot[L]{\url{http://www.scarv.org}}
  \fancyfoot[C]{}
  \fancyfoot[R]{\thepage}
}
  
\pagestyle{plain}

\titleformat{\section}[block]{\Large\bfseries}{\thesection.}{1em}{}
\titleformat{\subsection}[block]{\normalfont\bfseries}{\thesubsection.}{1em}{}
\titleformat{\subsubsection}[block]{\normalfont\bfseries}{\thesubsubsection.}{1em}{}
\titleformat{\paragraph}[block]{\normalfont\bfseries}{\theparagraph.}{1em}{}
\titleformat{\subparagraph}[runin]{\normalfont\bfseries}{}{0em}{}

\titlespacing*{\paragraph}{0pt}{3.5ex plus 1ex minus .2ex}{2.3ex plus .2ex}
\titlespacing*{\subparagraph}{0pt}{3.5ex plus 1ex minus .2ex}{2.3ex plus .2ex}

\setcounter{tocdepth}{3}
\setcounter{secnumdepth}{4}

\setlength{\algomargin}{0em}
\SetArgSty{textnormal}
\DontPrintSemicolon

\addbibresource{scarv.bib}

% =============================================================================

\newcommandx{\MKPROLOGUE}{
  \newpage
  \maketitle \tableofcontents
  \newpage
}

\newcommandx{\MKEPILOGUE}{
  \newpage
  \printbibliography
}

% =============================================================================
