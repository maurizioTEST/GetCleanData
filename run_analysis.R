trainingX=read.fwf("./UCI HAR Dataset/train/X_train.txt",widths=rep(16,561),header=F)
trainingY=read.delim("./UCI HAR Dataset/train/Y_train.txt",sep=" ",header=F)
testX=read.fwf("./UCI HAR Dataset/test/X_test.txt",widths=rep(16,561),header=F)
testY=read.delim("./UCI HAR Dataset/test/Y_test.txt",sep=" ",header=F)
subject_train=read.delim("./UCI HAR Dataset/train/subject_train.txt",sep=" ",header=F)[,1]
subject_test=read.delim("./UCI HAR Dataset/test/subject_test.txt",sep=" ",header=F)[,1]
activity_labels <-read.table("./UCI HAR Dataset/activity_labels.txt")
features=read.delim("./UCI HAR Dataset/features.txt",sep=" ",header=F)
merged.data=rbind(trainingX,testX->Xdata)
mergedY=rbind(trainingY,testY)
merged.subject=c(subject_train,subject_test)
tidy.data=cbind(mergedY,merged.subject,merged.data)
feat=features[,2]
toadd1=grep("std",feat)
toadd2=grep("mean",feat)
toadd3=grep("Mean",feat)
features[toadd3,]##not ,mean
c(toadd1,toadd2)->features.left
length(features.left)
tidy.data.mean.sd=tidy.data[,c(1,2,features.left+2)]
tidy.data[,1]=factor(tidy.data[,1])
levels(tidy.data[,1])=activity_labels[,2]
featureName=gsub("|\\()", "", make.names(features[features.left,2]))
colnames(tidy.data.mean.sd)=c("activity","subject",featureName)
library(plyr)
ddply(tidy.data.mean.sd, .(activity, subject),colwise(mean))->z
dim(z)
write.table(z, row.names=FALSE,file="tidy.txt") 
 