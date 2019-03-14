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

workdir <- "/home/charles/ETH/gasm/realData/albouy_data/preprocessing/animalbordersmapper/taxadata"
setwd(workdir)
#To Read the taxa data files
csvfiles <- system("ls *.csv",intern=TRUE)
xlsxfiles <- system("ls *.xlsx",intern=TRUE)



#To Read the shapefile containing presence-absence of species



#To Identify in the taxa-data-file the orders of each species contained in the presence-absence-files



#For each of the orders: 
##### To Use the bioregions classification algorithm to identify the bioregions
##### To identify the borders of the bioregions
##### To save the borders into separated raster files


# To accumulate all the raster files of the different orders into one unique rasterfile