## Getting-and-Cleaning-Data-Course-Project

This is the Getting and Cleaning Data Course Project.

It has 4 files:
* run_analysis.R: the script of stey-by-step process of how to get the tidy data set. 
* tidyData.txt: the final result of run_analysis.R.   
* codebook.md: explains the variables of tidyData.txt.
* README.md: shows how run_analysis.R works. 

The script worked in the following steps:
1. Set working directory.
2. Read all the txt files related to the work.
3. Bind subject_test, X_test and y_test into test and subject_train, X_train and y_train into train. 
4. Merge test and train.
5. Extract only the measurements on the mean and standard deviation for each measurement and label the data set with descriptive variable names.
6. Use descriptive activity names to name the activities in the data set.
7. Replace the column names of the first two columns.
8. Create a tidy data set with the average of each variable for each activity and each subject.
9. Write the tidy data set to a txt file.
