complete <- function(directory, id = 1:332) {
  full_file <- list.files(directory, full.names = TRUE)
  data <- data.frame()
  
  for (i in id) {
    m_id <- read.csv(full_file[i])
    nobs <- sum(complete.cases(m_id))
    tmp <- data.frame(i, nobs)
    data <- rbind(data, tmp)
  }
  
  colnames(data) <- c("id", "nobs")
  data
}