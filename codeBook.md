# Study

The data come from the paper 
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universita??? degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

As they say, the experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.  

Details are given in the paper.
We merged train and test set and added subject id and activity.
The original features are also reported in the data set. We took oonly the measures of meana or standard deviation. More precisely


```
##  [1] activity                        subject                        
##  [3] tBodyAcc.std...X                tBodyAcc.std...Y               
##  [5] tBodyAcc.std...Z                tGravityAcc.std...X            
##  [7] tGravityAcc.std...Y             tGravityAcc.std...Z            
##  [9] tBodyAccJerk.std...X            tBodyAccJerk.std...Y           
## [11] tBodyAccJerk.std...Z            tBodyGyro.std...X              
## [13] tBodyGyro.std...Y               tBodyGyro.std...Z              
## [15] tBodyGyroJerk.std...X           tBodyGyroJerk.std...Y          
## [17] tBodyGyroJerk.std...Z           tBodyAccMag.std..              
## [19] tGravityAccMag.std..            tBodyAccJerkMag.std..          
## [21] tBodyGyroMag.std..              tBodyGyroJerkMag.std..         
## [23] fBodyAcc.std...X                fBodyAcc.std...Y               
## [25] fBodyAcc.std...Z                fBodyAccJerk.std...X           
## [27] fBodyAccJerk.std...Y            fBodyAccJerk.std...Z           
## [29] fBodyGyro.std...X               fBodyGyro.std...Y              
## [31] fBodyGyro.std...Z               fBodyAccMag.std..              
## [33] fBodyBodyAccJerkMag.std..       fBodyBodyGyroMag.std..         
## [35] fBodyBodyGyroJerkMag.std..      tBodyAcc.mean...X              
## [37] tBodyAcc.mean...Y               tBodyAcc.mean...Z              
## [39] tGravityAcc.mean...X            tGravityAcc.mean...Y           
## [41] tGravityAcc.mean...Z            tBodyAccJerk.mean...X          
## [43] tBodyAccJerk.mean...Y           tBodyAccJerk.mean...Z          
## [45] tBodyGyro.mean...X              tBodyGyro.mean...Y             
## [47] tBodyGyro.mean...Z              tBodyGyroJerk.mean...X         
## [49] tBodyGyroJerk.mean...Y          tBodyGyroJerk.mean...Z         
## [51] tBodyAccMag.mean..              tGravityAccMag.mean..          
## [53] tBodyAccJerkMag.mean..          tBodyGyroMag.mean..            
## [55] tBodyGyroJerkMag.mean..         fBodyAcc.mean...X              
## [57] fBodyAcc.mean...Y               fBodyAcc.mean...Z              
## [59] fBodyAcc.meanFreq...X           fBodyAcc.meanFreq...Y          
## [61] fBodyAcc.meanFreq...Z           fBodyAccJerk.mean...X          
## [63] fBodyAccJerk.mean...Y           fBodyAccJerk.mean...Z          
## [65] fBodyAccJerk.meanFreq...X       fBodyAccJerk.meanFreq...Y      
## [67] fBodyAccJerk.meanFreq...Z       fBodyGyro.mean...X             
## [69] fBodyGyro.mean...Y              fBodyGyro.mean...Z             
## [71] fBodyGyro.meanFreq...X          fBodyGyro.meanFreq...Y         
## [73] fBodyGyro.meanFreq...Z          fBodyAccMag.mean..             
## [75] fBodyAccMag.meanFreq..          fBodyBodyAccJerkMag.mean..     
## [77] fBodyBodyAccJerkMag.meanFreq..  fBodyBodyGyroMag.mean..        
## [79] fBodyBodyGyroMag.meanFreq..     fBodyBodyGyroJerkMag.mean..    
## [81] fBodyBodyGyroJerkMag.meanFreq..
## 81 Levels: activity fBodyAcc.mean...X ... tGravityAccMag.std..
```
We averaged then these variables conditioned on subject and activity getting the final data.
