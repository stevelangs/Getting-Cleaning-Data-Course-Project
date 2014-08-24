
Summary
=======

The file run_analysis_results.txt contains the output of the run_analysis function
when applied to the Samsung data.

Analysis Peformed
-----------------

1. Merge the training and test datasets into a single dataset.
2. Project out a subset of feature variables, namely those which are means or standard deviations.
3. Attach to each record the activity and subject which generated the measurements in that record.
4. Using this result, generate as final output the mean of each recorded feature variable for each given activity/subject pair.

Data produced
-------------

The column names of the measurement variables in the output records are derived from the corresponding feature name in the Samsung data. For example:

Samsung feature name: tBodyAcc-mean()-X  
Output column name: tBodyAcc.mean.X

Each of the values in a given output column is a mean, computed over all the measurements of the corresponding Samsung feature for the activity/subject shown in "Activity.label" and "Subject" columns. For example, if a given output record has the following values:

Activity.label: WALKING  
Subject: 10  
tBodyAcc.mean.X: 0.22159824394  

This means that:  
    for the activity of "WALKING"  
    subject 10  
    had a mean value of 0.22159824394 for the Samsung feature tBodyAcc-mean()-X.

Output record fomat
===================

Data format
-----------

"Activity.label" is a character string, with one of the following values:

 WALKING
 WALKING_UPSTAIRS
 WALKING_DOWNSTAIRS
 SITTING
 STANDING
 LAYING
 
"Subject" is an integer value.

All other columns are numeric values from the interval [1.0, -1.0], in signed, fixed point format.

Columns
-------

1. Activity.label      
2. Subject
3. tBodyAcc.mean.X
4. tBodyAcc.mean.Y
5. tBodyAcc.mean.Z
6. tBodyAcc.std.X
7. tBodyAcc.std.Y
8. tBodyAcc.std.Z
9. tGravityAcc.mean.X
10. tGravityAcc.mean.Y
11. tGravityAcc.mean.Z
12. tGravityAcc.std.X
13. tGravityAcc.std.Y
14. tGravityAcc.std.Z 
15. tBodyAccJerk.mean.X
16. tBodyAccJerk.mean.Y
17. tBodyAccJerk.mean.Z
18. tBodyAccJerk.std.X
19. tBodyAccJerk.std.Y
20. tBodyAccJerk.std.Z
21. tBodyGyro.mean.X
22. tBodyGyro.mean.Y
23. tBodyGyro.mean.Z
24. tBodyGyro.std.X
25. tBodyGyro.std.Y
26. tBodyGyro.std.Z
27. tBodyGyroJerk.mean.X
28. tBodyGyroJerk.mean.Y
29. tBodyGyroJerk.mean.Z
30. tBodyGyroJerk.std.X
31. tBodyGyroJerk.std.Y
32. tBodyGyroJerk.std.Z
33. tBodyAccMag.mean
34. tBodyAccMag.std
35. tGravityAccMag.mean
36. tGravityAccMag.std
37. tBodyAccJerkMag.mean
38. tBodyAccJerkMag.std
39. tBodyGyroMag.mean
40. tBodyGyroMag.std
41. tBodyGyroJerkMag.mean
42. tBodyGyroJerkMag.std
43. 3fBodyAcc.mean.X
44. fBodyAcc.mean.Y
45. fBodyAcc.mean.Z
46. fBodyAcc.std.X
47. fBodyAcc.std.Y
49. fBodyAcc.std.Z
50. fBodyAccJerk.mean.X
51. fBodyAccJerk.mean.Y
52. fBodyAccJerk.mean.Z
53. fBodyAccJerk.std.X
54. fBodyAccJerk.std.Y
55. fBodyAccJerk.std.Z
56. fBodyGyro.mean.X
57. fBodyGyro.mean.Y
58. fBodyGyro.mean.Z
59. fBodyGyro.std.X
60. fBodyGyro.std.Y
61. fBodyGyro.std.Z
62. fBodyAccMag.mean
63. fBodyAccMag.std
64. fBodyBodyAccJerkMag.mean
65. fBodyBodyAccJerkMag.std
66. fBodyBodyGyroMag.mean
fBodyBodyGyroMag.std
fBodyBodyGyroJerkMag.mean
fBodyBodyGyroJerkMag.std
