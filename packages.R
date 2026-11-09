# install packages from CRAN
p_needed <- c(
              'tidyverse','haven', 'lubridate', # tidverse 
              'magrittr', 'janitor', 'broom', # clean up 
              'stargazer', 'xtable', 'summarytools', 'kableExtra', 'table1', 'kableExtra', # format 
              'ggthemes', 'hrbrthemes',  'RColorBrewer', 'gridExtra', # plot
              'rdd', 'rdrobust', 'rdmulti' # stats 
              
)

packages <- rownames(installed.packages())
p_to_install <- p_needed[!(p_needed %in% packages)]
if (length(p_to_install) > 0) {
  install.packages(p_to_install)
}
lapply(p_needed, require, character.only = TRUE)
