pollutantmean<-function(directory, pollutant, id = 1:332){
  data <- dir(directory,".csv")
  data <- data[seq(min(id), max(id))]
  df <-do.call(rbind,lapply(data,function(fn) read.csv(file=fn,header=T)))
  df_pollutant<-df[[pollutant]]
  df_trimmed = na.omit(df_pollutant)
  df_mean<-mean(df_trimmed, na.rm = TRUE)
  return(df_mean)
  
}

