\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mxresume}[2018/12/16 MX Resume Template]

%%%%%%%%%%
% COLOUR %
%%%%%%%%%%

\RequirePackage{xcolor}

% Define colour scheme
\definecolor{fill1}{RGB}{0,68,138}
\definecolor{fill2}{RGB}{240,240,240}

\colorlet{headingFill}{fill1}
\colorlet{headingColour}{white}
\colorlet{sidebarFill}{white}
\colorlet{sidebarColour}{black}
\colorlet{bodyFill}{fill2}
\colorlet{bodyColour}{black}


%%%%%%%%%%
% HEADER %
%%%%%%%%%%

\LoadClass{article}
\RequirePackage{titlesec}

\newcommand{\name}[2]{
  \vspace{5mm}
  \centerline{\Huge{#1 \textbf{#2}}}
}

\newcommand{\expertise}[1]{
  \vspace{2mm}
  \centerline{\large{#1}}
}

\newcommand{\contact}[5]{
    \vspace{2mm}
    \centerline{
        \makebox[0pt][c]{
            #1 {\Large\textperiodcentered} #2 {\Large\textperiodcentered} #3
            \ #4 \ \ #5
        }%
    }%
}


%%%%%%%%%%%%%%%%%%%%%%%
% SECTIONS WITH DATES %
%%%%%%%%%%%%%%%%%%%%%%%

\titleformat{\subsubsection}
  {\large\bfseries\scshape\raggedright} % Can change colour of underlined heading here
  {}{0em}
  {}
  [{\titlerule[1pt]}] % Inserts a horizontal line after the heading

\newcommand{\datedsection}[2]{
  \subsection*{\normalfont\textit{#1 \hfill #2}} % uses subsection to ensure that all dates are aligned
}

\newcommand{\datedsubsection}[2]{
  \subsection*{#1 \hfill \normalfont\textit{#2}}
}
