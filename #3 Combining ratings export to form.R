# Load required packages
getwd()
install.packages("readr")
install.packages("dplyr")
library(readr)
library(dplyr)

# Read in the CSV files
dwa_ratings <- read_csv("dwa_ratings.csv")
dwa_fshc <- read_csv("DWA_for_FSHC_rating.csv")

# Replace the FSHC_Rating column with the ratings column (rows 1:2087)
dwa_fshc$FSHC_Rating[1:2087] <- dwa_ratings$ratings[1:2087]

# Write the updated data frame back to CSV
write_csv(dwa_fshc, "DWA_for_FSHC_rating_updated.csv")
