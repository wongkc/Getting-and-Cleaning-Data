### Create one R script called run_analysis.R that does the following:
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive activity names.
## 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Please upload the tidy data set created in step 5 of the instructions. 

## Please upload your data set as a txt file created with write.table() using row.name=FALSE 
## (do not cut and paste a dataset directly into the text box, as this may cause errors 
## saving your submission).

# We assume that package data.table has already been installed
# so we just need to load it
# same for reshape2
library(data.table)

# The file Dataset.zip has been unzipped and we have set the working directory
# to /UCI HAR Dataset/ where this file is stored this simplifies the code 
# and does not forces us to download the file every time

# Step 1
# We read the data from the files
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt",header=FALSE)
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt",header=FALSE)
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt",header=FALSE)
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt",header=FALSE)
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt",header=FALSE)
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt",header=FALSE)
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt",header=FALSE,colClasses="character")
features <- read.table("./UCI HAR Dataset/features.txt",header=FALSE,colClasses="character")

# Step 2
# We will extract the mean and standard deviation
mean_std_features <- grepl("mean|std", features$V2)
features <- features[mean_std_features,]
X_test <- X_test[,mean_std_features]
X_train <- X_train[,mean_std_features]

### Step 3
# We will assign descriptive labels and names.
y_test$V1 <- factor(y_test$V1,levels=activity_labels$V1,labels=activity_labels$V2)
y_train$V1 <- factor(y_train$V1,levels=activity_labels$V1,labels=activity_labels$V2)

colnames(X_test) <- features$V2
colnames(y_test) <- "Activity"
colnames(subject_test) <- "Subject"

colnames(X_train) <- features$V2
colnames(y_train) <- "Activity"
colnames(subject_train) <- "Subject"

# Step 4
# Merge data sets
test_data <- cbind(X_test,y_test)
test_data <- cbind(test_data,subject_test)
train_data <- cbind(X_train,y_train)
train_data <- cbind(train_data,subject_train)
data <- as.data.table(rbind(test_data,train_data))


# Step 5
# Finally we create a tidy file with the average
tidy <- data[,lapply(.SD,mean),by = "Activity,Subject"]
tidy <- tidy[order(Subject),]
write.table(tidy,file="UCI_tidy_data.txt",row.names = FALSE)
