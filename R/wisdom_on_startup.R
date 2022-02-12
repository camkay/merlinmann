#' wisdom_on_startup
#' 
#' Dispenses a randomly selected piece of wisdom from Merlin Mann's \href{https://github.com/merlinmann/wisdom}{Wisdom Project} on R startup.
#' 
#' @export

wisdom_on_startup <- function() {
  wisdom_project <- merlinmann::wisdom_project
  if ((home <- Sys.getenv("HOME")) == "") {
    home <- normalizePath("~")
  }
  .Rprofile <- file.path(home, ".Rprofile")
  con <- file(.Rprofile, "r")
  p <- readLines(con, warn = FALSE)
  close(con)
  if (any(grepl("merlinmann", p))) {
    cat("It appears you already have 'merlinmann' in your .Rprofile\n")
    return(invisible())
  }
  add_to_rprof <- 'local(if (interactive() && requireNamespace("merlinmann", quietly = TRUE)) {merlinmann::wisdom()})'
  cat(add_to_rprof, file = .Rprofile, fill = TRUE, append = TRUE)
  invisible()
}
