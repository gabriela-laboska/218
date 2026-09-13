#############################################################################
# This macro library supports WeBWorK problems from the PreTeXt project named
# Functions and single-variable calculus
#############################################################################


TEXT(
    MODES(
        HTML => '<div style="display:none;">' . general_math_ev3(<<'EOF') . '</div>',
\newcommand{\N}{\mathbb N}
\newcommand{\Z}{\mathbb Z} 
\newcommand{\Q}{\mathbb Q}
\newcommand{\R}{\mathbb R}
\newcommand{\C}{\mathbb C}
\DeclareMathOperator{\range}{range}
\DeclareMathOperator{\sgn}{sgn}
\DeclareMathOperator{\id}{id}
\newcommand{\abs}[2][]{\left\lvert #2\right\rvert_{#1}}
\newcommand{\anpoly}{a_nx^n+a_{n-1}x^{n-1}\cdots +a_1x+a_0}
\newcommand{\anmonic}{x^n+a_{n-1}x^{n-1}\cdots +a_1x+a_0}
\newcommand{\bmpoly}{b_mx^m+b_{m-1}x^{m-1}\cdots +b_1x+b_0}
\newcommand{\bnpoly}{b_nx^n+b_{n-1}x^{n-1}\cdots +b_1x+b_0}
\newcommand{\amp}{&}
EOF
        TeX => '\ifdefined\ptxmacros\else ' . <<'EOF'
\newcommand{\N}{\mathbb N}
\newcommand{\Z}{\mathbb Z} 
\newcommand{\Q}{\mathbb Q}
\newcommand{\R}{\mathbb R}
\newcommand{\C}{\mathbb C}
\DeclareMathOperator{\range}{range}
\DeclareMathOperator{\sgn}{sgn}
\DeclareMathOperator{\id}{id}
\newcommand{\abs}[2][]{\left\lvert #2\right\rvert_{#1}}
\newcommand{\anpoly}{a_nx^n+a_{n-1}x^{n-1}\cdots +a_1x+a_0}
\newcommand{\anmonic}{x^n+a_{n-1}x^{n-1}\cdots +a_1x+a_0}
\newcommand{\bmpoly}{b_mx^m+b_{m-1}x^{m-1}\cdots +b_1x+b_0}
\newcommand{\bnpoly}{b_nx^n+b_{n-1}x^{n-1}\cdots +b_1x+b_0}
\newcommand{\amp}{&}
\def\ptxmacros{}
EOF
. '\fi',
        PTX => ''
    )
);

# Return a string containing the latex-image-preamble contents.
# To be used by LaTeXImage objects as in:
# $image->addToPreamble(latexImagePreamble())

sub latexImagePreamble {
return <<'END_LATEX_IMAGE_PREAMBLE'
\usepackage{tikz}
\usepackage{tikz-cd}
\usepackage{tkz-graph}
\usepackage{tkz-euclide}
\usepackage{pgfplots}
\usetikzlibrary{matrix,shapes,decorations.pathreplacing,fit,backgrounds}
\usetikzlibrary{patterns}
\usetikzlibrary{positioning}
\usetikzlibrary{arrows}
\usetikzlibrary{calc}
\usetikzlibrary{through,intersections,decorations,shadows,fadings}
\usepackage{tikz}
\usepackage{tikz-cd}
\usepackage{tkz-graph}
\usepackage{tkz-euclide}
\usepackage{pgfplots}
\usetikzlibrary{matrix,shapes,decorations.pathreplacing,fit,backgrounds,calligraphy}

END_LATEX_IMAGE_PREAMBLE
}

1;
