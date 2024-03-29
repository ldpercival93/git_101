#!Rscript 

# *** A script to analyse some movie data and report team members' favourites **
# Project Name: git_101
# Author: Tom Dakin 
# Contact: t.dakin@seamsltd.com
# Creation Date: 2019/07/17
#
# ******************************************************************************

# --- Initialise ---------------------------------------------------------------
library(tidyverse)
library(lubridate)


# --- Load data ----------------------------------------------------------------
movies <- 
  as_tibble(read.csv("data\\movies.csv", stringsAsFactors=FALSE))


# --- Preprocess ---------------------------------------------------------------
movies <- 
  movies %>% 
  mutate(date = ymd(release_date))


# --- Analysis -----------------------------------------------------------------
movies %>% 
  nrow %>% 
  paste("The number of movies in the collection is:", .) %>% 
  print()

movies %>% 
  arrange(date) %>% 
  select(title) %>% 
  head(1) %>% 
  paste("The earliest movie in the dataset is:", .) %>% 
  print()

movies %>% 
  arrange(desc(revenue)) %>% 
  select(title) %>% 
  head(1) %>% 
  paste("The highest grossing movie in the dataset is:", .) %>% 
  print()

movies %>% 
  arrange(desc(vote_average)) %>% 
  select(title) %>% 
  head(1) %>% 
  paste("The highest rated movie in the dataset is:", .) %>% 
  print()


# --- Report favourites --------------------------------------------------------
print("Farah's favourite movie is 'Apocalypto'")

print("Luke's favourite movie is 'Inglourious Basterds'")
# TODO Declare your own favourite with a print statement here...
print("I hardly get time to watch movies")


# --- End ----------------------------------------------------------------------
