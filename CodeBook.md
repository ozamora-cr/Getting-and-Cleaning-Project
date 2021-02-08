Features
========
The features selected for this database come from Human Activity Recognition Using Smartphones Data Set, provided in the course Getting and Cleaning Data.
Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

The activities identified in the set are:
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

For this course will extracts only mean and standard deviation measurements from each measurement.
The final output is a set of tidy data with:

1. Subject: Integer, id of each subject
2. Activity: Text, name of each activity within the following values:
	WALKING
	WALKING_UPSTAIRS
	WALKING_DOWNSTAIRS
	SITTING
	STANDING
	LAYING
3. mean: Numeric, average of each variable for each activity and each subject
4. variable: Text, name of the 66 types of measurements variables:
	1. tBodyAcc-Mean of X
	2. tBodyAcc-Mean of Y
	3. tBodyAcc-Mean of Z
	4. tBodyAcc-Std Deviation of X
	5. tBodyAcc-Std Deviation of Y
	6. tBodyAcc-Std Deviation of Z
	7. tGravityAcc-Mean of X
	8. tGravityAcc-Mean of Y
	9. tGravityAcc-Mean of Z
	10. tGravityAcc-Std Deviation of X
	11. tGravityAcc-Std Deviation of Y
	12. tGravityAcc-Std Deviation of Z
	13. tBodyAccJerk-Mean of X
	14. tBodyAccJerk-Mean of Y
	15. tBodyAccJerk-Mean of Z
	16. tBodyAccJerk-Std Deviation of X
	17. tBodyAccJerk-Std Deviation of Y
	18. tBodyAccJerk-Std Deviation of Z
	19. tBodyGyro-Mean of X
	20. tBodyGyro-Mean of Y
	21. tBodyGyro-Mean of Z
	22. tBodyGyro-Std Deviation of X
	23. tBodyGyro-Std Deviation of Y
	24. tBodyGyro-Std Deviation of Z
	25. tBodyGyroJerk-Mean of X
	26. tBodyGyroJerk-Mean of Y
	27. tBodyGyroJerk-Mean of Z
	28. tBodyGyroJerk-Std Deviation of X
	29. tBodyGyroJerk-Std Deviation of Y
	30. tBodyGyroJerk-Std Deviation of Z
	31. tBodyAccMag-Mean
	32. tBodyAccMag-Std Deviation
	33. tGravityAccMag-Mean
	34. tGravityAccMag-Std Deviation
	35. tBodyAccJerkMag-Mean
	36. tBodyAccJerkMag-Std Deviation
	37. tBodyGyroMag-Mean
	38. tBodyGyroMag-Std Deviation
	39. tBodyGyroJerkMag-Mean
	40. tBodyGyroJerkMag-Std Deviation
	41. fBodyAcc-Mean of X
	42. fBodyAcc-Mean of Y
	43. fBodyAcc-Mean of Z
	44. fBodyAcc-Std Deviation of X
	45. fBodyAcc-Std Deviation of Y
	46. fBodyAcc-Std Deviation of Z
	47. fBodyAccJerk-Mean of X
	48. fBodyAccJerk-Mean of Y
	49. fBodyAccJerk-Mean of Z
	50. fBodyAccJerk-Std Deviation of X
	51. fBodyAccJerk-Std Deviation of Y
	52. fBodyAccJerk-Std Deviation of Z
	53. fBodyGyro-Mean of X
	54. fBodyGyro-Mean of Y
	55. fBodyGyro-Mean of Z
	56. fBodyGyro-Std Deviation of X
	57. fBodyGyro-Std Deviation of Y
	58. fBodyGyro-Std Deviation of Z
	59. fBodyAccMag-Mean
	60. fBodyAccMag-Std Deviation
	61. fBodyBodyAccJerkMag-Mean
	62. fBodyBodyAccJerkMag-Std Deviation
	63. fBodyBodyGyroMag-Mean
	64. fBodyBodyGyroMag-Std Deviation
	65. fBodyBodyGyroJerkMag-Mean
	66. fBodyBodyGyroJerkMag-Std Deviation
