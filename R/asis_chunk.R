
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

  # Get document context
  adc <- rstudioapi::getActiveDocumentContext()

  # Select text
  selection <- adc$selection
  text <- unlist(selection)["text"]

  # Get cursor position
  start <- adc$selection[1][[1]]$range$start
  end <- adc$selection[1][[1]]$range$end

  # Insert backticks and asis engine call around text
  rstudioapi::insertText(paste("```{asis}\n",
                               text,
                               "\n```",
                               sep = ""))


  # Set at end of start row
  rstudioapi::setCursorPosition(c(start['row'], 10), id = NULL)

}

