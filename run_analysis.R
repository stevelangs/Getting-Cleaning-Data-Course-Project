#------------------------------------------------------------
# Solution for "Getting and Cleaning Data" course project.
# Assumes the "reshape2" package is installed and loaded. 
# If not, do:
#     install.packages("reshape2")
#     library(reshape2)
# before running.
#
run_analysis <- function(datadir) {
    
    # Set the working directory to the top directory of the Samsung data.
    prev.wd <- setwd(datadir)
    
    # Get the feature names for the training and test datasets.
    features <- read.table("./features.txt", stringsAsFactors=FALSE)
    featnames <- features$V2
    
    # Get the names of features which are means or standard deviations.
    ms_featnames <- featnames[grep('(.*\\-std\\(\\).*)|(.*\\-mean\\(\\).*)', featnames)]
    
    # Generate column names based on the feature names.
    allcolnames <- gsub("\\-","\\.",gsub("\\,","\\.", gsub("\\(","\\.",gsub("\\)","\\.",gsub("\\(\\)","",featnames)))))
    ms_colnames <- gsub("\\-","\\.",gsub("\\,","\\.", gsub("\\(","\\.",gsub("\\)","\\.",gsub("\\(\\)","",ms_featnames)))))
    
    # Construct a data frame containing all of the training and test data, 
    # with the activity and subject codes for each observation.
    x_train <- read.table("./train/X_train.txt",col.names=allcolnames)
    y_train <- read.table("./train/Y_train.txt",col.names=c("Activity.index"))
    s_train <- read.table("./train/subject_train.txt",col.names=c("Subject"))
    x_test <- read.table("./test/X_test.txt",col.names=allcolnames)
    y_test <- read.table("./test/Y_test.txt",col.names=c("Activity.index"))
    s_test <- read.table("./test/subject_test.txt",col.names=c("Subject"))
    x_all <- rbind(x_train, x_test)
    y_all <- rbind(y_train, y_test)
    s_all <- rbind(s_train, s_test)
    all_data <- cbind(x_all, y_all, s_all)
    
    # Extract from the all-data dataframe only the mean and standard deviation
    # measurements, and include also the activity and subject codes.
    mean_std_data <- all_data[,c("Activity.index","Subject",ms_colnames)]
    
    # Attach the activity label corresponding the activity code to each record.
    act.labels <- read.table("./activity_labels.txt",col.names=c("Activity.index","Activity.label"))
    mean_std_actlab <- merge(mean_std_data,act.labels)
    
    # Generate a molten data frame that has "Activity.label" and "Subject" as id variables,
    # and the mean and standard deviation measurements as values.
    act_subj_vs_variables <- melt(mean_std_actlab,id=c("Activity.label","Subject"), measure.vars=ms_colnames)
    
    # Cast the molten data frame into a data frame that gives the mean value, of each mean and 
    # standard deviation measurement, for each combination of activity and subject.
    act_subj_vs_means <- dcast(act_subj_vs_variables, Activity.label + Subject ~ variable,mean)
    
    # Write out the result table.
    write.table(act_subj_vs_means, file="run_analysis_results.txt", row.names=FALSE)
    
    # Return to previous working directory.
    setwd(prev.wd)
}