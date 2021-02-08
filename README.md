# Getting-and-Cleaning-Project
Getting and Cleaning Course - Project

This script is for the course Getting and Cleaning Data project.

The data provided from the "Human Activity Recognition Using Smartphones Dataset Version 1.0" database, are processed 
in this script to obtain at the end an tidy data frame with the average for each variable, for each activity and 
for each subject.

This script follow the next steps:

1. Merges the training and the test sets to create one data set.
----------------------------------------------------------------------------------------------------------------------
The dataset includes the folowing files:
'features_info.txt': Shows information about the variables used on the feature vector.
'features.txt': List of all features.
'activity_labels.txt': Links the class labels with their activity name.
'train/X_train.txt': Training set.
'train/y_train.txt': Training labels.
'test/X_test.txt': Test set.
'test/y_test.txt': Test labels.
The following objects are used to create one data set:
classes : vector with de class of each variable in the files
xTrain and xTest : get the Train and Test data with the function read.table()
xTrainLabel and xTestLabel: get the activity codes
subjectTrain and subjectTest: get the subject ID
Activities and Subjects are aggregate to the Train and Test data with the cbind() function
harDF: merge Train an Test in one data set

2. Extracts only the measurements on the mean and standard deviation for each measurement. 
------------------------------------------------------------------------------------------------------------------
features : get features names from 'feature.txt'
meanstd: obtain features with mean() or std() in your description (grep() function)
Subset harDF data frame with the meanstd vector

3. Uses descriptive activity names to name the activities in the data set
------------------------------------------------------------------------------------------------------------------
activities : get activities names from 'activity_labels.txt' into vector
Create new column Activity with the name of the activity in each row. Indexed with the vector 'activities'

4. Appropriately labels the data set with descriptive variable names.
------------------------------------------------------------------------------------------------------------------
newnames : the names of the variables are treated to eliminate the parentheses, capitalize and describe 
           when the data is mean or standard deviation
With the colnames() function the column names are updated

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable 
for each activity and each subject.
------------------------------------------------------------------------------------------------------------------
harDFmelt : with the function mel() the data are molten and each variable forma column and each observation forms a row
hardDFmean : the hardDFmelt is grouped by variable,subject and activity to calculate the mean based on grouping
hardDFmean is the output final





