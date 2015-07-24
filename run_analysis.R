library(plyr)
library(dplyr)

#Read each of the subject files into its own dataframe
#Read with no headers since the headers in each dataset could be different.
subject.train<-read.csv("UCI HAR Dataset/train/subject_train.txt", header = FALSE)
subject.test<- read.csv("UCI HAR Dataset/test/subject_test.txt", header = FALSE)

## Add column names to the dataframes
names(subject.test)<-c("SubjectID")
names(subject.train)<-c("SubjectID")

## Read each of the activity files. 
## Read with no headers since the headers in each dataset could be different.
activity.train<-read.csv("UCI HAR Dataset/train/y_train.txt", header = FALSE)
activity.test<-read.csv("UCI HAR Dataset/test/y_test.txt", header = FALSE)

## Add column names to the dataframes
names(activity.test)<-c("ActivityID")
names(activity.train)<-c("ActivityID")


## Read in results label
features<-read.table("UCI HAR Dataset/features.txt")
names(features)<-c("FeatureID", "FeatureName")


##Create a vector of labels for the data
featurecols<-character()
for (i in features$FeatureName)
  featurecols<-c(featurecols, i)

## Read each of the results files. 
## Read with the features columns names
results.train<-read.table("UCI HAR Dataset/train/X_train.txt", col.names = featurecols)
results.test<-read.table("UCI HAR Dataset/test/X_test.txt", col.names = featurecols)

## Read activity labels
activity_labels<-read.table("UCI HAR Dataset/activity_labels.txt")
names(activity_labels)<-c("ActivityID", "ActivityName")

#Combine the subject and activity datasets into one dataset of two columns
data.train<-cbind(subject.train, activity.train)
data.train<-cbind(data.train, results.train)

#Combine the subject and activity datasets into one dataset of two columns
data.test<-cbind(subject.test, activity.test)
data.test<-cbind(data.test, results.test)

#Combine all into one dataset
data.all<-rbind(data.test, data.train)

#Update activity names
mergedata=merge(data.all, activity_labels, x.by="ActivityID", y.by="ActivityID", all=TRUE)
#Remove any "." from column names
names(mergedata)<-gsub(x=names(mergedata), pattern="\\.", replacement="")

#Get subset of data for subject, activity and std/mean columns
data.filter<-cbind(mergedata["SubjectID"])
data.filter<-cbind(data.filter, mergedata["ActivityID"])

#Sort out columns with the name "mean"
meancols<-(grep("mean()", colnames(mergedata)))
for (i in meancols)
   data.filter<-cbind(data.filter, (mergedata[i]))

#Sort out columns with the name "std"
stdcols<-(grep("std()", colnames(mergedata)))
for (i in stdcols)
   data.filter<-cbind(data.filter, (mergedata[i]))

#Create matrix with all averages
data.output<-aggregate(data.filter, by=list(data.filter$SubjectID, data.filter$ActivityID), FUN=mean)

#Add activity name column
mergedata=merge(data.output, activity_labels, x.by="ActivityID", y.by="ActivityID", all=TRUE)

#Remove unwanted columns
mergedata$Group.1 <- NULL
mergedata$Group.2 <- NULL
mergedata$ActivityID <- NULL

#Write output file
write.table(mergedata, file="DataCleanResults.txt", row.names=FALSE)