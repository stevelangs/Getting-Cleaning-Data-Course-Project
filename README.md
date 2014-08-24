
The solution for the course project for "Getting and Cleaning Data" is contained in the file "run_analysis.R". This defines the function "run_analysis". This function has a single (required) parameter, which is the directory path of the top directory of the Samsung data distribution.

The run_analysis fuction performs as follows:

* Sets the working directory to the suppied directory (saving the current working directory).
* Gets the Samsung data feature names from the file "features.txt".
* Selects the mean and standard deviation feature names from the complete list of names.
* Generates column names derived from the feature names.
* Reads the test and training measurements, activity codes, and subject codes into data frames, assigning the column names derived above to the Samsung measurement columns.
* Creates a data frame unifying all of the above data, called "all_data"
* Extracts from "all_data" a data frame containing only the mean and standard deviation measurements, and also the actvity and subject codes.
* Attaches the appropriate activity text label from the file "activity_labels.txt" to each record.
* Using the melt and dcast functions, computes the mean values of each measurement variable for each activity/subject pair.
* Writes this result to the file "run_analysis_results.txt" in the working directory.
* Sets the working directory to saved working directory.
* Returns to caller.
