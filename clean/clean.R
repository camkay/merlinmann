# note: you should manually fix the double quotes before importing

# import
wisdom_project <- readLines(here::here("clean", "wisdom.md"))

# tidy
wisdom_project <- grep("^- ", wisdom_project, value = TRUE)
wisdom_project <- wisdom_project[-1:-11]
wisdom_project <- gsub("(Related|Relatedly related|Alternatively): ", "", wisdom_project)
wisdom_project <- gsub("- ", "", wisdom_project)

# fix one offs
wisdom_project[grep("Keep moving", wisdom_project)] <- "Keep moving *and* get out of the way."

# format font
wisdom_project <- gsub("\\*{3}(.*?)\\*{3}", "\033[1m\033[3m\\1\033[23m\033[22m", wisdom_project)
wisdom_project <- gsub("\\*{2}(.*?)\\*{2}", "\033[1m\\1\033[22m", wisdom_project)
wisdom_project <- gsub("\\*{1}(.*?)\\*{1}", "\033[3m\\1\033[23m", wisdom_project)
wisdom_project <- gsub("_(.*?)_", "\033[1m\\1\033[22m", wisdom_project)

# wrap in quotes and attribute to merlin
wisdom_project <- paste0("\"", wisdom_project, "\"", " - Merlin Mann")

# export
save(wisdom_project, file = here::here("data", "wisdom_project.rda"))
