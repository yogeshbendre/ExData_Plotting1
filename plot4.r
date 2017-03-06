
plot4<-function(data){
  png(filename="plot4.png")
  
  par(mfrow=c(2,2))
  
  l=length(data$Date)
  plot(1:l,data$Global_active_power,type="n",axes=F,ylab="Global Active Power (kilowatts)",xlab="")
  axis(side=1,labels=c("Thu","Fri","Sat"),at=c(1,l/2,l))
  axis(2)
  lines(1:l,data$Global_active_power)
  box()
  
  plot(1:l,data$Voltage,type="n",axes=F,ylab="Voltage",xlab="datetime")
  axis(side=1,labels=c("Thu","Fri","Sat"),at=c(1,l/2,l))
  axis(2)
  lines(1:l,data$Voltage)
  box()
  
  plot(1:l,data$Sub_metering_1,type="n",axes=F,ylab="Energy sub metering",xlab="")
  axis(side=1,labels=c("Thu","Fri","Sat"),at=c(1,l/2,l))
  axis(2)
  lines(1:l,data$Sub_metering_1,col="blue")
  lines(1:l,data$Sub_metering_2,col="orange")
  lines(1:l,data$Sub_metering_3,col="red")
  box()
  legend("topright",cex=0.5,bty="n",pt.cex=4,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd=3,col=c("blue","orange","red"))
  
  plot(1:l,data$Global_reactive_power,type="n",axes=F,ylab="Global_reactive_power",xlab="datetime")
  axis(side=1,labels=c("Thu","Fri","Sat"),at=c(1,l/2,l))
  axis(2)
  lines(1:l,data$Global_reactive_power)
  box()
  
  dev.off()
}