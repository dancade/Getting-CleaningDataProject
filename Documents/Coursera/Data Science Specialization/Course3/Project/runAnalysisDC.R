setwd("C:/Users/edancad/Documents/Coursera/Data Science Specialization/Course3/Project")

runaAnalysis <- function()
    {
    # Read data sets, already downloaded and uncompressed in the working directory
    
    x_train <- read.table("./data/train/X_train.txt", sep="", header = FALSE, quote="\"")
    x_test <- read.table("./data/test/X_test.txt", sep="", header = FALSE, quote="\"")
    
    ## Part 1
    
    # Merge the test and train data set
    merged_set <- rbind(x_train, x_test)
    
    # Add column names to the merged file from the Features file
    features <- read.csv("./data/features.txt", sep="", header = FALSE, quote="\"")
    names(merged_set) <- features[,2] 
    
    ## Part 2
    
    # Extract measurements of mean and standard deviation for all measurements
    mean_stddev_indexes <- grep("(mean|std)\\(",names(merged_set))
    reduced_set <- merged_set[,mean_stddev_indexes]

    ## Part 3
    
    # Read activity sets and labels
    y_train <- read.table("./data/train/y_train.txt", sep="", header = FALSE, quote="\"")
    y_test <- read.table("./data/test/y_test.txt", sep="", header = FALSE, quote="\"")
    merged_y <- rbind(y_train,y_test)
    
    # Replace activity numbers with the activity names
    activity_labels <- read.csv("./data/activity_labels.txt", sep="", header = FALSE, quote="\"")
    merged_activity <- sapply(1:nrow(merged_y), function(i) {activity_labels[merged_y[i,1],2]})
    
    # Bind activity vector to reduced data set
    reduced_set_act <- cbind(merged_activity,reduced_set)
    names(reduced_set_act)[1] <- "ActivityName"
    
    # Rename reduced data set names to be more descriptive
    names(reduced_set_act) <- gsub("^t","Time",names(reduced_set_act))
    names(reduced_set_act) <- gsub("^f","Frequency",names(reduced_set_act))
    names(reduced_set_act) <- gsub("-mean\\(\\)","Mean",names(reduced_set_act))
    names(reduced_set_act) <- gsub("-std\\(\\)","StdDev",names(reduced_set_act))
    names(reduced_set_act) <- gsub("-","",names(reduced_set_act))
    
    # Read test and train subjects and merge them
    subject_train <- read.table("./data/train/subject_train.txt", sep="", header = FALSE, quote="\"")
    subject_test <- read.table("./data/test/subject_test.txt", sep="", header = FALSE, quote="\"")
    merged_subject <- rbind(subject_train,subject_test)
    
    # Bind subject vector to reduced data set with activity
    completed_set <- cbind(merged_subject,reduced_set_act)
    names(completed_set)[1] <- "SubjectName"
    
    # Write file
    write.table(completed_set,"")
    
    ## Part 4
    
    library(plyr)
    
    # Calculate column means for all numeric columns
    numericOnlyColMeans <- function(data) { colMeans(data[,-c(1,2)]) }
    completed_means_set <- ddply(completed_set, .(SubjectName, ActivityName), numericOnlyColMeans)
    
    # Append Mean prefix to all numeric columns
    names(completed_means_set)[-c(1,2)] <- paste0("Mean", names(tidyMeans)[-c(1,2)])
    
    # Write file
    
}
