#After discussions with my mentor and Prof. Longo, I have decided to go back
#and recreate my data set using more features and allowing this to guide me
#during the ML process to figure out which feautres are the best at 
#prediction species richness instead of choosing just 2 features. 

library(tidyverse)
library(dplyr)
library("plyr")  
library(readr)

#reading in my intitial csv files
parks <- read.csv("Desktop/csv/parks.csv")

species <- read.csv("Desktop/csv/species.csv")

#mering csv files into one data set
biodiversity <- merge(parks,species,by=c('Park.Name'),all.x=T)

#First, I'll select columns that already exist that I want to have in my 
#final data set

biodiversity_selected <- biodiversity %>%
  select(Park.Name, State, Acres, Latitude, Longitude, Species.ID, Category,
         Order, Family, Record.Status, Nativeness, Abundance, Seasonality,
         Conservation.Status)

#Creating species count (number of species in the park) to have one more useful
#feature and also to create the species richness feature.

species_count <- biodiversity %>%
  select(Park.Name, Species.ID) %>%
  group_by(Park.Name) %>%
  tally () %>%
  dplyr::rename(Number_of_species = n)

biodiversity_new_2 <- merge(biodiversity_selected, species_count, by=c('Park.Name'),
                          all.x=T)

#Creating species_richness column
biodiversity_final2 <- biodiversity_new %>%
  mutate(species_richness = Number_of_species / Acres)


#then I will export this dataset as a csv and continue my work in Python
#for the rest of the assignment

write.csv(biodiversity_final2, "Desktop/biodiversity_final2.csv")

