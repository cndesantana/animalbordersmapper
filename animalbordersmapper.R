##################
#To Read the taxa data files   
#To Read the shapefile containing presence-absence of species
#To Identify in the taxa-data-file the orders of each species contained in the presence-absence-files
#For each of the orders: 
##### To Use the bioregions classification algorithm to identify the bioregions
##### To identify the borders of the bioregions
##### To save the borders into separated raster files
# To accumulate all the raster files of the different orders into one unique rasterfile
##################
library(xlsx)
library(readxl)
library(dplyr)

workdir <- "/home/charles/ETH/gasm/realData/albouy_data/preprocessing/animalbordersmapper/taxadata"
setwd(workdir)
#To Read the taxa data files
df_taxa <- data.frame(order=character(0)
                      ,genus=character(0)
                      ,species=character(0))
amphibtaxa <- read.delim("amphib_names.csv",sep="\t")
df_taxa <- rbind(df_taxa, 
                 amphibtaxa %>% 
                   mutate(speciesname = paste(genus, species)) %>% 
                   select(genus, species, speciesname))

clementscheck <- read_xlsx("Clements-Checklist-v2018-August-2018.xlsx")
df_taxa <- rbind(df_taxa,
                 clementscheck %>% 
                   mutate(species = `scientific name`) %>% 
                   dplyr::select(order, species))

mammals <- read_xlsx("global-mammal-checklist-at-may-2018.xlsx", skip = 3)

reptiles <- read.delim("taxa_reptiles.csv",sep="\t")

#To Read the shapefile containing presence-absence of species



#To Identify in the taxa-data-file the orders of each species contained in the presence-absence-files



#For each of the orders: 
##### To Use the bioregions classification algorithm to identify the bioregions
##### To identify the borders of the bioregions
##### To save the borders into separated raster files


# To accumulate all the raster files of the different orders into one unique rasterfile