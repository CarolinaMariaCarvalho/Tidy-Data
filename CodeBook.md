# UCI HAR Dataset

## Study Design

The experiments were been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded tolabel the data manually. The original dataset was randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training 
data and 30% the test data, though all data were joined for this analysis. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

The features selected for the original database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the accelerationsignal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

Additional vectors obtained by averaging the signals in a signal window sample. 
These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean


## Code Book

### Variables

subject - factor, 1 to 30, identifies subject id   

activity - factor, 6 levels, identifies the activity being performed during the measurement of the variables
* laying
* sitting
* standing
* walking
* walking_downstairs
* walking_upstairs

meantBodyAccX - quantitative, mean body acceleration on the X axis  

stdtBodyAccX - quantitative, standard deviation for body acceleration on the X axis 

meantBodyAccY - quantitative, mean body acceleration on the Y axis       

stdtBodyAccY - quantitative, standard deviation for body acceleration on the Y axis

meantBodyAccZ - quantitative, mean body acceleration on the Z axis  

stdtBodyAccZ - quantitative, standard deviation for body acceleration on the Z axis   

meantGravityAccX - quantitative, mean gravity acceleration on the X axis    

stdtGravityAccX - quantitative, standard deviation for gravity acceleration on the X axis  

meantGravityAccY - quantitative, mean gravity acceleration on the Y axis    

stdtGravityAccY - quantitative, standard deviation for gravity acceleration on the Y axis  

meantGravityAccZ - quantitative, mean gravity acceleration on the Z axis    

stdtGravityAccZ - quantitative, standard deviation for gravity acceleration on the Z axis    
meantBodyAccJerkX - quantitative, mean body acceleration (Jerk signals) on the X axis  

stdtBodyAccJerkX - quantitative, standard deviation for body acceleration (Jerk signals) on the X axis     

meantBodyAccJerkY - quantitative, mean body acceleration (Jerk signals) on the Y axis 

stdtBodyAccJerkY - quantitative, standard deviation for body acceleration (Jerk signals) on the Y axis       

meantBodyAccJerkZ - quantitative, mean body acceleration (Jerk signals) on the Z axis   

stdtBodyAccJerkZ - quantitative, standard deviation for body acceleration (Jerk signals) on the Z axis         

meantBodyGyroX - quantitative, mean body angular velocity on the X axis

stdtBodyGyroX - quantitative, standard deviation for body angular velocity on the X axis    

meantBodyGyroY - quantitative, mean body angular velocity on the Y axis    

stdtBodyGyroY - quantitative, standard deviation for body angular velocity on the Y axis    

meantBodyGyroZ - quantitative, mean body angular velocity on the Z axis   

stdtBodyGyroZ - quantitative, standard deviation for body angular velocity on the Z axis     
meantBodyGyroJerkX - quantitative, mean body angular velocity (Jerk signals) on the X axis  

stdtBodyGyroJerkX - quantitative, standard deviation for body angular velocity (Jerk signals) on the X axis   

meantBodyGyroJerkY - quantitative, mean body angular velocity (Jerk signals) on the Y axis   
stdtBodyGyroJerkY - quantitative, standard deviation for body angular velocity (Jerk signals) on the Y axis  

meantBodyGyroJerkZ - quantitative, mean body angular velocity (Jerk signals) on the Z axis

stdtBodyGyroJerkZ - quantitative, standard deviation for body angular velocity (Jerk signals) on the Y axis   

meantBodyAccMag - quantitative, mean body acceleration magnitude   

stdtBodyAccMag - quantitative, standard deviation for body acceleration magnitude     

meantGravityAccMag - quantitative, mean gravity acceleration magnitude 

stdtGravityAccMag - quantitative, standard deviation for gravity acceleration magnitude  


meantBodyAccJerkMag - quantitative, mean body acceleration magnitude (Jerk signals)  

stdtBodyAccJerkMag - quantitative, standard deviation for body acceleration magnitude (Jerk signals)

meantBodyGyroMag - quantitative, mean angular velocity magnitude    

stdtBodyGyroMag - quantitative, standard deviation for angular velocity magnitude  

meantBodyGyroJerkMag - quantitative, mean angular velocity magnitude (Jerk signals)

stdtBodyGyroJerkMag - quantitative, standard deviation for angular velocity magnitude (Jerk signals)

meanfBodyAccX - quantitative, mean body acceleration (frequency) on the X axis  

stdfBodyAccX - quantitative, standard deviation for body  (frequency) on the X axis 

meanfBodyAccY - quantitative, mean body acceleration (frequency) on the Y axis       

