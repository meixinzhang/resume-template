\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mxresume}[2018/12/16 MX Resume Template]

%%%%%%%%%%
% COLOUR %
%%%%%%%%%%
\RequirePackage{xcolor}

% Define colour scheme
\definecolor{gray}{RGB}{150,150,150}
\definecolor{fill1}{RGB}{20,56,108}
\definecolor{fill2}{RGB}{241,241,241}
\definecolor{fill3}{RGB}{75,75,75}

\colorlet{headingFill}{fill1}
\colorlet{headingColour}{white}
\colorlet{sidebarFill}{white}
\colorlet{sidebarColour}{black}
\colorlet{bodyFill}{fill2}
\colorlet{bodyColour}{black}

\colorlet{descripColour}{bodyColour}
\colorlet{infoColour}{fill3}


%%%%%%%%%%%
% SYMBOLS %
%%%%%%%%%%%
\newcommand{\Bullet}{\tiny\ \raisebox{0.7mm}{\textbullet}\tiny\ \normalsize\ }
\newcommand{\Bar}{ \textbf{\textbar} \ }
\newcommand{\GBar}{\textcolor{infoColour}{\ \textbf{\textbar} \ }}
\newcommand{\Cpp}{C\texttt{++}}
\newcommand{\Csharp}{C\texttt{\#}}


%%%%%%%%%%
% HEADER %
%%%%%%%%%%
\LoadClass{article}
\RequirePackage{titlesec}

\newcommand{\name}[2]{
    \vspace*{3mm}
    \centerline{\Huge{#1 \textbf{#2}}}
    \vspace*{2mm}
}

\newcommand{\expertise}[1]{
    \vspace*{1mm}
    \centerline{\large{#1}}
}

\newcommand{\contact}[5]{
    \vspace*{1mm}
    \centerline{
        \makebox[0pt][c]{
            #1 {\Large\textperiodcentered} #2 {\Large\textperiodcentered} #3
            \ #4 \ \ #5
        }
    }
}


%%%%%%%%%%%%%%%%%%%%%%
% SECTIONS AND DATES %
%%%%%%%%%%%%%%%%%%%%%%
\titleformat{\subsubsection}
  {\large\bfseries\scshape\raggedright} % Can change colour of underlined heading here
  {}{0em}
  {}
  [{\titlerule[1pt]}] % Inserts a horizontal line after the heading

%%%%%%%%%%%% Style 1 %%%%%%%%%%%%%%%%
% subsection font with no new line
\newcommand{\runsubsection}[1]{
    \bfseries\large{\color{descripColour}{#1}}\normalfont
}

% Multi-descriptors command
\newcommand{\multidescript}[2]{
    \raggedright{\color{descripColour}{#1} \hfill \color{infoColour}{#2}} \\
}

% Descriptors command
\newcommand{\descript}[1]{
    \raggedright{\color{descripColour}{#1} \\}\normalfont
}

% information command -- \scshape
\newcommand{\info}[2]{
    \raggedright{\vspace*{0.5mm}\textit{\color{descripColour}{#1}} \GBar \textit{\color{descripColour}{#2}}\\} \normalfont
}

%%%%%%%%%%%% Style 2 %%%%%%%%%%%%%%%%
\newcommand{\datedsection}[2]{
  \subsection*{#1 \hfill \normalfont\textit{#2}}
}

\newcommand{\datedsubsection}[2]{
  \subsection*{\normalfont\textit{#1 \hfill #2}} % uses subsection to ensure that all dates are aligned
}


%%%%%%%%%%%%
% EMPHASIS %
%%%%%%%%%%%%
\RequirePackage{tikz}

\renewenvironment{quote}{\color{accent}\itshape\large}{\par}
\newcommand{\tag}[1]{%
  \tikz[baseline]\node[anchor=base,draw=infoColour!30,rounded corners,inner xsep=1ex,inner ysep =0.75ex,text height=1.5ex,text depth=.25ex]{#1};
}

%%%%%%%%%%%%%%%%%%%%%%
% PERSONAL INFO FILL %
%%%%%%%%%%%%%%%%%%%%%%
\usepackage{graphicx}
\graphicspath{ {./icons/} } % Includes icons for contact info

\newcommand{\phone}[1]{
    \includegraphics[scale=0.18]{phone-icon.png}
    \raisebox{1.5mm}{#1}
}

\newcommand{\email}[1]{
    \includegraphics[scale=0.2]{email-icon.png}
    \raisebox{1.5mm}{#1}
}

\newcommand{\linkedin}[1]{
    \includegraphics[scale=0.2]{linkedin-icon.png}
    \raisebox{1.5mm}{#1}
}

\newcommand{\github}[1]{
    \includegraphics[scale=0.2]{github-icon.png}
    \raisebox{1.5mm}{#1}
}


%%%%%%%%%%%
% SPACING %
%%%%%%%%%%%
\RequirePackage{dashrule}

\newcommand{\vdivider}{\hfill\textcolor{gray}{\vline width 1pt}\hfill}
\newcommand{\hdivider}{\textcolor{gray}{\hdashrule{\linewidth}{0.6pt}{0.5ex}}\smallskip}
\newcommand{\tab}{\hspace*{2mm}}
\newcommand{\bodyPad}{\vspace*{0.5mm}}
\newcommand{\enumPad}{\vspace*{-2.5mm}} % used to reduce the spacing before and after enum
\newcommand{\sectionenumPad}{\vspace*{-2mm}} % used to reduce the spacing before and after enum

\newenvironment{tightemize}[1]{\enumPad\begin{itemize}[leftmargin={#1}]\itemsep2pt \parskip0pt \parsep0pt}{\end{itemize}}
