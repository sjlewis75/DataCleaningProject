# DataCleaningProject
DATASET CODEBOOK

SubjectID                     ID of subject performing activity
tBodyAccmeanX                 Mean body acceleration X Axis in std units g
tBodyAccmeanY                 Mean body acceleration Y Axis in std units g
tBodyAccmeanZ                 Mean body acceleration Z Axis in std units g
tGravityAccmeanX              Mean gravity acceleration X Axis in std units g
tGravityAccmeanY              Mean gravity acceleration Y Axis in std units g
tGravityAccmeanZ              Mean gravity acceleration Z Axis in std units g
tBodyAccJerkmeanX             Mean body acceleration jerk time X Axis in std units g
tBodyAccJerkmeanY             Mean body acceleration jerk time Y Axis in std units g
tBodyAccJerkmeanZ             Mean body acceleration jerk time Z Axis in std units g
tBodyGyromeanX                Mean angular velocity X Axis in radians/second
tBodyGyromeanY                Mean angular velocity Y Axis in radians/second
tBodyGyromeanZ                Mean angular velocity Z Axis in radians/second
tBodyGyroJerkmeanX            Mean angular velocity jerk time X Axis in radians/second
tBodyGyroJerkmeanY            Mean angular velocity jerk time Y Axis in radians/second
tBodyGyroJerkmeanZ            Mean angular velocity jerk time Z Axis in radians/second
tBodyAccMagmean               Mean body acceleration magnitude in std units g
tGravityAccMagmean            Mean gravity acceleration magnitude in std units g
tBodyAccJerkMagmean           Mean body acceleration magnitude jerk time in std units g
tBodyGyroMagmean              Mean angular velocity magnitude in radians/second
tBodyGyroJerkMagmean          Mean gravity acceleration magnitude in radians/second
fBodyAccmeanX                 Mean body acceleration FFT X Axis in std units g
fBodyAccmeanY                 Mean body acceleration FFT Y Axis in std units g
fBodyAccmeanZ                 Mean body acceleration FFT Z Axis in std units g
fBodyAccmeanFreqX             Mean body acceleration FFT frequency X in std units g
fBodyAccmeanFreqY             Mean body acceleration FFT frequency Y in std units g
fBodyAccmeanFreqZ             Mean body acceleration FFT frequency Z in std units g
fBodyAccJerkmeanX             Mean body accleration jerk magnitude FFT X Axis in std units g
fBodyAccJerkmeanY             Mean body accleration jerk magnitude FFT Y Axis in std units g
fBodyAccJerkmeanZ             Mean body accleration jerk magnitude FFT Z Axis in std units g
fBodyAccJerkmeanFreqX         Mean body accleration jerk frequency FFT X Axis in std units g
fBodyAccJerkmeanFreqY         Mean body accleration jerk frequency FFT Y Axis in std units g
fBodyAccJerkmeanFreqZ         Mean body accleration jerk frequency FFT Z Axis in std units g
fBodyGyromeanX                Mean body gyro FFT X Axis in radians/second
fBodyGyromeanY                Mean body gyro FFT Y Axis in radians/second
fBodyGyromeanZ                Mean body gyro FFT Z Axis in radians/second
fBodyGyromeanFreqX            Mean body gyro frequency FFT X Axis in radians/second
fBodyGyromeanFreqY            Mean body gyro frequency FFT Y Axis in radians/second
fBodyGyromeanFreqZ            Mean body gyro frequency FFT Z Axis in radians/second
fBodyAccMagmean               Mean body acceleration magnitude FFT in std units g
fBodyAccMagmeanFreq           Mean body acceleration magnitude frequency FFT in std units g
fBodyBodyAccJerkMagmean       Mean body acceleration jerk magnitude FFT in std units g
fBodyBodyAccJerkMagmeanFreq   Mean body acceleration jerk magnitude frequency FFT in std units g
fBodyBodyGyroMagmean          Mean body gyro magnitude FFT in radians/second
fBodyBodyGyroMagmeanFreq      Mean body gyro magnitude frequency FFT in radians/second
fBodyBodyGyroJerkMagmean      Mean body gyro jerk magnitude FFT in radians/second
fBodyBodyGyroJerkMagmeanFreq  Mean body gyro jerk magnitude frequency FFT in radians/second
tBodyAccstdX                  Standard deviation body acceleration X Axis in std units g
tBodyAccstdY                  Standard deviation body acceleration Y Axis in std units g
tBodyAccstdZ                  Standard deviation body acceleration Z Axis in std units g
tGravityAccstdX               Standard deviation gravity acceleration X Axis in std units g
tGravityAccstdY               Standard deviation gravity acceleration Y Axis in std units g
tGravityAccstdZ               Standard deviation gravity acceleration Z Axis in std units g
tBodyAccJerkstdX              Standard deviation body acceleration jerk time X Axis in std units g
tBodyAccJerkstdY              Standard deviation body acceleration jerk time Y Axis in std units g
tBodyAccJerkstdZ              Standard deviation body acceleration jerk time Z Axis in std units g
tBodyGyrostdX                 Standard deviation angular velocity X Axis in radians/second
tBodyGyrostdY                 Standard deviation angular velocity Y Axis in radians/second
tBodyGyrostdZ                 Standard deviation angular velocity Z Axis in radians/second
tBodyGyroJerkstdX             Standard deviation angular velocity jerk time X Axis in std units g
tBodyGyroJerkstdY             Standard deviation angular velocity jerk time Y Axis in std units g
tBodyGyroJerkstdZ             Standard deviation angular velocity jerk time Z Axis in std units g
tBodyAccMagstd                Standard deviation body acceleration magnitude in std units g
tGravityAccMagstd             Standard deviation gravity acceleration magnitude in std units g
tBodyAccJerkMagstd            Standard deviation body acceleration magnitude jerk time in std units g
tBodyGyroMagstd               Standard deviation angular velocity magnitude in radians/second
tBodyGyroJerkMagstd           Standard deviation angular velocity jerk time in radians/second
fBodyAccstdX                  Standard deviation body acceleration FFT X Axis in std units g
fBodyAccstdY                  Standard deviation body acceleration FFT Y Axis in std units g
fBodyAccstdZ                  Standard deviation body acceleration FFT Z Axis in std units g
fBodyAccJerkstdX              Standard deviation body acceleration jerk time FFT X Axis in std units g
fBodyAccJerkstdY              Standard deviation body acceleration jerk time FFT Y Axis in std units g
fBodyAccJerkstdZ              Standard deviation body acceleration jerk time FFT Z Axis in std units g
fBodyGyrostdX                 Standard deviation body gyro FFT X Axis in radians/second
fBodyGyrostdY                 Standard deviation body gyro FFT Y Axis in radians/second
fBodyGyrostdZ                 Standard deviation body gyro FFT Z Axis in radians/second
fBodyAccMagstd                Standard deviation body acceleration magnitude FFT in std units g
fBodyBodyAccJerkMagstd        Standard deviation body acceleration jerk time FFT magnitude in std units g
fBodyBodyGyroMagstd           Standard deviation body gyro magnitude FFT in radians/second
fBodyBodyGyroJerkMagstd       Standard deviation body gyro jerk time FFTmagnitude in radians/second
ActivityName                  Name of activity performed


ANALYSIS PROCESS
Read each of the subject files into its own dataframe
Read in results label file into its own dataframe
Create a vector of labels for the data
Read each of the results files into its own dataframe using the labels from the vector as column names
Combine the test subject, activity and result datasets into one dataset
Combine the train subject, activity and result datasets into one dataset
Combine test and train datasets all into one dataset
Update activity names with strings
Update column names by removing "." from column names
Sort out columns with the name "mean"
Sort out columns with the name "std"
Create one dataset with subjectid, activityid, activity name and data columns of std and mean
Create a new dataset with all averages, subjectid and activity name