stdfBodyAccY - quantitative, standard deviation for body acceleration (frequency) on the Y axis

meanfBodyAccZ - quantitative, mean body acceleration (frequency) on the Z axis  

stdfBodyAccZ - quantitative, standard deviation for body acceleration (frequency) on the Z axis   

meanfGravityAccX - quantitative, mean gravity acceleration (frequency) on the X axis    

stdfGravityAccX - quantitative, standard deviation for gravity acceleration (frequency) on the X axis  

meanfGravityAccY - quantitative, mean gravity acceleration (frequency) on the Y axis    

stdfGravityAccY - quantitative, standard deviation for gravity acceleration (frequency) on the Y axis  

meanfGravityAccZ - quantitative, mean gravity acceleration (frequency) on the Z axis    

stdfGravityAccZ - quantitative, standard deviation for gravity acceleration (frequency) on the Z axis 

meanfBodyAccJerkX - quantitative, mean body acceleration (frequency) on the X axis (Jerk signals)

stdfBodyAccJerkX - quantitative, standard deviation for body acceleration (frequency) on the X axis (Jerk signals)    

meanfBodyAccJerkY - quantitative, mean body acceleration (frequency) on the Y axis (Jerk signals)

stdfBodyAccJerkY - quantitative, standard deviation for body acceleration (frequency) on the Y axis (Jerk signals)      

meanfBodyAccJerkZ - quantitative, mean body acceleration (frequency) on the Z axis (Jerk signals)  

stdfBodyAccJerkZ - quantitative, standard deviation for body acceleration (frequency) on the Z axis (Jerk signals)        

meanfBodyGyroX - quantitative, mean body angular velocity (frequency) on the X axis

stdfBodyGyroX - quantitative, standard deviation for body angular velocity on the X axis    

meantBodyGyroY - quantitative, mean body angular velocity (frequency) on the Y axis    

stdfBodyGyroY - quantitative, standard deviation for body angular velocity (frequency) on the Y axis    

meanfBodyGyroZ - quantitative, mean body angular velocity (frequency) on the Z axis   

stdfBodyGyroZ - quantitative, standard deviation for body angular velocity (frequency) on the Z axis    

meanfBodyGyroJerkX - quantitative, mean body angular velocity (frequency) on the X axis (Jerk signals) 

stdfBodyGyroJerkX - quantitative, standard deviation for body angular velocity (frequency) on the X axis (Jerk signals)   

meanfBodyGyroJerkY - quantitative, mean body angular velocity (frequency) on the Y axis (Jerk signals)

stdfBodyGyroJerkY - quantitative, standard deviation for body angular velocity (frequency) on the Y axis (Jerk signals)  

meanfBodyGyroJerkZ - quantitative, mean body angular velocity (frequency) on the Z axis (Jerk signals)

stdfBodyGyroJerkZ - quantitative, standard deviation for body angular velocity (frequency) on the Y axis (Jerk signals)   

meanfBodyAccMag - quantitative, mean body acceleration magnitude (frequency)  

stdfBodyAccMag - quantitative, standard deviation for body acceleration magnitude  (frequency)    

meanfGravityAccMag - quantitative, mean gravity acceleration magnitude (frequency)

stdfGravityAccMag - quantitative, standard deviation for gravity acceleration magnitude (frequency)  

meanfBodyAccJerkMag - quantitative, mean body acceleration magnitude  (frequency, Jerk signals)  

stdfBodyAccJerkMag - quantitative, standard deviation for body acceleration magnitude  (frequency, Jerk signals)

meanfBodyGyroMag - quantitative, mean angular velocity magnitude (frequency)   

stdfBodyGyroMag - quantitative, standard deviation for angular velocity magnitude (frequency)  

meanfBodyGyroJerkMag - quantitative, mean angular velocity magnitude (frequency, Jerk signals)

stdfBodyGyroJerkMag - quantitative, standard deviation for angular velocity magnitude  (frequency, Jerk signals)


### Transformations

First, after loading all main files for the test and train groups (subject_train, X_train, y_train, subject_test, X_test, y_test), the variable names in subject and y files were changed from "V1" to "subject" and "activity", respectively. 
Then, all data files available for the test and train groups were merged into a single data frame, and rows were ordered according to subject ID number. 
Afterwards, the mean and standard deviation columns for all the variables available in 
the original dataset were selected into a new data frame, followed by the renaming of the activity variable levels and of the column variables, using descriptive names. 
Finally, variables with character values (subject and activity) were made into factor variables, the data frame was split according to subject and activity variables, and a final data frame was generated through the summarisation of each variable for each activity and subject. This data frame (tidy_data) is made up of 180 observations of 68 variables.