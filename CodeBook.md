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
