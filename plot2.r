# This function shows how the global active power varies over two days of the week
#Author: Yogesh B

plot2<-function(data){
  #Create a new png image device
  png(filename="plot2.png")
  
  l=length(data$Date)
  
  #Plot empty plot for the global active power vs the time
  plot(1:l,data$Global_active_power,type="n",axes=F,ylab="Global Active Power (kilowatts)",xlab="")
  
  #Add the axes and customize the x-axis to show the weekdays
  axis(side=1,labels=c("Thu","Fri","Sat"),at=c(1,l/2,l))
  axis(2)
  
  #Make a connected line plot
  lines(1:l,data$Global_active_power)
  #Put border around the plot
  box()
  
  #Save plot to png and close
  dev.off()
}