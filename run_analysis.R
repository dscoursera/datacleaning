## preliminaries ##
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if (!file.exists("UCI HAR Dataset.zip")) download.file(fileUrl, destfile="./UCI HAR Dataset.zip", method = "curl")
dateDownloaded <- date()
dateDownloaded
require(reshape2, quietly = TRUE)  
#
## unzip the data folder in working dir
unzip("UCI HAR Dataset.zip")
#
## read in test data sets
testXvalues <- read.table("UCI HAR Dataset/test/X_test.txt", comment.char = "",  colClasses="numeric")                    
testYvalues <- read.table("UCI HAR Dataset/test/y_test.txt", comment.char = "",  colClasses="factor")
testSvalues <- read.table("UCI HAR Dataset/test/subject_test.txt", comment.char = "", colClasses="numeric")
#
## read in train data sets
trainXvalues <- read.table("UCI HAR Dataset/train/X_train.txt", comment.char = "",  colClasses="numeric")                    
trainYvalues <- read.table("UCI HAR Dataset/train/y_train.txt", comment.char = "",  colClasses="factor")
trainSvalues <- read.table("UCI HAR Dataset/train/subject_train.txt", comment.char = "", colClasses="numeric")
#
## read in features and activity labels
features <- read.table("UCI HAR Dataset/features.txt", comment.char = "", colClasses="character")
alabels <- read.table("UCI HAR Dataset/activity_labels.txt", comment.char = "")
#
## combine the columns of test data sets and rename columns
dftest <- cbind(testXvalues, testYvalues, testSvalues)
names(dftest) <- c(features$V2, "activity", "subjectid")
#
## combine the columns of train data sets
dftrain <- cbind(trainXvalues, trainYvalues, trainSvalues)
names(dftrain) <- c(features$V2, "activity", "subjectid")
#
## combine the train and test data sets (dfcomb)
dfcomb <- rbind(dftrain, dftest)
#
### subset ###
## keep only the columns of measurements on the mean() and std()

## first remove the columns with meanFreq():derived col, not measured col
grf <- grep("-meanFreq()", names(dfcomb))
dfcomb2 <- dfcomb[, -c(grf)]

## keep mean() and std() columns plus the last two columns
grm <- grep("-mean()", names(dfcomb2))
grs <- grep("-std", names(dfcomb2))
dfcomb2 <- dfcomb2[, c(grm,grs,549,550)]
#
## convert activity numbers to names using the second column in alabels table
levels(dfcomb2$activity) <- alabels$V2
#
## ## make descriptive variable names  
names(dfcomb2) <- gsub("\\(\\)", "", names(dfcomb2))
names(dfcomb2) <- gsub("-", "", names(dfcomb2))
#
##  tidy data set 
pjmelt <- melt(dfcomb2,id=c("activity","subjectid"), measure.vars=c(1:66))
tidydata <- dcast(pjmelt, subjectid + activity ~ variable, mean)
# 180 rows, 68 columns
write.table(tidydata, file = "tidydata.txt", sep = "\t", row.names = FALSE, col.names = TRUE)
