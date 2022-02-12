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
  
  # format wisdom
  w <- gsub("\\*{3}(.*?)\\*{3}", "\033[1m\033[3m\\1\033[23m\033[22m", w)
  w <- gsub("\\*{2}(.*?)\\*{2}", "\033[1m\\1\033[22m", w)
  w <- gsub("\\*{1}(.*?)\\*{1}", "\033[3m\\1\033[23m", w)
  
  # quote the wisdom
  w <- paste0("\"", w, "\"", " - Merlin Mann")
  
  # indent the wisdom
  w <- strwrap(w, indent = 2, exdent = 2)
  
  # print wisdom
  cat(w, fill = TRUE)
}
