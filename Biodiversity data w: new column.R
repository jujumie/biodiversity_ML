#I will use this file to create my dataset with feature engineering my
#biodiversity variable. Species richness is measured by the number of species 
#present divided by the size of the ecosystem. I will also join together 
#Longitude and Latitude to create one variable representing location


parks <- read.csv("Desktop/csv/parks.csv")

species <- read.csv("Desktop/csv/species.csv")

biodiversity <- merge(parks,species,by=c('Park.Name'),all.x=T)

biodiversity_small <- biodiversity %>%
  select(Park.Name, State, Acres, Latitude, Longitude, Species.ID)

species_count <- biodiversity %>%
  select(Park.Name, Species.ID) %>%
  group_by(Park.Name) %>%
  tally () %>%
  dplyr::rename(Number_of_species = n)

biodiversity_new <- merge(biodiversity_small, species_count, by=c('Park.Name'),all.x=T)

biodiversity_final <- biodiversity_new %>%
  mutate(species_richness = Number_of_species / Acres)
  

#then I will export this dataset as a csv and continue my work in Python
#for the rest of the assignment

write.csv(biodiversity_final, "Desktop/biodiversity_final.csv")



