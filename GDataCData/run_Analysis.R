  ## Getting and Cleaning Data Project
    
  #read the activity file
  activity_labels <- read.table("./GDataCData/activity_labels.txt")
  
  #read the features file
  features <- read.table("./GDataCData/features.txt")
  
  
  #read all of the test files (test Subject, X_Test, y_Test)  
  subjTest <- read.table("./GDataCData/test/subject_test.txt",stringsAsFactor=FALSE)
  XTest<-read.table("./GDataCData/test/X_test.txt",stringsAsFactor=FALSE)
  YTest<-read.table("./GDataCData/test/y_test.txt",stringsAsFactor=FALSE)
  
  #read all of the train  files (train_Subject, X_train, y_train)  
  subjTrain <- read.table("./GDataCData/train/subject_train.txt",stringsAsFactor=FALSE)
  XTrain<-read.table("./GDataCData/train/X_train.txt",stringsAsFactor=FALSE)
  YTrain<-read.table("./GDataCData/train/y_train.txt",stringsAsFactor=FALSE)
  
  
  #assign column name to  subject data
  names(subjTest)<-"subject_id"  
  names(subjTrain)<-"subject_id"
  
  #add feature/column names to measurement data  
  names(XTest)<-features$V2  
  names(XTrain)<-features$V2  
  
  #add column names to activity data
  names(YTest)<-"activity"  
  names(YTrain)<-"activity" 
  
  #associate descriptive labels/values to activity coloumn 
  yTestWithLabels <- data.frame(activity = factor(YTest$activity, labels = activity_labels$V2))
  YTrainWithLabels <- data.frame(activity = factor(YTrain$activity, labels = activity_labels$V2))
  
  #Combine all test data
  testData<-cbind(subjTest,XTest,yTestWithLabels)   
  
  #Combine all train data
  trainData<-cbind(subjTrain,XTrain,YTrainWithLabels)
  
  #Combine test and train data
  all_data<-rbind(testData,trainData)  
  
  # determine which columns contain "mean()" or "std()"
  meanstdcols <- grepl("mean\\(\\)", names(all_data)) |grepl("std\\(\\)", names(all_data))  
  
  #extract only the measurements on the mean and standard deviation for each measurement  
  filtered_data <- all_data[, meanstdcols]
  
  #add activity and subject_id cols
  filtered_data$activity<-all_data$activity
  filtered_data$subject_id<-all_data$subject_id
  
  # write Tidy Data 
  write.table(filtered_data, file="./GDataCData/tidyData.txt", row.names=FALSE)
  
  #create a second, independent tidy data set with average of each variable for each activity and each subject.
  tidyDataMelt <- melt(filtered_data, id=c("activity", "subject_id"))
  tidyDataMean <- dcast(tidyDataMelt, activity + subject_id ~ variable, mean)
  
  # Write tidy mean data 
  write.table(tidyDataMean, file="./GDataCData/tidyAverageData.txt", row.names=FALSE)
  

