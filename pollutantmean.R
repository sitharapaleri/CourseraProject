pollutantmean <- function(directory, pollutant, id = 1:332) {
  full_file <- list.files(directory, full.names = TRUE)
  
  data <- data.frame()
  
  for (i in id) {
    data <- rbind(data, read.csv(full_file[i]))
  }
  
  mean(data[, pollutant], na.rm = TRUE)
}