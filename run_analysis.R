#Your working directory must be the "UCI HAR Dataset" 

library(plyr)
feature<-read.table("features.txt", header=FALSE, col.names=c("snr", "name"))
activityIdColName<-"activity.id"
colSelector<-grepl("mean|std", feature$name)
activityLabels<-read.table("activity_labels.txt", header=FALSE, col.names=c(activityIdColName, "activity-name"), colClasses=c("integer", "character"))

#TRAIN
#Reading subjects
subjectTrain<-read.table("train\\subject_train.txt", header=FALSE, col.names=c("subject-id"), colClasses=c("integer"))
#Reading X
measurementsTrain<-read.table("train\\X_train.txt", header=FALSE, colClasses="numeric")
#Reading y
activitiesTrain<-read.table("train\\y_train.txt", header=FALSE, colClasses="integer", col.names=c(activityIdColName))
#Join activities with labels
joinedActivitiesTrain<-join(activitiesTrain, activityLabels, by=c(activityIdColName))
#creating tidy data from train
tidyTrain<-cbind(measurementsTrain[, colSelector], joinedActivitiesTrain$activity.name, subjectTrain)
#Add clear column names
colnames(tidyTrain)<-c(as.character(feature$name[colSelector]), "activity-name", "subject-id")

#TEST (same steps as for the TRAIN data set)
subjectTest<-read.table("test\\subject_test.txt", header=FALSE, col.names=c("subject-id"), colClasses=c("integer"))
measurementsTest<-read.table("test\\X_test.txt", header=FALSE, colClasses="numeric")
activitiesTest<-read.table("test\\y_test.txt", header=FALSE, colClasses="integer", col.names=c(activityIdColName))
joinedActivitiesTest<-join(activitiesTest, activityLabels, by=c(activityIdColName))
tidyTest<-cbind(measurementsTest[, colSelector], joinedActivitiesTest$activity.name, subjectTest)
colnames(tidyTest)<-c(as.character(feature$name[colSelector]), "activity-name", "subject-id")

#Append tidy data sets
tidy1<-rbind(tidyTrain, tidyTest)
#Export it to csv
write.table(tidy1, "tidy1.txt", row.names=FALSE, sep=" ")


#Second tidy data set
n<-dim(feature)[1]
allTrain<-cbind(joinedActivitiesTrain$activity.name,  subjectTrain, measurementsTrain )
colnames(allTrain)<-c("activity-name", "subject-id", as.character(feature$name))
allTest<-cbind(joinedActivitiesTest$activity.name,  subjectTest, measurementsTest )
colnames(allTest)<-c("activity-name", "subject-id", as.character(feature$name))
all<-rbind(allTrain, allTest)
#aggrate the measurements by activity and subject
tidy2<-aggregate(all[,c(3:(n+2))], by=list(all[["activity-name"]], all[["subject-id"]]), FUN=mean)
colnames(tidy2)<-c("Group: activity-name", "Group: subject-id", as.character(feature$name))
write.table(tidy2, "tidy2.txt", row.names=FALSE, sep=" ")