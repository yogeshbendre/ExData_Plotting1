
plot3<-function(data){
  png(filename="plot3.png")
  l=length(data$Date)
  plot(1:l,data$Sub_metering_1,type="n",axes=F,ylab="Energy sub metering",xlab="")
  axis(side=1,labels=c("Thu","Fri","Sat"),at=c(1,l/2,l))
  axis(2)
  lines(1:l,data$Sub_metering_1,col="blue")
  lines(1:l,data$Sub_metering_2,col="orange")
  lines(1:l,data$Sub_metering_3,col="red")
  box()
  legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd=2,col=c("blue","orange","red"))
  dev.off()
}