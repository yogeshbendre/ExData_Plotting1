# This function shows how the various sub metering readings vary over two days of the week
#Author: Yogesh B


plot3<-function(data){
  #Create a new png image device
  png(filename="plot3.png")
  l=length(data$Date)
  
  #Create empty plot for sub metering readings
  plot(1:l,data$Sub_metering_1,type="n",axes=F,ylab="Energy sub metering",xlab="")
  
  #Add customized axes
  axis(side=1,labels=c("Thu","Fri","Sat"),at=c(1,l/2,l))
  axis(2)
  
  #Make line plots for various sub metering readings with the different colors
  lines(1:l,data$Sub_metering_1,col="blue")
  lines(1:l,data$Sub_metering_2,col="orange")
  lines(1:l,data$Sub_metering_3,col="red")
  
  #Add border for the plot
  box()
  
  #Create legend for the plot
  legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd=2,col=c("blue","orange","red"))
  
  #Save png image and close
  dev.off()
}