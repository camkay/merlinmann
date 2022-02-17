# note: you should manually fix the double quotes before importing

# import
wp <- readLines(here::here("clean", "wisdom.md"))

# tidy
wp <- grep("^- ", wp, value = TRUE)
wp <- wp[-1:-11]
wp <- gsub("(Related|Relatedly related|Alternatively): ", "", wp)
wp <- gsub("- ", "", wp)

# fix one offs
wp[grep("Keep moving", wp)] <- "Keep moving *and* get out of the way."

# format font
wp <- gsub("\\*{3}(.*?)\\*{3}", "\033[1m\033[3m\\1\033[23m\033[22m", wp)
wp <- gsub("\\*{2}(.*?)\\*{2}", "\033[1m\\1\033[22m", wp)
wp <- gsub("\\*{1}(.*?)\\*{1}", "\033[3m\\1\033[23m", wp)
wp <- gsub("_(.*?)_", "\033[1m\\1\033[22m", wp)

# wrap in quotes and attribute to merlin
wp <- paste0("\"", wp, "\"", " - Merlin Mann")

# export
save(wp, file = here::here("data", "wisdom_project.rda"))
