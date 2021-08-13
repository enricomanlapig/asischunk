
<!-- README.md is generated from README.Rmd. Please edit that file -->

# asis\_chunk

R package: Insert asis code chunk in R Markdown. Addin for RStudio.

If an object `params` exists, inserts

Inserts:

> ´´´{asis, include = params\[1\]}
>
> ´´´

Otherwise:

> ´´´{asis}
>
> ´´´

By Enrico Manlapig Contact at:  
<emanlapig@westmont.edu>

Main functions:

-   asis\_chunk

## Installation

Development version:

> install.packages(“devtools”)
>
> devtools::install\_github(“EnricoManlapig/asis\_chunk”)

## Use

-   Install package
-   Add key command (e.g. mac: cmd-alt-shift-i, win: ctrl-alt-shift-i)
    by going to:
    -   *Tools* &gt; *Addins* &gt; *Browse Addins* &gt; *Keyboard
        Shortcuts*.  
    -   Find **asis code chunk** and press its field under *Shortcut*.
    -   Press desired key command.
    -   Press *Apply*.
    -   Press *Execute*.
-   Press chosen key command inside an R Markdown code chunk.
