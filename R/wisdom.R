#' wisdom
#' 
#' Dispenses a randomly selected piece of wisdom from Merlin Mann's \href{https://github.com/merlinmann/wisdom}{Wisdom Project}.
#' 
#' @export

wisdom <- function() {
  
  # load wisdom data
  wisdom_project <- merlinmann::wisdom_project
  
  # sample wisdom
  w <- sample(wisdom_project, 1)
  
  # indent the wisdom
  w <- strwrap(w, indent = 2, exdent = 2)
  
  # print wisdom
  cat(w, fill = TRUE)
}
