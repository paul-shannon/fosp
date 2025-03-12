library(httr)

#----------------------------------------------------------------------------------------------------
timedLoad <- function(uri)
{
   time <- system.time({response <- GET(uri)})
   nchar(response)
   content <- httr::content(response, as="text")
   character.count <- nchar(content)
   printf("returned %d chars in %f", character.count, time[["elapsed"]])

} # timedLoad
#----------------------------------------------------------------------------------------------------
fosp <- "https://www.sewardpark.org"
fosptest <- "https://fosptest.wpcomstaging.com/"
timedLoad(fosp)
timedLoad(fosptest)


