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
\titlespacing*{\subparagraph}{0pt}{1ex}{1em}

\setcounter{tocdepth}{3}
\setcounter{secnumdepth}{4}

\setlength{\algomargin}{0em}
\SetArgSty{textnormal}
\DontPrintSemicolon
