
#' @title asischunk code
#' @description Addin for RStudio for inserting asis chunks. Useful for creating branching documents where markdown code is run conditionally.
#'
#' See \code{details} for setting up key command.
#' @author Enrico Manlapig, \email{emanlapig@westmont.edu}
#' @export
#' @return Inserts \code{```{asis}\\n\\n```}
#' @license: GPL-3
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

  # Insert backticks and asis engine call
    rstudioapi::insertText("```{asis}\n\n```")


  # Get document context
  # to get cursor position
  adc <- rstudioapi::getActiveDocumentContext()

  # Get cursor position
  start <- adc$selection[1][[1]]$range$start

  # Set cursor in-between chunks
  rstudioapi::setCursorPosition(c(start['row'] -1, 1), id = NULL)


}


