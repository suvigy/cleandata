Resulting tidy dataset:
Tidy1.txt
---------
Merged training and test data set containing also the activity name and subject. It only contains the mean and the std variables

Columns:
=======

"tBodyAcc-mean()-X" - See features_info.txt in the original dataset
"tBodyAcc-mean()-Y" - See features_info.txt in the original dataset
"tBodyAcc-mean()-Z" - See features_info.txt in the original dataset
"tBodyAcc-std()-X" - See features_info.txt in the original dataset
"tBodyAcc-std()-Y" - See features_info.txt in the original dataset
"tBodyAcc-std()-Z" - See features_info.txt in the original dataset
"tGravityAcc-mean()-X" - See features_info.txt in the original dataset
"tGravityAcc-mean()-Y" - See features_info.txt in the original dataset
"tGravityAcc-mean()-Z" - See features_info.txt in the original dataset
"tGravityAcc-std()-X" - See features_info.txt in the original dataset
"tGravityAcc-std()-Y" - See features_info.txt in the original dataset
"tGravityAcc-std()-Z"  - See features_info.txt in the original dataset
"tBodyAccJerk-mean()-X"  - See features_info.txt in the original dataset
"tBodyAccJerk-mean()-Y"  - See features_info.txt in the original dataset
"tBodyAccJerk-mean()-Z"  - See features_info.txt in the original dataset
"tBodyAccJerk-std()-X" - See features_info.txt in the original dataset
"tBodyAccJerk-std()-Y" - See features_info.txt in the original dataset
"tBodyAccJerk-std()-Z" - See features_info.txt in the original dataset
"tBodyGyro-mean()-X" - See features_info.txt in the original dataset
"tBodyGyro-mean()-Y" - See features_info.txt in the original dataset
"tBodyGyro-mean()-Z" - See features_info.txt in the original dataset
"tBodyGyro-std()-X" - See features_info.txt in the original dataset
"tBodyGyro-std()-Y" - See features_info.txt in the original dataset
"tBodyGyro-std()-Z" - See features_info.txt in the original dataset
"tBodyGyroJerk-mean()-X" - See features_info.txt in the original dataset
"tBodyGyroJerk-mean()-Y" - See features_info.txt in the original dataset
"tBodyGyroJerk-mean()-Z" - See features_info.txt in the original dataset
"tBodyGyroJerk-std()-X" - See features_info.txt in the original dataset
"tBodyGyroJerk-std()-Y" - See features_info.txt in the original dataset
"tBodyGyroJerk-std()-Z" - See features_info.txt in the original dataset
"tBodyAccMag-mean()" - See features_info.txt in the original dataset
"tBodyAccMag-std()" - See features_info.txt in the original dataset
"tGravityAccMag-mean()" - See features_info.txt in the original dataset 
"tGravityAccMag-std()" - See features_info.txt in the original dataset
"tBodyAccJerkMag-mean()" - See features_info.txt in the original dataset
"tBodyAccJerkMag-std()" - See features_info.txt in the original dataset
"tBodyGyroMag-mean()" - See features_info.txt in the original dataset
"tBodyGyroMag-std()" - See features_info.txt in the original dataset
"tBodyGyroJerkMag-mean()" - See features_info.txt in the original dataset
"tBodyGyroJerkMag-std()" - See features_info.txt in the original dataset
"fBodyAcc-mean()-X" - See features_info.txt in the original dataset
"fBodyAcc-mean()-Y" - See features_info.txt in the original dataset 
"fBodyAcc-mean()-Z" - See features_info.txt in the original dataset
"fBodyAcc-std()-X" - See features_info.txt in the original dataset
"fBodyAcc-std()-Y" - See features_info.txt in the original dataset
"fBodyAcc-std()-Z" - See features_info.txt in the original dataset
"fBodyAcc-meanFreq()-X" - See features_info.txt in the original dataset
"fBodyAcc-meanFreq()-Y" - See features_info.txt in the original dataset
"fBodyAcc-meanFreq()-Z" - See features_info.txt in the original dataset
"fBodyAccJerk-mean()-X" - See features_info.txt in the original dataset
"fBodyAccJerk-mean()-Y" - See features_info.txt in the original dataset
"fBodyAccJerk-mean()-Z" - See features_info.txt in the original dataset
"fBodyAccJerk-std()-X" - See features_info.txt in the original dataset
"fBodyAccJerk-std()-Y" - See features_info.txt in the original dataset
"fBodyAccJerk-std()-Z" - See features_info.txt in the original dataset
"fBodyAccJerk-meanFreq()-X" - See features_info.txt in the original dataset
"fBodyAccJerk-meanFreq()-Y" - See features_info.txt in the original dataset
"fBodyAccJerk-meanFreq()-Z" - See features_info.txt in the original dataset
"fBodyGyro-mean()-X" - See features_info.txt in the original dataset
"fBodyGyro-mean()-Y" - See features_info.txt in the original dataset
"fBodyGyro-mean()-Z" - See features_info.txt in the original dataset
"fBodyGyro-std()-X" - See features_info.txt in the original dataset
"fBodyGyro-std()-Y" - See features_info.txt in the original dataset
"fBodyGyro-std()-Z" - See features_info.txt in the original dataset
"fBodyGyro-meanFreq()-X" - See features_info.txt in the original dataset
"fBodyGyro-meanFreq()-Y" - See features_info.txt in the original dataset
"fBodyGyro-meanFreq()-Z" - See features_info.txt in the original dataset
"fBodyAccMag-mean()" - See features_info.txt in the original dataset
"fBodyAccMag-std()" - See features_info.txt in the original dataset
"fBodyAccMag-meanFreq()" - See features_info.txt in the original dataset
"fBodyBodyAccJerkMag-mean()" - See features_info.txt in the original dataset
"fBodyBodyAccJerkMag-std()" - See features_info.txt in the original dataset
"fBodyBodyAccJerkMag-meanFreq()" - See features_info.txt in the original dataset
"fBodyBodyGyroMag-mean()" - See features_info.txt in the original dataset
"fBodyBodyGyroMag-std()" - See features_info.txt in the original dataset
"fBodyBodyGyroMag-meanFreq()" - See features_info.txt in the original dataset
"fBodyBodyGyroJerkMag-mean()" - See features_info.txt in the original dataset
"fBodyBodyGyroJerkMag-std()" - See features_info.txt in the original dataset
"fBodyBodyGyroJerkMag-meanFreq()" - See features_info.txt in the original dataset
"activity-name" - activity name (and not the id)
"subject-id" - subject id (1-30)

Tidy2.txt
---------
Merged train and test data set. Avarage of variables (described in feature_info.txt) grouped by activity and subject.

Columns:
=======
"Group: activity-name" - activity name
"Group: subject-id" - subject
all the columns from the features.txt: the values are the avarage for train and test data..


Script
------
 For the script variables see the docs at variables in run_analisys.R
 

 

