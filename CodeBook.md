## Data source

The data represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Files

The following files are included:

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent.

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis.

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration.

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.

## Data Transformation

The data has been downloaded, unzipped and stored locally. This is done with function unzip.

These steps are included as code description in program run_analysis.R.

### Step 1

First, we read the data from the data files, from the test folder, X_text.txt, y_text.txt, subject_test.txt, and from the train folder, X_train.txt, y_train.txt and subject_train.txt, and from the main folder, features.txt and activity_labels.txt.

### Step 2

We extract the mean and standard deviation.

### Step 3

We assign descriptive labels and names.

### Step 4

We then merge the two datasets, test and train, into one dataset.

### Step 5

Finally, we create a new file with the desired results, an independent tidy data set with the average of each variable for each activity and each subject. It's called UCI_tidy_data.txt.

## Variables
These signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

#### The set of variables that were estimated from these signals are:
- mean(): Mean value
- std(): Standard deviation
- meanFreq(): Weighted average of the frequency components to obtain a mean frequency

#### Selected variable name and description:
- subject: The integer id of one of the 30 subjects, ranging from 1 to 30.
- activity: The type of activity the subject was engaged in. One of WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
- subject-activity-mean-tBodyAcc-mean()-X: The mean of all time window values for each combination of subject and activity for the variable tBodyAcc-mean()-X.
- subject-activity-mean-tBodyAcc-mean()-Y: The mean of all time window values for each combination of subject and activity for the variable tBodyAcc-mean()-Y.
- subject-activity-mean-tBodyAcc-mean()-Z: The mean of all time window values for each combination of subject and activity for the variable tBodyAcc-mean()-Z.
- subject-activity-mean-tBodyAcc-std()-X: The mean of all time window values for each combination of subject and activity for the variable tBodyAcc-std()-X.
- subject-activity-mean-tBodyAcc-std()-Y: The mean of all time window values for each combination of subject and activity for the variable tBodyAcc-std()-Y.
- subject-activity-mean-tBodyAcc-std()-Z: The mean of all time window values for each combination of subject and activity for the variable tBodyAcc-std()-Z.
- subject-activity-mean-tGravityAcc-mean()-X: The mean of all time window values for each combination of subject and activity for the variable tGravityAcc-mean()-X.
- subject-activity-mean-tGravityAcc-mean()-Y: The mean of all time window values for each combination of subject and activity for the variable tGravityAcc-mean()-Y.
- subject-activity-mean-tGravityAcc-mean()-Z: The mean of all time window values for each combination of subject and activity for the variable tGravityAcc-mean()-Z.
- subject-activity-mean-tGravityAcc-std()-X: The mean of all time window values for each combination of subject and activity for the variable tGravityAcc-std()-X.
- subject-activity-mean-tGravityAcc-std()-Y: The mean of all time window values for each combination of subject and activity for the variable tGravityAcc-std()-Y.
- subject-activity-mean-tGravityAcc-std()-Z: The mean of all time window values for each combination of subject and activity for the variable tGravityAcc-std()-Z.
- subject-activity-mean-tBodyAccJerk-mean()-X: The mean of all time window values for each combination of subject and activity for the variable tBodyAccJerk-mean()-X.
- subject-activity-mean-tBodyAccJerk-mean()-Y: The mean of all time window values for each combination of subject and activity for the variable tBodyAccJerk-mean()-Y.
- subject-activity-mean-tBodyAccJerk-mean()-Z: The mean of all time window values for each combination of subject and activity for the variable tBodyAccJerk-mean()-Z.
- subject-activity-mean-tBodyAccJerk-std()-X: The mean of all time window values for each combination of subject and activity for the variable tBodyAccJerk-std()-X.
- subject-activity-mean-tBodyAccJerk-std()-Y: The mean of all time window values for each combination of subject and activity for the variable tBodyAccJerk-std()-Y.
- subject-activity-mean-tBodyAccJerk-std()-Z: The mean of all time window values for each combination of subject and activity for the variable tBodyAccJerk-std()-Z.
- subject-activity-mean-tBodyGyro-mean()-X: The mean of all time window values for each combination of subject and activity for the variable tBodyGyro-mean()-X.
- subject-activity-mean-tBodyGyro-mean()-Y: The mean of all time window values for each combination of subject and activity for the variable tBodyGyro-mean()-Y.
- subject-activity-mean-tBodyGyro-mean()-Z: The mean of all time window values for each combination of subject and activity for the variable tBodyGyro-mean()-Z.
- subject-activity-mean-tBodyGyro-std()-X: The mean of all time window values for each combination of subject and activity for the variable tBodyGyro-std()-X.
- subject-activity-mean-tBodyGyro-std()-Y: The mean of all time window values for each combination of subject and activity for the variable tBodyGyro-std()-Y.
- subject-activity-mean-tBodyGyro-std()-Z: The mean of all time window values for each combination of subject and activity for the variable tBodyGyro-std()-Z.
- subject-activity-mean-tBodyGyroJerk-mean()-X: The mean of all time window values for each combination of subject and activity for the variable tBodyGyroJerk-mean()-X.
- subject-activity-mean-tBodyGyroJerk-mean()-Y: The mean of all time window values for each combination of subject and activity for the variable tBodyGyroJerk-mean()-Y.
- subject-activity-mean-tBodyGyroJerk-mean()-Z: The mean of all time window values for each combination of subject and activity for the variable tBodyGyroJerk-mean()-Z.
- subject-activity-mean-tBodyGyroJerk-std()-X: The mean of all time window values for each combination of subject and activity for the variable tBodyGyroJerk-std()-X.
- subject-activity-mean-tBodyGyroJerk-std()-Y: The mean of all time window values for each combination of subject and activity for the variable tBodyGyroJerk-std()-Y.
- subject-activity-mean-tBodyGyroJerk-std()-Z: The mean of all time window values for each combination of subject and activity for the variable tBodyGyroJerk-std()-Z.
- subject-activity-mean-tBodyAccMag-mean(): The mean of all time window values for each combination of subject and activity for the variable tBodyAccMag-mean().
- subject-activity-mean-tBodyAccMag-std(): The mean of all time window values for each combination of subject and activity for the variable tBodyAccMag-std().
- subject-activity-mean-tGravityAccMag-mean(): The mean of all time window values for each combination of subject and activity for the variable tGravityAccMag-mean().
- subject-activity-mean-tGravityAccMag-std(): The mean of all time window values for each combination of subject and activity for the variable tGravityAccMag-std().
- subject-activity-mean-tBodyAccJerkMag-mean(): The mean of all time window values for each combination of subject and activity for the variable tBodyAccJerkMag-mean().
- subject-activity-mean-tBodyAccJerkMag-std(): The mean of all time window values for each combination of subject and activity for the variable tBodyAccJerkMag-std().
- subject-activity-mean-tBodyGyroMag-mean(): The mean of all time window values for each combination of subject and activity for the variable tBodyGyroMag-mean().
- subject-activity-mean-tBodyGyroMag-std(): The mean of all time window values for each combination of subject and activity for the variable tBodyGyroMag-std().
- subject-activity-mean-tBodyGyroJerkMag-mean(): The mean of all time window values for each combination of subject and activity for the variable tBodyGyroJerkMag-mean().
- subject-activity-mean-tBodyGyroJerkMag-std(): The mean of all time window values for each combination of subject and activity for the variable tBodyGyroJerkMag-std().
- subject-activity-mean-fBodyAcc-mean()-X: The mean of all time window values for each combination of subject and activity for the variable fBodyAcc-mean()-X.
- subject-activity-mean-fBodyAcc-mean()-Y: The mean of all time window values for each combination of subject and activity for the variable fBodyAcc-mean()-Y.
- subject-activity-mean-fBodyAcc-mean()-Z: The mean of all time window values for each combination of subject and activity for the variable fBodyAcc-mean()-Z.
- subject-activity-mean-fBodyAcc-std()-X: The mean of all time window values for each combination of subject and activity for the variable fBodyAcc-std()-X.
- subject-activity-mean-fBodyAcc-std()-Y: The mean of all time window values for each combination of subject and activity for the variable fBodyAcc-std()-Y.
- subject-activity-mean-fBodyAcc-std()-Z: The mean of all time window values for each combination of subject and activity for the variable fBodyAcc-std()-Z.
- subject-activity-mean-fBodyAcc-meanFreq()-X: The mean of all time window values for each combination of subject and activity for the variable fBodyAcc-meanFreq()-X.
- subject-activity-mean-fBodyAcc-meanFreq()-Y: The mean of all time window values for each combination of subject and activity for the variable fBodyAcc-meanFreq()-Y.
- subject-activity-mean-fBodyAcc-meanFreq()-Z: The mean of all time window values for each combination of subject and activity for the variable fBodyAcc-meanFreq()-Z.
- subject-activity-mean-fBodyAccJerk-mean()-X: The mean of all time window values for each combination of subject and activity for the variable fBodyAccJerk-mean()-X.
- subject-activity-mean-fBodyAccJerk-mean()-Y: The mean of all time window values for each combination of subject and activity for the variable fBodyAccJerk-mean()-Y.
- subject-activity-mean-fBodyAccJerk-mean()-Z: The mean of all time window values for each combination of subject and activity for the variable fBodyAccJerk-mean()-Z.
- subject-activity-mean-fBodyAccJerk-std()-X: The mean of all time window values for each combination of subject and activity for the variable fBodyAccJerk-std()-X.
- subject-activity-mean-fBodyAccJerk-std()-Y: The mean of all time window values for each combination of subject and activity for the variable fBodyAccJerk-std()-Y.
- subject-activity-mean-fBodyAccJerk-std()-Z: The mean of all time window values for each combination of subject and activity for the variable fBodyAccJerk-std()-Z.
- subject-activity-mean-fBodyAccJerk-meanFreq()-X: The mean of all time window values for each combination of subject and activity for the variable fBodyAccJerk-meanFreq()-X.
- subject-activity-mean-fBodyAccJerk-meanFreq()-Y: The mean of all time window values for each combination of subject and activity for the variable fBodyAccJerk-meanFreq()-Y.
- subject-activity-mean-fBodyAccJerk-meanFreq()-Z: The mean of all time window values for each combination of subject and activity for the variable fBodyAccJerk-meanFreq()-Z.
- subject-activity-mean-fBodyGyro-mean()-X: The mean of all time window values for each combination of subject and activity for the variable fBodyGyro-mean()-X.
- subject-activity-mean-fBodyGyro-mean()-Y: The mean of all time window values for each combination of subject and activity for the variable fBodyGyro-mean()-Y.
- subject-activity-mean-fBodyGyro-mean()-Z: The mean of all time window values for each combination of subject and activity for the variable fBodyGyro-mean()-Z.
- subject-activity-mean-fBodyGyro-std()-X: The mean of all time window values for each combination of subject and activity for the variable fBodyGyro-std()-X.
- subject-activity-mean-fBodyGyro-std()-Y: The mean of all time window values for each combination of subject and activity for the variable fBodyGyro-std()-Y.
- subject-activity-mean-fBodyGyro-std()-Z: The mean of all time window values for each combination of subject and activity for the variable fBodyGyro-std()-Z.
- subject-activity-mean-fBodyGyro-meanFreq()-X: The mean of all time window values for each combination of subject and activity for the variable fBodyGyro-meanFreq()-X.
- subject-activity-mean-fBodyGyro-meanFreq()-Y: The mean of all time window values for each combination of subject and activity for the variable fBodyGyro-meanFreq()-Y.
- subject-activity-mean-fBodyGyro-meanFreq()-Z: The mean of all time window values for each combination of subject and activity for the variable fBodyGyro-meanFreq()-Z.
- subject-activity-mean-fBodyAccMag-mean(): The mean of all time window values for each combination of subject and activity for the variable fBodyAccMag-mean().
- subject-activity-mean-fBodyAccMag-std(): The mean of all time window values for each combination of subject and activity for the variable fBodyAccMag-std().
- subject-activity-mean-fBodyAccMag-meanFreq(): The mean of all time window values for each combination of subject and activity for the variable fBodyAccMag-meanFreq().
- subject-activity-mean-fBodyBodyAccJerkMag-mean(): The mean of all time window values for each combination of subject and activity for the variable fBodyBodyAccJerkMag-mean().
- subject-activity-mean-fBodyBodyAccJerkMag-std(): The mean of all time window values for each combination of subject and activity for the variable fBodyBodyAccJerkMag-std().
- subject-activity-mean-fBodyBodyAccJerkMag-meanFreq(): The mean of all time window values for each combination of subject and activity for the variable fBodyBodyAccJerkMag-meanFreq().
- subject-activity-mean-fBodyBodyGyroMag-mean(): The mean of all time window values for each combination of subject and activity for the variable fBodyBodyGyroMag-mean().
- subject-activity-mean-fBodyBodyGyroMag-std(): The mean of all time window values for each combination of subject and activity for the variable fBodyBodyGyroMag-std().
- subject-activity-mean-fBodyBodyGyroMag-meanFreq(): The mean of all time window values for each combination of subject and activity for the variable fBodyBodyGyroMag-meanFreq().
- subject-activity-mean-fBodyBodyGyroJerkMag-mean(): The mean of all time window values for each combination of subject and activity for the variable fBodyBodyGyroJerkMag-mean().
- subject-activity-mean-fBodyBodyGyroJerkMag-std(): The mean of all time window values for each combination of subject and activity for the variable fBodyBodyGyroJerkMag-std().
- subject-activity-mean-fBodyBodyGyroJerkMag-meanFreq(): The mean of all time window values for each combination of subject and activity for the variable fBodyBodyGyroJerkMag-meanFreq().
