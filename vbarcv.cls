\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{vbarcv}[2011/03/26 Vertical Bar CV class]
\LoadClass{article} % Article class as base
\RequirePackage{titlesec}
\RequirePackage{array,longtable}

% Set margins
\RequirePackage[a4paper,
			    left=5mm,
			    right=5mm,
			    top=20mm,
			    bottom=20mm,
			    bindingoffset=0mm
			    ]{geometry} 

% Hyperlinks		    
\RequirePackage{xcolor}
\definecolor{hyperlinkblue}{HTML}{0645AD}
\RequirePackage{hyperref}
\hypersetup{
    colorlinks=true,
    urlcolor=hyperlinkblue,
}
\urlstyle{same}

% Name block
\newcommand{\name}[1]{%
  \centerline{\LARGE\textbf{#1}}
}

% Address block
\newcommand{\address}[4]{%
    \centerline{%
        \makebox[0pt][c]{%
            #1, #2, #3, #4
        }%
    }%
}

% Contact favicons
\RequirePackage{fontawesome}
\newcommand{\email}[1]{%
  \centerline{{\fontfamily{qcr}\selectfont \faicon{envelope-o} #1}}
}
\newcommand{\linkedin}[1]{%
  \centerline{{\fontfamily{qcr}\selectfont \faicon{linkedin} #1}}
}
\newcommand{\twitter}[1]{%
  \centerline{{\fontfamily{qcr}\selectfont \faicon{twitter} #1}}
}
\newcommand{\github}[1]{%
  \centerline{{\fontfamily{qcr}\selectfont \faicon{github} #1}}
}
\newcommand{\website}[1]{%
  \centerline{{\fontfamily{qcr}\selectfont \faicon{globe} #1}}
}

% Contact block
\newcommand{\contact}[3]{%
    \centerline{{\fontfamily{cmss}\selectfont%
        \makebox[0pt][c]{%
            \faicon{envelope-o} #1 {\large\textperiodcentered} \faicon{github} #2 {\large\textperiodcentered} \faicon{globe} #3
            }%
        }%
    }%
}

% Margin text
\newcommand{\martxt}[1]{\small{\textbf{\emph{#1}}}}
\newcommand{\mardte}[1]{\small{\emph{#1}}}

% Renew commands
\renewcommand{\labelitemi}{\faicon{angle-right}} % change itemize bullet labels to '>'