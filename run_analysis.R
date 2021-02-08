# ----------------------------------------------------------------------
# 1. Merges the training an the test sets to create one data set
# ----------------------------------------------------------------------

# class of variables in the data sets
classes <- rep("numeric",561)

# Train data set
xTrain <- read.table("./data/X_train.txt",colClasses =classes)
xTrainLabel <- read.table("./data/Y_train.txt",colClasses ="integer",col.names="ActivityCode")
subjectTrain <- read.table("./data/subject_train.txt",colClasses ="integer",col.names="Subject")
# bind the Train data set with yours activities and subjects
xTrain <- cbind(xTrain,xTrainLabel,subjectTrain)

# Test data set
xTest <-  read.table("./data/X_test.txt",colClasses =classes)
xTestLabel <- read.table("./data/Y_test.txt",colClasses ="integer",col.names="ActivityCode")
subjectTest <- read.table("./data/subject_test.txt",colClasses ="integer",col.names="Subject")
# bind the Test data set with yours activities and subjects
xTest <- cbind(xTest,xTestLabel,subjectTest)

# 70% of the volunteers was selected for generating the training data 
# and 30% the test data. 
harDF <- rbind(xTrain,xTest)

# ----------------------------------------------------------------------
# 2. Extracts only the measurements on the mean and standar deviation
#    of each measurement
# ----------------------------------------------------------------------
features <- read.table("./data/features.txt")
# only features that contain "mean()" or "std()"
meanstd <- grep("mean\\(\\)|std\\(\\)",features$V2)
harDF <- harDF[,c(meanstd,562,563)] # including columns of activities and subjects

# ----------------------------------------------------------------------
# 3. Use descriptive activity names to name the activities in data set
# ----------------------------------------------------------------------
activities <- read.table("./data/activity_labels.txt")
harDF$Activity <- activities[harDF$ActivityCode,2] # new column with the names
harDF$ActivityCode <- NULL # drop column with Activity Code

# ----------------------------------------------------------------------
# 4. Appropriately labels the data set with descriptive variable names
# ----------------------------------------------------------------------
newnames <- features[meanstd,"V2"]
newnames <- sub("\\(\\)","",newnames) # eliminate parentheses
newnames <- sub("mean","Mean",newnames) 
newnames <- sub("std","Std Deviation",newnames) 
newnames <- sub("Mean-","Mean of ",newnames) 
newnames <- sub("Std Deviation-","Std Deviation of ",newnames) 
# change column names
colnames(harDF) <- c(newnames,"Subject","Activity")

# ----------------------------------------------------------------------
# 5. From the data set in step 4, creates a second, independent 
#    tidy data set with the average of each variable for each activity
#    and each subject
# ----------------------------------------------------------------------
# tidy data
library(dplyr)
library(reshape2)
harDFmelt <- melt(harDF,id=c("Subject","Activity"))
harDFmean <- harDFmelt %>% group_by(variable,Subject,Activity) %>% summarize(mean=mean(value))

head(harDFmean)

