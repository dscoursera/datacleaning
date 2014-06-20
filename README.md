datacleaning
============

The data set tidydata.txt was prepared by the script run\_analysis.R on the data collected 
from the accelerometers from the Samsung Galaxy S smartphone linked to from the course 
website. The purpose of the script was to create a tidy set based on the principles 
explained in the class video and detailed in the paper by Hadley Wickham: 
http://vita.had.co.nz/papers/tidy-data.pdf

**The components of tidy data set are:**

- Each variable should be in one column
- Each different observation of that variable should be in a different row
- There should be one file per table
- There should be a header with variable names
- Variable names should be human readable

**Here are the steps in the script following the above principles:**

1. The file UCI HAR Dataset.zip was downloaded in the working directory and data sets 
read in R.

2. Both train and test data sets were created to have the variables, the subject id, and 
the activity performed by the subjects. The variable labels were assigned from the file 
features.txt.
 
3. The variable values were found in X\_train.txt and X\_test.txt respectively. Similarly, 
the activity codes were found in y\_train.txt and y\_test.txt respectively. The subject 
ids were taken from subject\_test.txt. 

4. The data sets train and test were then combined to form one data set.

5. Following the rules of the assignment only the measurements on mean and standard 
deviation were retained. These were the variables with mean() and std() in their labels. 
Other variables were dropped including the calculated variables such as meanFreq().

6. The activity codes were changed to descriptive names such as walking, standing, etc.

7. The variables were renamed to remove characters other than the letters so as to make 
them readable and to make down stream analyzing of data set easier. These make 
referencing columns easier and use variables programmatically without using escape 
characters.

8. In the final step of the script the data set was summarized with the average of each 
variable for each activity and each subject creating a tidy data set (tidydata). It has 
68 columns and 180 rows, 1 row for each of the 30 subjects per activity (1 x 6 x 30). 
The tidydata was written to text file tidydata.txt.

Script Usage: From R command prompt > source("run\_analysis.R") from the working 
directory. reshape2 library is required.

