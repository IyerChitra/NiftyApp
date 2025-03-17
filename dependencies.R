# dependencies.R
list.of.packages <- c("shiny", "quantmod", "DT", "lubridate", "dplyr")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"LibPath"])]
if(length(new.packages)) install.packages(new.packages)
