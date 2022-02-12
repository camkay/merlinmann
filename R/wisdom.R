#' wisdom
#' 
#' Dispenses a randomly selected piece of wisdom from Merlin Mann's \href{Wisdom Project}{https://github.com/merlinmann/wisdom}.
#' 
#' @export

wisdom <- function() {
  w <- sample(wisdom_project, 1)
  w <- paste0("\"", w, "\"", "- Merlin Mann")
  w <- strwrap(w, indent = 2, exdent = 2)
  cat(w, fill = TRUE)
}

