# Return the number of missing values in each column
count_missing <- function(data) {
  
  data.frame(
    column = names(data),
    missing = colSums(is.na(data))
  )
  
}