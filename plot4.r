# This function combines different plots into one consolidated plot
#Author: Yogesh B

plot4<-function(data){
  
  #Create a png device
  png(filename="plot4.png")
  
  #Set parameter to have multiple subplots within same plot in 2X2 config
  par(mfrow=c(2,2))
  
  l=length(data$Date)
  
  #Create an empty plot
  plot(1:l,data$Global_active_power,type="n",axes=F,ylab="Global Active Power (kilowatts)",xlab="")
  
  #Customize the axes
  axis(side=1,labels=c("Thu","Fri","Sat"),at=c(1,l/2,l))
  axis(2)
  
  #Make a line plot
  lines(1:l,data$Global_active_power)
  
  #Make border for the plot
  box()
  
  #Create second empty plot
  plot(1:l,data$Voltage,type="n",axes=F,ylab="Voltage",xlab="datetime")
  
  #Customize axes
  axis(side=1,labels=c("Thu","Fri","Sat"),at=c(1,l/2,l))
  axis(2)
  
  #Make line plot
  lines(1:l,data$Voltage)
  
  #Create border for the plot
  box()
  
  #Create third empty plot
  plot(1:l,data$Sub_metering_1,type="n",axes=F,ylab="Energy sub metering",xlab="")
  
  #Customize axes
  axis(side=1,labels=c("Thu","Fri","Sat"),at=c(1,l/2,l))
  axis(2)
  
  #Create line plots
  lines(1:l,data$Sub_metering_1,col="blue")
  lines(1:l,data$Sub_metering_2,col="orange")
  lines(1:l,data$Sub_metering_3,col="red")
  
  #Make border
  box()
  
  #Create legend and resize
  legend("topright",cex=0.5,bty="n",pt.cex=4,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd=3,col=c("blue","orange","red"))
  
  #Make fourth empty plot
  plot(1:l,data$Global_reactive_power,type="n",axes=F,ylab="Global_reactive_power",xlab="datetime")
  
  #Customize the axes
  axis(side=1,labels=c("Thu","Fri","Sat"),at=c(1,l/2,l))
  axis(2)
  
  #Make line plot
  lines(1:l,data$Global_reactive_power)
  
  #Create border for the plot
  box()
  
  #Save the image and close
  dev.off()
}