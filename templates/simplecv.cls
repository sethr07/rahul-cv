\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{simplecv}[2023/06/05 My custom CV class]
\LoadClass[letterpaper,11pt]{article}

\RequirePackage{titlesec}
\titleformat{\section}         % Customise the \section command 
  {\Large\scshape\raggedright} % Make the \section headers large (\Large),
                               % small capitals (\scshape) and left aligned (\raggedright)
  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {}                           % Can be used to insert code before the heading
  [\titlerule \vspace{-5pt}]   % Inserts a horizontal line after the heading and adds some vertical space



\newcommand{\name}[1]{%
\centerline{\Huge{#1}}
}

\newcommand\contact[5]{%
    \centerline{%
        \makebox[0pt][c]{%
            #1 {\large\textperiodcentered} #2 {\large\textperiodcentered} #3
            \ #4 \ \ #5%
        }%
    }%
}

\newcommand{\longcontact}[5]{%
    \noindent
    #1\hfill {\large\textperiodcentered}\hfill #2\hfill
    {\large\textperiodcentered}\hfill #3\\
    #4\hfill #5%
}

\newcommand{\datedsection}[2]{%
  \section[#1]{#1 \hfill #2}%
}
\newcommand{\datedsubsection}[2]{%
  \subsection[#1]{#1 \hfill #2}%
}

\newcommand{\workitems}[3]{%
    \begin{itemize}
    \item #1
    \item #2
    \item #3
    \end{itemize}%
}

\newcommand{\resumeItem}[1]{
  \item\small{
    {#1 \vspace{2pt}}
  }
}



\newcommand{\resumeSubHeadingWithPromoitions}[8]{
  \vspace{-1pt}\item
    \begin{tabular*}{0.97\textwidth}[t]{l@{\extracolsep{\fill}}r}
      \textbf{#1} & \textbf{#2} \\
      \textit{\small#6} & \textit{\small #7} \\
    \end{tabular*}
    \begin{itemize}\vspace{-7pt}
      #8
    \end{itemize}
    \begin{tabular*}{0.97\textwidth}[t]{l@{\extracolsep{\fill}}r}
      \textit{\small#3} & \textit{\small #4} \\
    \end{tabular*}
    \begin{itemize}\vspace{-7pt}
      #5
    \end{itemize}\vspace{-7pt}
}

\newcommand{\resumeSubSubheading}[2]{
    \vspace{-2pt}\item
    \begin{tabular*}{0.97\textwidth}{l@{\extracolsep{\fill}}r}
      \textit{\small#1} & \textit{\small #2} \\
    \end{tabular*}\vspace{-7pt}
}


\newcommand{\resumeEducationHeading}[6]{
  \vspace{-2pt}\item
    \begin{tabular*}{0.97\textwidth}[t]{l@{\extracolsep{\fill}}r}
      \textbf{#1} & #2 \\
      \textit{\small#3} & \textit{\small #4} \\
      \textit{\small#5} & \textit{\small #6} \\
    \end{tabular*}\vspace{-5pt}
}


\newcommand{\resumeProjectHeading}[2]{
    \vspace{-2pt}\item
    \begin{tabular*}{0.97\textwidth}{l@{\extracolsep{\fill}}r}
      \small#1 & #2 \\
    \end{tabular*}\vspace{-7pt}
}


\newcommand{\resumeOrganizationHeading}[4]{
  \vspace{-2pt}\item
    \begin{tabular*}{0.97\textwidth}[t]{l@{\extracolsep{\fill}}r}
      \textbf{#1} & \textit{\small #2} \\
      \textit{\small#3}
    \end{tabular*}\vspace{-7pt}
}

\newcommand{\resumeSubItem}[1]{\resumeItem{#1}\vspace{-4pt}}

\renewcommand\labelitemii{$\vcenter{\hbox{\tiny$\bullet$}}$}

\newcommand{\resumeSubHeadingListStart}{\begin{itemize}[leftmargin=0.15in, label={}, itemsep=2pt]}
\newcommand{\resumeSubHeadingListEnd}{\end{itemize}}
\newcommand{\resumeItemListStart}{\begin{itemize}[itemsep=2pt, leftmargin=0.2in]}
\newcommand{\resumeItemListEnd}{\end{itemize}\vspace{4pt}}

% New command for summary section
\newcommand{\resumeSummary}[1]{
  \vspace{-2pt}\item
  \begin{tabular*}{0.97\textwidth}{p{0.97\textwidth}}
    \normalsize{#1}
  \end{tabular*}\vspace{-5pt}
}

% New commands for company with multiple roles
\newcommand{\resumeCompanyRole}[4]{
  \begin{tabular*}{0.97\textwidth}[t]{l@{\extracolsep{\fill}}r}
      \textbf{#1} & \textbf{#2} \\
      \textbf{\textit{\small#3}} & \textbf{\textit{\small #4}} \\
    \end{tabular*}\vspace{2pt}
}


\newcommand{\resumeSubheading}[4]{
  \begin{tabular*}{0.97\textwidth}[t]{l@{\extracolsep{\fill}}r}
      \textbf{#1} & \textbf{#2} \\
      \textbf{\textit{\small#3}} & \textbf{\textit{\small #4}} \\
    \end{tabular*}\vspace{2pt}
}

\newcommand{\resumeCompanySubRole}[2]{
  \vspace{4pt}
  \begin{tabular*}{0.97\textwidth}[t]{l@{\extracolsep{\fill}}r}
      \textbf{\textit{\small#1}} & \textbf{\textit{\small #2}} \\
    \end{tabular*}\vspace{2pt}
}

% End of file

