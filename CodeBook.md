# Transformations performed to clean up the data
- Import libraries needed for this assignment.
- Download and add data to our working directory.
- Read this 8 txt files and create dataframes.
- Merge the training and the test sets to create one data set.
- Edit column names. For 3:563, use feature names loaded previously.
- Turn activity number into descriptive activity.
- Keep only columns that include std or mean, as well as Subject and Activity.
- Label appropriately the data set with descriptive variable names.
- Create a second, independent tidy data set with the average of each variable for each activity and each subject.

# Variable description
The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'
