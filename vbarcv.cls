\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{vbarcv}[2011/03/26 Vertical Bar CV class]
\LoadClass{article} % Article class as base
\RequirePackage{titlesec}
\RequirePackage{array,longtable}

% Set margins
\RequirePackage[a4paper,
			    left=20mm,
			    right=20mm,
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

% Contact block
\newcommand{\contact}[4]{%
        \centerline{{\textsf\selectfont%
        \makebox[0pt][c]{%
            \faicon{phone} #1 {\large\textperiodcentered} \faicon{envelope-o} #2 {\large\textperiodcentered} \faicon{github} #3 {\large\textperiodcentered} \faicon{linkedin} #4
            % \faicon{envelope-o} #1 {\large\textperiodcentered} \faicon{github} #2 {\large\textperiodcentered} \faicon{globe} #3
            }%
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
\newcommand{\mobile}[1]{%
  \centerline{{\fontfamily{qcr}\selectfont \faicon{phone} #1}}
}

% Bullets
\newcommand{\blackbullet}{\shiftalong{-0.34cm}\footnotesize\faicon{circle}\enspace}
\newcommand{\hollowbullet}{\shiftalong{-0.31cm}\footnotesize\faicon{genderless}\enspace}
\renewcommand{\labelitemi}{\faicon{angle-right}} % list item bullets are changed to '>'

% Margin text
\newcommand{\martxt}[1]{\normalsize{\textbf{\emph{#1}}}} % bold margin text
\newcommand{\martxtsm}[1]{\small{{\emph{#1}}}} % small bold margin text
\newcommand{\mardte}[1]{\small{\emph{#1}}} % non-bold margin text for dates

% Body text
\newcommand{\headtxt}[1]{\normalsize\textbf{#1}} % heading text
\newcommand{\bullettxt}[1]{\normalsize{\emph{#1}}} % small bold italics for emphasised list items

% List specific commands
\newcommand{\twothirdsskip}{\vspace{-0.67\baselineskip}}
\newcommand{\fourthirdsskip}{\vspace{-1.33\baselineskip}}
\newcommand{\nosep}{\itemsep0pt} % no separation between list items
