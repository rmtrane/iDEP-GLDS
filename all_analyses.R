library(tidyverse)

all_folders <- list.dirs(recursive = FALSE)
analyses <- all_folders[str_starts(all_folders, "./GLDS")]

walk(analyses0, ~rmarkdown::render(input = "template.Rmd",
                                  output_dir = "reports",
                                  output_file = str_sub(.x, start = 3),
                                  params = list(input_folder = .x)))