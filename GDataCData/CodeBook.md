##Overview
This code book will describe the data used in this project, as well as the processing required to create the resulting tidy data set. 30 volunteers performed 6 different activities while wearing a smartphone. The smartphone captured various data about their movements.

##Study Information
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
##Data Set
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
##Analysis Variables 

activity -  The activity performed
subject_id -The ID of the subject.
tBodyAcc-mean()-XMean time for acceleration of body for X direction.
tBodyAcc-mean()-YMean time for acceleration of body for Y direction.
tBodyAcc-mean()-ZMean time for acceleration of body for Z direction.
tBodyAcc-std()-XStandard deviation of time for acceleration of body for X direction.
tBodyAcc-std()-YStandard deviation of time for acceleration of body for Y direction.tBodyAcc-std()-ZStandard deviation of time for acceleration of body for Z direction.
tGravityAcc-mean()-XMean time of acceleration of gravity for X direction.tGravityAcc-mean()-YMean time of acceleration of gravity for Y direction.tGravityAcc-mean()-ZMean time of acceleration of gravity for Z direction.tGravityAcc-std()-XStandard deviation of time of acceleration of gravity for X direction.tGravityAcc-std()-YStandard deviation of time of acceleration of gravity for Y direction.
tGravityAcc-std()-ZStandard deviation of time of acceleration of gravity for Z direction.tBodyAccJerk-mean()-XMean time of body acceleration jerk for X direction.
tBodyAccJerk-mean()-YMean time of body acceleration jerk for Y directiontBodyAccJerk-mean()-ZMean time of body acceleration jerk for Z directiontBodyAccJerk-std()-XStandard deviation of time of body acceleration jerk for X direction.tBodyAccJerk-std()-YStandard deviation of time of body acceleration jerk for Y direction.tBodyAccJerk-std()-ZStandard deviation of time of body acceleration jerk for Z direction.
tBodyGyro-mean()-XMean body gyroscope measurement for X direction.
tBodyGyro-mean()-YMean body gyroscope measurement for Y direction.tBodyGyro-mean()-ZMean body gyroscope measurement for Z direction.
tBodyGyro-std()-XStandard deviation of body gyroscope measurement for X direction.
tBodyGyro-std()-YStandard deviation of body gyroscope measurement for Y direction.tBodyGyro-std()-ZStandard deviation of body gyroscope measurement for Z direction.tBodyGyroJerk-mean()-XMean jerk signal of body for X direction.
tBodyGyroJerk-mean()-YMean jerk signal of body for Y direction.
tBodyGyroJerk-mean()-ZMean jerk signal of body for Z direction.tBodyGyroJerk-std()-XStandard deviation of jerk signal of body for X direction.
tBodyGyroJerk-std()-YStandard deviation of jerk signal of body for Y direction.
tBodyGyroJerk-std()-ZStandard deviation of jerk signal of body for Z direction.tBodyAccMag-mean()Mean magnitude of body AcctBodyAccMag-std()Standard deviation of magnitude of body AcctGravityAccMag-mean()Mean gravity acceleration magnitude.tGravityAccMag-std()Standard deviation of gravity acceleration magnitude.tBodyAccJerkMag-mean()Mean magnitude of body acceleration jerk.tBodyAccJerkMag-std()Standard deviation of magnitude of body acceleration jerk.
tBodyGyroMag-mean()Mean magnitude of body gyroscope measurement.
tBodyGyroMag-std()Standard deviation of magnitude of body gyroscope measurement.tBodyGyroJerkMag-mean()Mean magnitude of body gyroscope jerk measurement.
tBodyGyroJerkMag-std()Standard deviation of magnitude of body gyroscope jerk measurement.
fBodyAcc-mean()-XMean frequency of body acceleration for X direction.
fBodyAcc-mean()-YMean frequency of body acceleration for Y direction.fBodyAcc-mean()-ZMean frequency of body acceleration for Z direction.fBodyAcc-std()-XStandard deviation of frequency of body acceleration for X direction.
fBodyAcc-std()-YStandard deviation of frequency of body acceleration for Y direction.
fBodyAcc-std()-ZStandard deviation of frequency of body acceleration for Z direction.fBodyAccJerk-mean()-XMean frequency of body acceleration jerk for X direction.
fBodyAccJerk-mean()-YMean frequency of body acceleration jerk for Y direction.
fBodyAccJerk-mean()-ZMean frequency of body acceleration jerk for Z direction.fBodyAccJerk-std()-XStandard deviation frequency of body acceleration jerk for X direction.
fBodyAccJerk-std()-YStandard deviation frequency of body acceleration jerk for Y direction.
fBodyAccJerk-std()-ZStandard deviation frequency of body acceleration jerk for Z direction.
fBodyGyro-mean()-XMean frequency of body gyroscope measurement for X direction.fBodyGyro-mean()-YMean frequency of body gyroscope measurement for Y direction.
fBodyGyro-mean()-ZMean frequency of body gyroscope measurement for Z direction.
fBodyGyro-std()-XStandard deviation frequency of body gyroscope measurement for X direction.
fBodyGyro-std()-YStandard deviation frequency of body gyroscope measurement for Y direction.fBodyGyro-std()-ZStandard deviation frequency of body gyroscope measurement for Z direction.fBodyAccMag-mean()Mean frequency of body acceleration magnitude.
fBodyAccMag-std()Standard deviation of frequency of body acceleration magnitude.fBodyBodyAccJerkMag-mean()Mean frequency of body acceleration jerk magnitude.fBodyBodyAccJerkMag-std()Standard deviation of frequency of body acceleration jerk magnitude.
fBodyBodyGyroMag-mean()Mean frequency of magnitude of body gyroscope measurement.
fBodyBodyGyroMag-std()Standard deviation of frequency of magnitude of body gyroscope measurement.
fBodyBodyGyroJerkMag-mean()Mean frequency of magnitude of body gyroscope jerk measurement

##Processing steps

All of the relevant data files were read into data frames, appropriate column headers were added, and the training and test sets were combined into a single data set.
All feature columns were removed that did not contain the exact string "mean()" or "std()". This left 66 feature columns, plus the subject_id and activity columns.
The activity column was converted from a integer to a factor, using labels describing the activities.
A tidy data set was created containing the mean of each feature for each subject and each activity. Thus, subject #1 has 6 rows in the tidy data set (one row for each activity), and each row contains the mean value for each of the 66 features for that subject/activity combination. Since there are 30 subjects, there are a total of 180 rows.
The tidy data set was output to a txt file.

