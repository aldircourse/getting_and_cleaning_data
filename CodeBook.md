CodeBook 
=================================================
Project for course project of Getting and Cleaning Data Course

Study design
=================================================
raw data used was obtained from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Step to obtain tidy dataset:
	1. read x data files from train and test folders
	2. Join x data from train and test
	3. read y data files from train and test folders
	4. Join y data from train and test
	5. read subject data files from train and test folders
	6. Join subject data from train and test
	7. read feature names file
	8. subset required feature names and clean it
	9. subset the required features from joined x data
	10. read activity names file
	11. clean activity names removing "_"
	12. create a new structure binding subject, x and y data
	13. rename y data as activity
	14. create a new data frame applying function colMeans to data 
	groouped by activity and subject
	15. transform activity variable into a factor assigning levels as activity names
	16. rename Acc and Giro variables to indicate that are Average values
	17. write output file


CodeBook
=================================================
subject							:numeric. index of subject
Avg_tBodyAcc-mean-X				:numeric. in standard gravity units 'g'
Avg_tBodyAcc-mean-Y				:numeric. in standard gravity units 'g'
Avg_tBodyAcc-mean-Z				:numeric. in standard gravity units 'g'
Avg_tBodyAcc-std-X				:numeric. in standard gravity units 'g'
Avg_tBodyAcc-std-Y				:numeric. in standard gravity units 'g'
Avg_tBodyAcc-std-Z				:numeric. in standard gravity units 'g'
Avg_tGravityAcc-mean-X          :numeric. in standard gravity units 'g'
Avg_tGravityAcc-mean-Y          :numeric. in standard gravity units 'g'
Avg_tGravityAcc-mean-Z          :numeric. in standard gravity units 'g'
Avg_tGravityAcc-std-X           :numeric. in standard gravity units 'g'
Avg_tGravityAcc-std-Y           :numeric. in standard gravity units 'g'
Avg_tGravityAcc-std-Z           :numeric. in standard gravity units 'g'
Avg_tBodyAccJerk-mean-X         :numeric. in standard gravity units 'g'
Avg_tBodyAccJerk-mean-Y         :numeric. in standard gravity units 'g'
Avg_tBodyAccJerk-mean-Z         :numeric. in standard gravity units 'g'
Avg_tBodyAccJerk-std-X          :numeric. in standard gravity units 'g'
Avg_tBodyAccJerk-std-Y          :numeric. in standard gravity units 'g'
Avg_tBodyAccJerk-std-Z          :numeric. in standard gravity units 'g'
Avg_tBodyGyro-mean-X            :numeric. The units are radians/second.
Avg_tBodyGyro-mean-Y            :numeric. The units are radians/second.
Avg_tBodyGyro-mean-Z            :numeric. The units are radians/second.
Avg_tBodyGyro-std-X             :numeric. The units are radians/second.
Avg_tBodyGyro-std-Y             :numeric. The units are radians/second.
Avg_tBodyGyro-std-Z             :numeric. The units are radians/second.
Avg_tBodyGyroJerk-mean-X        :numeric. The units are radians/second.
Avg_tBodyGyroJerk-mean-Y        :numeric. The units are radians/second.
Avg_tBodyGyroJerk-mean-Z        :numeric. The units are radians/second.
Avg_tBodyGyroJerk-std-X         :numeric. The units are radians/second.
Avg_tBodyGyroJerk-std-Y         :numeric. The units are radians/second.
Avg_tBodyGyroJerk-std-Z         :numeric. The units are radians/second.
Avg_tBodyAccMag-mean            :numeric. in standard gravity units 'g'
Avg_tBodyAccMag-std             :numeric. in standard gravity units 'g'
Avg_tGravityAccMag-mean         :numeric. in standard gravity units 'g'
Avg_tGravityAccMag-std         	:numeric. in standard gravity units 'g'
Avg_tBodyAccJerkMag-mean        :numeric. in standard gravity units 'g'
Avg_tBodyAccJerkMag-std         :numeric. in standard gravity units 'g'
Avg_tBodyGyroMag-mean           :numeric. The units are radians/second.
Avg_tBodyGyroMag-std            :numeric. The units are radians/second.
Avg_tBodyGyroJerkMag-mean       :numeric. The units are radians/second.
Avg_tBodyGyroJerkMag-std        :numeric. The units are radians/second.
Avg_fBodyAcc-mean-X             :numeric. in standard gravity units 'g'
Avg_fBodyAcc-mean-Y             :numeric. in standard gravity units 'g'
Avg_fBodyAcc-mean-Z             :numeric. in standard gravity units 'g'
Avg_fBodyAcc-std-X              :numeric. in standard gravity units 'g'
Avg_fBodyAcc-std-Y              :numeric. in standard gravity units 'g'
Avg_fBodyAcc-std-Z              :numeric. in standard gravity units 'g'
Avg_fBodyAccJerk-mean-X         :numeric. in standard gravity units 'g'
Avg_fBodyAccJerk-mean-Y         :numeric. in standard gravity units 'g'
Avg_fBodyAccJerk-mean-Z         :numeric. in standard gravity units 'g'
Avg_fBodyAccJerk-std-X          :numeric. in standard gravity units 'g'
Avg_fBodyAccJerk-std-Y          :numeric. in standard gravity units 'g'
Avg_fBodyAccJerk-std-Z          :numeric. in standard gravity units 'g'
Avg_fBodyGyro-mean-X            :numeric. The units are radians/second.
Avg_fBodyGyro-mean-Y            :numeric. The units are radians/second.
Avg_fBodyGyro-mean-Z            :numeric. The units are radians/second.
Avg_fBodyGyro-std-X             :numeric. The units are radians/second.
Avg_fBodyGyro-std-Y             :numeric. The units are radians/second.
Avg_fBodyGyro-std-Z             :numeric. The units are radians/second.
Avg_fBodyAccMag-mean			:numeric. in standard gravity units 'g'
Avg_fBodyAccMag-std				:numeric. in standard gravity units 'g'
Avg_fBodyBodyAccJerkMag-mean	:numeric. in standard gravity units 'g'
Avg_fBodyBodyAccJerkMag-std		:numeric. in standard gravity units 'g'
Avg_fBodyBodyGyroMag-mean		:numeric. The units are radians/second.
Avg_fBodyBodyGyroMag-std		:numeric. The units are radians/second.
Avg_fBodyBodyGyroJerkMag-mean	:numeric. The units are radians/second.
Avg_fBodyBodyGyroJerkMag-std	:numeric. The units are radians/second.
activity					:factor. Type of activity
