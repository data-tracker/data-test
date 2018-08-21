# air pollution pollutant mean
# test code
pollut.data = read.csv("specdata/001.csv", sep = ",", skipNul = TRUE)
pollut.data = read.csv("specdata/001.csv", sep = ",")
nrow(pollut.data)
ncol(pollut.data)
pollut.data [2, ]

pollut.mean <- function(dir, pollutant, id = 1:3) {
  
    idx = sprintf("%03d", id)
    fname = paste(dir, "/", idx, ".csv", sep = "")
    fname
    length(fname)
    read.csv(fname[1], sep = ",")
#    for (i in length(fname)) {
#        idx.dframe = read.csv(fname[i], sep = ",")
#        idx.dframe = idx.dframe[, is.na(pollutant) == FALSE]
#        idx.dframe
#    }
#    idx.dframe = read.csv(fname, sep = ",")
#    idx.dframe
#    attach(idx.dframe)
#    valid_pollut = idx.dframe
}
