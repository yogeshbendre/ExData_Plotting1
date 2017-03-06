
plot2<-function(data){
  png(filename="plot2.png")
  l=length(data$Date)
  plot(1:l,data$Global_active_power,type="n",axes=F,ylab="Global Active Power (kilowatts)",xlab="")
  axis(side=1,labels=c("Thu","Fri","Sat"),at=c(1,l/2,l))
  axis(2)
  lines(1:l,data$Global_active_power)
  box()
  dev.off()
}