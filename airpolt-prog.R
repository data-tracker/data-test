# air pollution pollutant mean
# test code
pollut.data = read.csv("specdata/001.csv", sep = ",", skipNul = TRUE)
pollut.data = read.csv("specdata/001.csv", sep = ",")
nrow(pollut.data)
ncol(pollut.data)
pollut.data [2, ]

pollut.mean <- function(dir, pollutant, id = 1:3) {
    
    idx.mean = c(id)
    idx = sprintf("%03d", id)
    fname = paste(dir, "/", idx, ".csv", sep = "")
    for (i in id) {
      idx.df = read.csv(fname[i], sep = ",")
      idx.df = idx.df[complete.cases(idx.df[,pollutant]),]
      pollut = idx.df[[pollutant]]
      idx.mean[i] = sum(pollut)/length(pollut)
      print(paste("mean val:", i, idx.mean[i]))
    }
    print(idx.mean)
}

pollut.mean(dir = "specdata", pollutant = "sulfate", id = 1:10)

