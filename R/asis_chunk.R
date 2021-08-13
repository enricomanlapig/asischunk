
#' @title asischunk code
#' @description Addin for RStudio for inserting asis chunks. Useful for creating branching documents where markdown code is run conditionally.
#' If \code{params} are defined in the document YAML, the function returns the first parameter.
#'
#' See \code{details} for setting up key command.
#' @author Enrico Manlapig, \email{emanlapig@westmont.edu}
#' @export
#' @return Inserts \code{```{asis}\\n\\n```} or \code{```{asis, include = params[1]}\\n\\n```} if \code{params} are defined.
#' @details How to set up key command in RStudio:
#'
#' After installing package.
#' Go to:
#'
#' \code{Tools} >> \code{Addins} >> \code{Browse Addins} >> \code{Keyboard Shortcuts}.
#'
#' Find \code{"asis code chunk"} and press its field under \code{Shortcut}.
#'
#' Press desired key command.
#'
#' Press \code{Apply}.
#'
#' Press \code{Execute}.
asis_chunk <- function() {

  # Insert text that splits the code chunk in two
  rstudioapi::insertText("```{asis}\n\n```")

  # Get document context
  # to get cursor position
  adc <- rstudioapi::getActiveDocumentContext()

  # Get cursor position
  start <- adc$selection[1][[1]]$range$start

  # Set cursor in-between chunks
  rstudioapi::setCursorPosition(c(start['row'] -1, 1), id = NULL)


}


asis_chunk_include <- function() {

  # Insert text that splits the code chunk in two
  if (exists("params")){
    rstudioapi::insertText("```{asis, include = params[1]}\n\n```")
  } else{
    rstudioapi::insertText("```{asis}\n\n```")
  }


  # Get document context
  # to get cursor position
  adc <- rstudioapi::getActiveDocumentContext()

  # Get cursor position
  start <- adc$selection[1][[1]]$range$start

  # Set cursor in-between chunks
  rstudioapi::setCursorPosition(c(start['row'] -1, 1), id = NULL)


}


