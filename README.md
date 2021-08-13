
<!-- README.md is generated from README.Rmd. Please edit that file -->

# asis\_chunk

Insert code chunk into R Markdown documents. An RStudio addin.

Inserts:

> ´´´{asis}
>
> ´´´

By Enrico Manlapig <emanlapig@westmont.edu>

Main functions:

-   asis\_chunk

## Installation

Development version:

> install.packages(“devtools”)
>
> devtools::install\_github(“EnricoManlapig/asischunk”)

## Use

-   Install package
-   Add key command (e.g. mac: cmd-alt-shift-p, win: ctrl-alt-shift-p)
    by going to:
    -   *Tools* &gt; *Addins* &gt; *Browse Addins* &gt; *Keyboard
        Shortcuts*.  
    -   Find **asis code chunk** and select the field under *Shortcut*.
    -   Press desired key command.
    -   Press *Apply*.
    -   Press *Execute*.
-   Press chosen key command inside an R Markdown document

The `asis` engine allows users to write markdown within chunks. These
chunks can then be conditionally rendered using parameters defined in
the YAML or elsewhere in the document.

## Example

    ```{r toggle_solutions}
    solutions <- TRUE
    ```

    What is half of $4x$?

    ```{asis student_prompt, include = !solutions}
    Write your answer here: 
    ```

    ```{asis instructor_solutions, include = solutions}
    Correct answer: $\frac{4x}{2}= 2x$
    ```

If the object `solutions` takes the value `FALSE`, then the first chunk,
`student_prompt`, is rendered. If `solutions` takes the value `TRUE`,
then the second chunk, `instructor_solutions`, is rendered.
