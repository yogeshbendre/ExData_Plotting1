# This function shows the histogram of global active power
#Author: Yogesh B
plot1<-function(data){
  #Create a new png image device
  png(filename="plot1.png")
  #Plot a histogram
  hist(as.numeric(data$'Global_active_power'),col="red",border="black",main="Global Active Power",xlab="Global Active Power (kilowatts)")
  #Save the histogram to the png image and close it
  dev.off()  
  
}