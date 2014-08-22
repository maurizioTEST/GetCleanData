# Getting and Cleaning Data: Peer Assessment 1
## Loading  the data
We start by loading the data

We could also include the inertial signal folder we could do (but on our understanding we judged them superfluos)

## We merge the training and the test sets to create one data set. 

```r
load("data.Rdata")
merged.data=rbind(trainingX,testX->Xdata)
mergedY=rbind(trainingY,testY)
merged.subject=c(subject_train,subject_test)
tidy.data=cbind(mergedY,merged.subject,merged.data)
```

## We then extract only the measurements on the mean and standard deviation for each measurement.
The following measures are not considered

```
##      V1                                   V2
## 555 555          angle(tBodyAccMean,gravity)
## 556 556 angle(tBodyAccJerkMean),gravityMean)
## 557 557     angle(tBodyGyroMean,gravityMean)
## 558 558 angle(tBodyGyroJerkMean,gravityMean)
## 559 559                 angle(X,gravityMean)
## 560 560                 angle(Y,gravityMean)
## 561 561                 angle(Z,gravityMean)
```
We end with   81 variables inclusive of subject Id+activity 
## We use descriptive activity names to name the activities in the data set


## We appropriately labels the data set with descriptive variable names. 
For clarity due to the length of the names we left the uppercase characters. We report the code to be more explicit

```r
featureName=gsub("|\\()", "", make.names(features[features.left,2]))
colnames(tidy.data.mean.sd)=c("activity","subject",featureName)
write.csv(colnames(tidy.data.mean.sd),file="variables.csv")
```
## We finally create a second, independent tidy data set with the average of each variable for each activity and each subject. 
 

```
## [1] 180  81
```
 
