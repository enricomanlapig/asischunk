
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
  start_col <- adc$selection[[1]]$range$end["column"]

  # Insert backticks and asis engine call around text
  if (start_col == 1){
    rstudioapi::insertText(paste0("```{asis}\n",
                                  text,
                                  "\n```\n",
                                  sep = ""))
    rstudioapi::setCursorPosition(c(start['row'], 10), id = NULL)

  } else{
    rstudioapi::insertText(paste0("\n```{asis}\n",
                                  text,
                                  "\n```\n",
                                  sep = ""))
    # Set at end of start row
    rstudioapi::setCursorPosition(c(start['row']+1, 10), id = NULL)

  }



}

