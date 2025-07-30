```{=latex}

\thispagestyle{empty}

\begin{center}

    \vspace*{\stretch{1}}
    \includegraphics[width=0.4\textwidth]{
        % --- Comment line to prevent powershell substitution issue
        {{LOGO_PATH}}
    }

    \vspace{2cm}

    {\Huge {{TITLE}}\par}

    \vspace{3cm}

    % --- Tabella Identificazione ---
    \begin{tikzpicture}
        % Riga colorata sopra (larghezza: \textwidth)
        \draw[fill=azzurro, draw=none, opacity=0.6] (0,0) rectangle (\textwidth, -0.6);
        \setlength{\arrayrulewidth}{0.3pt} % rende i bordi più sottili
        \renewcommand{\arraystretch}{1.2} % aumenta l'altezza riga
    
        % Spostiamo in basso la tabella
        \node[anchor=north west, inner sep=0pt] at (0,-0.0) {
            \begin{tabularx}{\textwidth}{|p{4cm}|p{4cm}|p{4cm}|X|}
                \hline
                \multicolumn{4}{|l|}{\textcolor{white}{\textbf{IDENTIFICAZIONE}}} \\
                \hline
                {{IDENTIFICATION_TABLE_ROWS}}
            \end{tabularx}
        };
    \end{tikzpicture}

    \vspace{0.8cm}

    % --- Tabella Responsabilità ---
    \begin{tikzpicture}
        % Riga colorata sopra (larghezza: \textwidth)
        \draw[fill=azzurro, draw=none, opacity=0.6] (0,0) rectangle (\textwidth, -0.6);
        \setlength{\arrayrulewidth}{0.3pt} % rende i bordi più sottili
        \renewcommand{\arraystretch}{1.2} % aumenta l'altezza riga
    
        % Spostiamo in basso la tabella di 0.4cm
        \node[anchor=north west, inner sep=0pt] at (0,-0.0) {
            \begin{tabularx}{\textwidth}{|p{4cm}|p{4cm}|X|}
                \hline
                \textcolor{white}{\textbf{RESPONSABILITA'}} & \textcolor{white}{\textbf{NOME}} & \textcolor{white}{\textbf{FUNZIONE}} \\
                \hline
                {{RESPONSIBILITIES_TABLE_ROWS}}
            \end{tabularx}
        };
    \end{tikzpicture}

    \vspace{0.8cm}
    {\footnotesize
    \begin{center}
        \textbf{\textcolor{azzurro}{Aggiornamenti della Versione}}\\
        \textcolor{azzurro}{Il presente documento è disponibile in copia originale sul server della rete aziendale}\\
        \textcolor{azzurro}{Ogni copia cartacea è ritenuta copia di lavoro \textbf{non controllata}}
    \end{center}
    }

\end{center}

```