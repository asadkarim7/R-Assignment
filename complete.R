complete<-function(directory,id = 1:332){
  data <- dir(directory,".csv")
  ini <- min(id)
  max <- max(id)
  result <- data.frame("id"=character(0),"nobs"=integer(0))
  
  while(ini <= max){
    df_data <-read.csv(file=data[ini])
    df_data<- na.omit(df_data)
    complete_result<-data.frame("id"= ini,"nobs"=nrow(df_data))
    result<-rbind(complete_result,result)
    ini<-ini + 1
    
  }
 
  return(result)
  
}
