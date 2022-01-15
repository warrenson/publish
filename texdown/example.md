---
numbersections: true
reference-section-title: 'References'
bibliography: 'example.bibtex'
csl: ieee.csl
fontsize: 12pt
documentclass: article
toc: true
header-includes:
- |
    ```{=latex}
    \usepackage{float}
    \floatplacement{figure}{H}
    ```
---

# Introduction heading 1
A basic template. For example,

Bioinformatics is interpreting signals from biological systems as
information to understand aspects of the system [@pevsner2015bioinformatics].

## Labelled Heading 2 {#sec:head2}
A section with a label in the heading.

## A 3rd heading 2
Linking back to the previous section @sec:head2.

Despite the broad variety of gene prediction software systems ... as their
published performance using plant data is almost always restricted to the model
plant *Arabidopsis thaliana*[@Xie1997].

## *Arabidopsis thaliana*

*Arabidopsis thaliana* (*A. thaliana*), commonly water-cress, is the most extensively used model
plant organism in plant biology research, largely due to the early adoption of
the species as a model organism in the early 1980s[@meinke1998arabidopsis].

![*A. thaliana*](figures/Arabidopsis_thaliana.jpg){#fig:Athaliana}


Unlilke the plant in figure @fig:Athaliana, next we have an equation {@eq:binarysigmoid}. Note, the $\alpha$ parameter controls the
transition gradient of the output curve

$$ f(x) = \frac{1}{(1 + e^{-\alpha x})} $$ {#eq:binarysigmoid}

# This ones a list set or something

\lstset{basicstyle=\linespread{1.15}\footnotesize\ttfamily{}}
~~~~ {#rnaseqread caption="A single RNA-Seq read"}
@SRR9718417.6 6 length=150
NGCTGCCTGATGGGCCCTTTGGCTTGACAACAGTCTTCCTCATTGTCACACGGCC ...
+SRR9718417.6 6 length=150
#AAFFKKKKKKKAKKKK<KKKKKKKKFKKKKKKKKKKKKKKKKKKKKKKKKKKKK ...
~~~~

\newpage

# Now for a table
The top 10 performing models from the *A. thaliana* experimental data
validation results for all high-complexity genes are shown in table
@tbl:ATexpResMetricsHigh, displaying the models' metrics, and

\begin{table}[H]
\begin{center}
\begin{tabular}{l r r r r r r r r}
\hline
\rule{0pt}{1.5em}Model & Accuracy & STD & Sensitivity & STD & Specificity & STD & Inf. & STD \\
\hline
1 & 0.945 & 0.131 & 0.918 & 0.228 & 0.981 & 0.042 & 0.899 & 0.238 \\
2 & 0.945 & 0.131 & 0.920 & 0.228 & 0.980 & 0.042 & 0.899 & 0.238 \\
3 & 0.945 & 0.131 & 0.918 & 0.228 & 0.981 & 0.042 & 0.899 & 0.238 \\
4 & 0.945 & 0.131 & 0.918 & 0.228 & 0.981 & 0.042 & 0.899 & 0.238 \\
5 & 0.945 & 0.131 & 0.918 & 0.228 & 0.981 & 0.042 & 0.899 & 0.238 \\
6 & 0.945 & 0.131 & 0.918 & 0.228 & 0.981 & 0.042 & 0.899 & 0.238 \\
7 & 0.945 & 0.131 & 0.918 & 0.228 & 0.980 & 0.042 & 0.899 & 0.238 \\
8 & 0.945 & 0.131 & 0.918 & 0.228 & 0.981 & 0.042 & 0.899 & 0.238 \\
9 & 0.944 & 0.131 & 0.918 & 0.228 & 0.981 & 0.042 & 0.899 & 0.238 \\
10 & 0.944 & 0.131 & 0.917 & 0.228 & 0.981 & 0.042 & 0.899 & 0.238 \\
\hline
\end{tabular}
\caption{Top 10 model metrics - high-complexity}
\label{tbl:ATexpResMetricsHigh}
\end{center}
\end{table}



\appendix

# Gene Lists {#sec:appendixGenelist}
## *Arabidopsis thaliana*
Heres @tbl:ACGeneLists

| *A. thaliana* Training | *A. thaliana* Simulated | *A. thaliana* Validation |
| :---- | :---- | :---- |
| AT1G01320 | AT1G55860 | AT3G48190 |
| AT1G02080 | AT1G13280 | AT3G50380 |
| AT1G03060 | AT1G07480 | AT3G50590 |
| AT1G05570 | AT1G22140 | AT3G59100 |

Table: *Actinidia chinensis* gene lists {#tbl:ACGeneLists}

# Matlab Scripts
## MLP Class
```matlab
% MLP
%
% 1+ hidden-layer perceptron model.
% Can handle as many hidden layers as needed.
%
% Usage:
%
% Create a MLP with the contructor:
%
% myMLP = MLP([layer-sizes], learning-rate, bias, activation-function,
%                   alpha)
```
# References {.unnumbered}
Control bib title
<div id="refs"></div>

