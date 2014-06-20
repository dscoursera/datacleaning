

**Code Book (Data Dictionary) – tidy data set (tidydata.txt)**

There are 180 rows (records) and 68 columns (variables). This data set is a tidy data 
derived from Human Activity Recognition on Smartphones data: 
[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones]
(http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). 

The original data set had 10,299 records and 563 columns. The preparation of reduced data 
set is explained in **README.md** .

There are 66 numeric variables (features) representing measurements for six activities on 
30 human subjects. The features were normalized and bounded within [-1,1] in the original 
data set so they are unit-less numbers.

The variable activity is a factor and the variable subjecteid is numeric (1 to 30).

**The six activities are:**

1 WALKING

2 WALKING\_UPSTAIRS

3 WALKING\_DOWNSTAIRS

4 SITTING

5 STANDING

6 LAYING

**The 66 features are:**

tBodyAccmeanX

tBodyAccmeanY

tBodyAccmeanZ

tGravityAccmeanX

tGravityAccmeanY

tGravityAccmeanZ

tBodyAccJerkmeanX

tBodyAccJerkmeanY

tBodyAccJerkmeanZ

tBodyGyromeanX

tBodyGyromeanY

tBodyGyromeanZ

tBodyGyroJerkmeanX

tBodyGyroJerkmeanY

tBodyGyroJerkmeanZ

tBodyAccMagmean

tGravityAccMagmean

tBodyAccJerkMagmean

tBodyGyroMagmean

tBodyGyroJerkMagmean

fBodyAccmeanX

fBodyAccmeanY

fBodyAccmeanZ

fBodyAccJerkmeanX

fBodyAccJerkmeanY

fBodyAccJerkmeanZ

fBodyGyromeanX

fBodyGyromeanY

fBodyGyromeanZ

fBodyAccMagmean

fBodyBodyAccJerkMagmean

fBodyBodyGyroMagmean

fBodyBodyGyroJerkMagmean

tBodyAccstdX

tBodyAccstdY

tBodyAccstdZ

tGravityAccstdX

tGravityAccstdY

tGravityAccstdZ

tBodyAccJerkstdX

tBodyAccJerkstdY

tBodyAccJerkstdZ

tBodyGyrostdX

tBodyGyrostdY

tBodyGyrostdZ

tBodyGyroJerkstdX

tBodyGyroJerkstdY

tBodyGyroJerkstdZ

tBodyAccMagstd

tGravityAccMagstd

tBodyAccJerkMagstd

tBodyGyroMagstd

tBodyGyroJerkMagstd

fBodyAccstdX

fBodyAccstdY

fBodyAccstdZ

fBodyAccJerkstdX

fBodyAccJerkstdY

fBodyAccJerkstdZ

fBodyGyrostdX

fBodyGyrostdY

fBodyGyrostdZ

fBodyAccMagstd

fBodyBodyAccJerkMagstd

fBodyBodyGyroMagstd

fBodyBodyGyroJerkMagstd

The prefix 't' denotes time and the prefix 'f' denotes frequency. The suffix X, Y, or Z 
denotes 3-axial signals in the X, Y and Z directions.

The Acc indicates that the feature came from the accelerometer. Gyro indicates that the 
feature came from from the gyroscope.

BodyAcc means it is a body acceleration signal and GravityAcc means it is a gravity 
acceleration signal.

BodyAccJerk and BodyGyroJerk were derived from body linear acceleration and angular velocity.

The mean and std in the variable names indicate that only the mean and the standard 
deviation values of these variables were retained in tidy data set to get 66 variables.

