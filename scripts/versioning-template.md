```{=latex}

\begin{tikzpicture}
    % Riga colorata sopra (larghezza: \textwidth)
    \draw[fill=azzurro, draw=none, opacity=0.6] (0,0) rectangle (\textwidth, -1.15);
    \setlength{\arrayrulewidth}{0.3pt} % rende i bordi più sottili
    \renewcommand{\arraystretch}{1.2} % aumenta l'altezza riga

    % Spostiamo in basso la tabella
    \node[anchor=north west, inner sep=0pt] at (0,-0.0) {

        \begin{tabularx}{\textwidth}{|p{2cm}|p{2.5cm}|X|X|}
            \hline
            \multicolumn{4}{|l|}{\textcolor{white}{\textbf{VERSIONAMENTO}}} \\
            \hline
            \textcolor{white}{\textbf{Versione}} & \textcolor{white}{\textbf{Data}} & \textcolor{white}{\textbf{Motivo}} & \textcolor{white}{\textbf{Modifiche}} \\
            \hline
            {{VERSIONING_TABLE_ROWS}}
        \end{tabularx}
    };
\end{tikzpicture}

```