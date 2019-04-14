# https://bookdown.org/yihui/blogdown/
# https://www.garrickadenbuie.com/blog/blogdown-netlify-new-post-workflow/
# https://app.netlify.com/sites/trusting-swanson-3551ea/overview
# https://bookdown.org/yihui/blogdown/custom-layouts.html
library(blogdown) # devtools::install_github("rstudio/blogdown")
# blogdown::new_site()

# blogdown::install_hugo()

blogdown::serve_site()


blogdown::new_post("test2")

file.edit("~/.Rprofile")

#devtools::install_github("hadley/emo")
library(emo)
#install.packages("purrr", "Rcpp")


# masking location data for paost 13/04/20019

data <- fromJSON("./data/Location History.json") # extracts a list
locations <- data$locations # and the list contains a dataframe
rm(data)  # no need for this anymore

locations <- locations %>% 
  mutate(latitudeE7 =  latitudeE7 -(0.297*1e7),
         longitudeE7=  longitudeE7 + (0.876*1e7))

saveRDS(locations, "./content/post/data/location.rds")

# bug hunting

# git
# https://stackoverflow.com/questions/4873980/git-diff-says-subproject-is-dirty

# emoji
# https://gist.github.com/rxaviers/7360908


# ggplot 
#$ https://ggplot2.tidyverse.org/reference/geom_density_2d.html
# http://stat405.had.co.nz/ggmap.pdf
# https://ggplot2.tidyverse.org/reference/geom_density_2d.html
# https://www.littlemissdata.com/blog/maps

# worflow and nice theme
# https://www.garrickadenbuie.com/blog/blogdown-netlify-new-post-workflow/

