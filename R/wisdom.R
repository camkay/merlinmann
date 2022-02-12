#' wisdom
#' 
#' Dispenses a randomly selected piece of wisdom from Merlin Mann's \href{https://github.com/merlinmann/wisdom}{Wisdom Project}.
#' 
#' @export

wisdom <- function() {
  wisdom_project <- merlinmann::wisdom_project
  w <- sample(wisdom_project, 1)
  w <- paste0("\"", w, "\"", " - Merlin Mann")
  w <- strwrap(w, indent = 2, exdent = 2)
  cat(w, fill = TRUE)
}

