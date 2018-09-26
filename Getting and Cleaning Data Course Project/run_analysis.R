# Reading all the txt files into R
setwd("C:/Users/yii/Desktop/R code/UCI HAR Dataset")
labelid<-read.table("activity_labels.txt")
features<-read.table("features.txt")
setwd("C:/Users/yii/Desktop/R code/UCI HAR Dataset/test")
xtest<-read.table("X_test.txt")
ytest<-read.table("y_test.txt")
subjectTest<-read.table("subject_test.txt")
setwd("C:/Users/yii/Desktop/R code/UCI HAR Dataset/train")
xtrain<-read.table("X_train.txt")
ytrain<-read.table("y_train.txt")
subjectTrain<-read.table("subject_train.txt")

# Merging the training and the test sets to create one data set
test<-cbind(subjectTest,ytest,xtest)
train<-cbind(subjectTrain,ytrain,xtrain)
testAndTrain<-rbind(test,train)

# Extracting only the measurements on the mean and standard deviation for each measurement and Appropriately labeling the data set with descriptive variable names.
datamean<-testAndTrain[c(3,	4	,5,	43,	44,	45,	83	,84	,85,123,	124,	125	,163,	164,	165,	203,	216	,229,	242	,255,	268,	269,	270,	347	,348,	349,	426	,427,	428	,505,	518	,531,	544,	557,	558,	559,	560	,561,	562	,563)]
datastd<-testAndTrain[c(6,	7,	8	,46	,47	,48,	86,	87,	88,	126,	127	,128,	166,	167,	168,	204,	217,	230,	243,	256,	271	,272,	273,	350,	351,	352,	429,	430,	431,	506,	519	,532,	545)]
meanname<-features[c(1,	2	,3,	41,	42	,43	,81	,82	,83,	121	,122,	123	,161,	162	,163,	201	,214,	227,	240,	253	,266,	267,	268,	345,	346,	347	,424,	425	,426,	503	,516,	529	,542	,555,	556	,557,	558,	559,	560,	561),]
stdname<-features[c(4	,5,	6,	44,	45,	46,	84,	85,	86,	124,	125,	126,	164,	165,	166,	202,	215,	228,	241	,254,	269	,270,	271,	348,	349,	350,	427,	428,	429,	504	,517,	530,	543),]
colnames(datamean)<-meanname$V2
colnames(datastd)<-stdname$V2
data<-cbind(testAndTrain[,1:2],datamean,datastd)

# Using descriptive activity names to name the activities in the data set.
data$V1.1<-labelid$V2[match(data$V1.1,labelid$V1)]

# Replacing the column names of the first two columns.
colnames(data)[1:2]<-c("subject","activity_type")

# Creating a tidy data set with the average of each variable for each activity and each subject.
final<-aggregate(data[,3:75],by=list(data$subject,data$activity_type),mean) 
colnames(final)[1:2]<-c("subject","activity_type")

# Writing the tidy data set to a txt file
write.table(final, "tidyData.txt", row.name=FALSE)
