# Getting-and-Cleaning-Data-Course-Project

This is the assignment of Getting and Cleaning Data Course Project.

It includes tidyData.txt, run_analysis.R, and the codebook.

The script worked in the following steps:

1. Set working directory.
2. Read all the txt files related to the work.
3. Bind subject_test, X_test and y_test into test and subject_train, X_train and y_train into train. 
4. Merge test and train.
5. Extract only the measurements on the mean and standard deviation for each measurement and label the data set with descriptive variable names.
6. Use descriptive activity names to name the activities in the data set.
7. Replacing the column names of the first two columns.
8. Create a tidy data set with the average of each variable for each activity and each subject.
9. Write the tidy data set to a txt file.
