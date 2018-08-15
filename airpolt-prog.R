# air pollution pollutant mean
# test code
pollut.data = read.csv("specdata/001.csv", sep = ",")
nrow(pollut.data)
ncol(pollut.data)
pollut.data [2, ]

pollut.mean <- function(dir, pollutant, id = 1:332) {
  
}