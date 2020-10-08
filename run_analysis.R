# Import libraries needed for this assignment.
library(data.table)

# Download and add data to our working directory.
# Read this 8 txt files and create dataframes.

x_train <- read.table("X_train.txt")
y_train <- read.table("y_train.txt")
s_train <- read.table("subject_train.txt")
x_test <- read.table("X_test.txt")
y_test <- read.table("y_test.txt")
s_test <- read.table("subject_test.txt")

f <- read.table("features.txt")
a <- read.table("activity_labels.txt")

# Merge the training and the test sets to create one data set.
X <- rbind(x_train, x_test)
y <- rbind(y_train, y_test)
s <- rbind(s_train, s_test)
data <- cbind(s, y, X)

# Edit column names. For 3:563, use feature names loaded previously.
names(data)[1] = "Subject"
names(data)[2] = "Activity"
names(data)[3:563] = f$V2

# Turn activity number into descriptive activity.
data$Activity <- a[data$Activity, 2]

# Keep only columns that include std or mean, as well as Subject and Activity.
data2 <- grep("std\\(\\)|mean\\(\\)|Subject|Activity", colnames(data), value = TRUE)
data3 <- data[, data2]

# Label appropriately the data set with descriptive variable names.
names(data3) <- gsub("tBody", "TimeBody", names(data3))
names(data3) <- gsub("Acc", "Accelerometer", names(data3))
names(data3) <- gsub("-mean()", "Mean", names(data3), ignore.case = TRUE)
names(data3) <- gsub("-std()", "STD", names(data3), ignore.case = TRUE)
names(data3) <- gsub("-freq()", "Frecuency", names(data3), ignore.case = TRUE)
names(data3) <- gsub("Gyro", "Gyroscope", names(data3))
names(data3) <- gsub("Mag", "Magnitude", names(data3))
names(data3) <- gsub("angle", "Angle", names(data3))
names(data3) <- gsub("^t", "Time", names(data3))
names(data3) <- gsub("^f", "Frequency", names(data3))
names(data3) <- gsub("BodyBody", "Body", names(data3))
names(data3) <- gsub("gravity", "Gravity", names(data3))

# Create a second, independent tidy data set with the average
# of each variable for each activity and each subject.
data4 <- aggregate( . ~ Subject + Activity, data = data3, FUN = mean)
View(data4)