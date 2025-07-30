% =================================================
% Layout LaTeX per Header e Footer
% =================================================
%
% Questo file definisce l'header e il footer.
% Viene popolato dallo script generate-pdf.ps1
% e poi incluso nel file .tex generato da Pandoc.

% --- Configurazione Margini ---
% Questi valori sono già impostati in Pandoc, ma li ridefiniamo per sicurezza
\geometry{a4paper, top=2.5cm, bottom=2.5cm, left=2cm, right=2cm, headheight=3cm, footskip=1.5cm}

% --- Definizione Stile Pagina "fancy" ---
\pagestyle{fancy}
\fancyhf{} % Pulisce tutti i campi di header e footer

% --- Configurazione Header ---
\fancyhead[L]{
    \includegraphics[height=1.5cm]{
        % --- Comment line to prevent powershell substitution issue
        {{LOGO_PATH}}
    }%
}
\fancyhead[R]{
    \begin{tabular}{|l|p{7cm}|}
    \hline
    \textbf{Politica} & {{HEADER_POLITICA}} \\
    \hline
    \textbf{Codice Documento} & {{HEADER_CODICE}} \\
    \hline
    \textbf{Versione} & {{HEADER_VERSIONE}} \\
    \hline
    \end{tabular}
}

% --- Configurazione Footer ---
\fancyfoot[L]{{{FILENAME}}}
\fancyfoot[R]{Pagina \thepage}

% --- Linea di separazione ---
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0.4pt}

% --- Applica lo stile di pagina ---
% Questo comando imposta lo stile "fancy" per tutte le pagine
% La copertina userà \thispagestyle{empty} per non avere header/footer.
\pagestyle{fancy}