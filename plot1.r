
plot1<-function(data){
  png(filename="plot1.png")
  hist(as.numeric(data$'Global_active_power'),col="red",border="black",main="Global Active Power",xlab="Global Active Power (kilowatts)")
  dev.off()  
  
}