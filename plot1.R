house<-read.table("~/household_power_consumption.txt",nrows=1,header=TRUE,na.strings="?",sep=";")
house<-read.table("~/household_power_consumption.txt",skip=397+60*24*15,nrows=60*24*2,header=FALSE,na.strings="?",sep=";",col.names=y,colClasses=sapply(house,class))
house$index=c(1:2880)
hist(house$Global_active_power,xlab="Global active power(kilowatts)",ylab="frequency",main="Global active power",breaks=5)
