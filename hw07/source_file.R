## one script to rule them all

## clean out any previous work
outputs <- c("gapminder.tsv",                    # 00download_gapminder.R
             "gapminder2.tsv",                   # 01exploratory_analysis.R
             "lm_info.tsv",                      # 02statistical_analysis.R
             list.files(pattern = "*.png$"))
file.remove(outputs)

## run my scripts
source("00download_gapminder.R")
source("01exploratory_analysis.R")
source("02statistical_analysis.R")
source("03figures.R")