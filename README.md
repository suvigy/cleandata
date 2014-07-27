Samsung data:
-------------
R script that creates 2 files:
 - tidy1.txt: contains the merges test and train data set only with the mean and std measurements
 - tidy2.txt: contains the avarage values for all variables by subject and activity
 

Steps to produce the tidy data set:
1. Clone the repository to a directory (i.e to /scripts): git clone https://github.com/suvigy/cleandata.git
2. Unzip the samsung data to a directory (i.e to /data)
3. Start R
4. Set the working directory to the samsung data directory (i.e.: setwd("/data/UCI HAR Dataset") )
5. Run the run_analysis.R script: source("/scripts/cleandata/run_analysis.R")

Check CookBook.md for the variable names
