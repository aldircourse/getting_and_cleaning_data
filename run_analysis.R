##constant
outputDir<-"./tidyData"
outputFile <- file.path(outputDir, "step5_avg_by_subject_activity.txt")


##data files
message("processing data x")
xTrain <- read.table("./rawData/train/X_train.txt")
xTest <- read.table("./rawData/test/X_test.txt")

xJoin <- rbind(xTrain, xTest)
##remove temporal variables
rm(xTrain)
rm(xTest)

message("processing data y")
yTrain <- read.table("./rawData/train/y_train.txt")
yTest <- read.table("./rawData/test/y_test.txt")

yJoin<- rbind(yTrain, yTest)
##remove temporal variables
rm(yTrain)
rm(yTest)

##subjects
message("processing subjects")
subjectTrain <- read.table("./rawData/train/subject_train.txt")
subjectTest <- read.table("./rawData/test/subject_test.txt")

subjectJoin <- rbind(subjectTrain, subjectTest)
names(subjectJoin)<-c("subject")

rm(subjectTrain)
rm(subjectTest)

##features
message("cleaning data")
features <- read.table("./rawData/features.txt")

##search mean and std variables
meanStdInd <- grep("mean\\(\\)|std\\(\\)", features[, 2])
##clean names of variables
cleanNames<-gsub("\\(\\)", "", features[meanStdInd, 2])


##select only the required variables
xJoin<-xJoin[,meanStdInd]
rm(meanStdInd)


##assign variable names to columns
names(xJoin)<-cleanNames
rm(cleanNames)

##process activity data
activityData <- read.table("./rawData/activity_labels.txt")
##clean activity names
activityData[,2]<-gsub("_", "", activityData[, 2])
                       
##create a factor variable for activity value
##yJoin$activity<-factor(yJoin$V1, levels=activityData[,1])
##levels(yJoin$activity)<-activityData[,2]



tidyData<-cbind(subjectJoin, xJoin)
tidyData$activity<-yJoin$V1



##calculate mean group by subject and activity
meanAndStdAverages <- ddply(tidyData, .(activity,subject), colMeans)



meanAndStdAverages$activity<-factor(meanAndStdAverages$activity, levels=activityData[,1])
levels(meanAndStdAverages$activity)<-activityData[,2]

avgNames<-names(meanAndStdAverages)
avgNames<-gsub("^t","Avg_t",avgNames)
avgNames<-gsub("^f","Avg_f",avgNames)
names(meanAndStdAverages)<-avgNames


if(!file.exists(outputDir)) {
      dir.create(outputDir) 
}
write.table(meanAndStdAverages, outputFile, row.names=FALSE)
