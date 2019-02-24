#Load dplyr package, necessary for the data cleaning
library(dplyr)
#Read necessary text files, which should all be placed in the current working 
#directory before running the code
a<-read.table("subject_train.txt")
b<-read.table("X_train.txt")
c<-read.table("y_train.txt")
d<-read.table("subject_test.txt")
e<-read.table("X_test.txt")
f<-read.table("y_test.txt")
#Rename variables in "subject" and "y" tables, since when unchanged they can 
#cause problems when performing the modifications ahead
a<-rename(a,subject=V1)
c<-rename(c,activity=V1)
d<-rename(d,subject=V1)
f<-rename(f,activity=V1)
#Join all data in a single table, ordering the rows according to subject 
#identification number
train<-cbind(a,c,b)
test<-cbind(d,f,e)
data<-rbind(train,test)
data<-arrange(data,V1)
#Find the numbers for the columns to extract (mean and standard deviation) - not
#mandatory
meancol<-seq(1,561,by=17)
stdcol<-seq(2,561,by=17)
#Select mean and standard deviation columns for all the variables available in 
#the original dataset
selected<-select(data,subject,activity,V1,V2,V18,V19,V35,V36,V52,V53,V69,V70,
                 V86,V87,V103,V104,V120,V121,V137,V138,V154,V155,V171,V172,V188,
                 V189,V205,V206,V222,V223,V239,V240,V256,V257,V273,V274,V290,
                 V291,V307,V308,V324,V325,V341,V342,V358,V359,V375,V376,V392,
                 V393,V409,V410,V426,V427,V443,V444,V460,V461,V477,V478,V494,
                 V495,V511,V512,V528,V529,V545,V546)
#Rename activities in the dataset using descriptive variable names
selected$activity<-sub("1","walking",selected$activity)
selected$activity<-sub("2","walking_upstairs",selected$activity)
selected$activity<-sub("3","walking_downstairs",selected$activity)
selected$activity<-sub("4","sitting",selected$activity)
selected$activity<-sub("5","standing",selected$activity)
selected$activity<-sub("6","laying",selected$activity)
#Rename columns(variables) using descriptive variable names
selected<-rename(selected,meantBodyAccX = V1,stdtBodyAccX=V2,meantBodyAccY=V18,
                 stdtBodyAccY=V19,meantBodyAccZ=V35,stdtBodyAccZ=V36,
                 meantGravityAccX=V52,stdtGravityAccX=V53,meantGravityAccY=V69,
                 stdtGravityAccY=V70,meantGravityAccZ=V86,stdtGravityAccZ=V87,
                 meantBodyAccJerkX=V103,stdtBodyAccJerkX=V104,
                 meantBodyAccJerkY=V120,stdtBodyAccJerkY=V121,
                 meantBodyAccJerkZ=V137,stdtBodyAccJerkZ=V138,
                 meantBodyGyroX=V154,stdtBodyGyroX=V155,meantBodyGyroY=V171,
                 stdtBodyGyroY=V172,meantBodyGyroZ=V188,stdtBodyGyroZ=V189,
                 meantBodyGyroJerkX=V205,stdtBodyGyroJerkX=V206,
                 meantBodyGyroJerkY=V222,stdtBodyGyroJerkY=V223,
                 meantBodyGyroJerkZ=V239,stdtBodyGyroJerkZ=V240,
                 meantBodyAccMag=V256,stdtBodyAccMag=V257,
                 meantGravityAccMag=V273,stdtGravityAccMag=V274,
                 meantBodyAccJerkMag=V290,stdtBodyAccJerkMag=V291,
                 meantBodyGyroMag=V307,stdtBodyGyroMag=V308,
                 meantBodyGyroJerkMag=V324,stdtBodyGyroJerkMag=V325,
                 meanfBodyAccX=V341,stdfBodyAccX=V342,meanfBodyAccY=V358,
                 stdfBodyAccY=V359,meanfBodyAccZ=V375,stdfBodyAccZ=V376,
                 meanfBodyAccJerkX=V392,stdfBodyAccJerkX=V393,
                 meanfBodyAccJerkY=V409,stdfBodyAccJerkY=V410,
                 meanfBodyAccJerkZ=V426,stdfBodyAccJerkZ=V427,
                 meanfBodyGyroX=V443,stdfBodyGyroX=V444,meanfBodyGyroY=V460,
                 stdfBodyGyroY=V461,meanfBodyGyroZ=V477,stdfBodyGyroZ=V478,
                 meanfBodyAccMag=V494,stdfBodyAccMag=V495,
                 meanfBodyAccJerkMag=V511,stdfBodyAccJerkMag=V512,
                 meanfBodyGyroMag=V528,stdfBodyGyroMag=V529,
                 meanfBodyGyroJerkMag=V545,stdfBodyGyroJerkMag=V546)
#Make variables with character values into factor variables
selected$subject<-as.factor(selected$subject)
selected$activity<-as.factor(selected$activity)
#Split data frame according to subject and activity
selected<-group_by(selected,subject,activity)
#Generate and save to current working directory a tidy dataset with the average 
#of each variable for each activity and each subject
tidy_data<-summarise(selected,meantBodyAccX=mean(meantBodyAccX),
                     stdtBodyAccX=mean(stdtBodyAccX),
                     meantBodyAccY=mean(meantBodyAccY),
                     stdtBodyAccY=mean(stdtBodyAccY),
                     meantBodyAccZ=mean(meantBodyAccZ),
                     stdtBodyAccZ=mean(stdtBodyAccZ),
                     meantGravityAccX=mean(meantGravityAccX),
                     stdtGravityAccX=mean(stdtGravityAccX),
                     meantGravityAccY=mean(meantGravityAccY),
                     stdtGravityAccY=mean(stdtGravityAccY),
                     meantGravityAccZ=mean(meantGravityAccZ),
                     stdtGravityAccZ=mean(stdtGravityAccZ),
                     meantBodyAccJerkX=mean(meantBodyAccJerkX),
                     stdtBodyAccJerkX=mean(stdtBodyAccJerkX),
                     meantBodyAccJerkY=mean(meantBodyAccJerkY),
                     stdtBodyAccJerkY=mean(stdtBodyAccJerkY),
                     meantBodyAccJerkZ=mean(meantBodyAccJerkZ),
                     stdtBodyAccJerkZ=mean(stdtBodyAccJerkZ),
                     meantBodyGyroX=mean(meantBodyGyroX),
                     stdtBodyGyroX=mean(stdtBodyGyroX),
                     meantBodyGyroY=mean(meantBodyGyroY),
                     stdtBodyGyroY=mean(stdtBodyGyroY),
                     meantBodyGyroZ=mean(meantBodyGyroZ),
                     stdtBodyGyroZ=mean(stdtBodyGyroZ),
                     meantBodyGyroJerkX=mean(meantBodyGyroJerkX),
                     stdtBodyGyroJerkX=mean(stdtBodyGyroJerkX),
                     meantBodyGyroJerkY=mean(meantBodyGyroJerkY),
                     stdtBodyGyroJerkY=mean(stdtBodyGyroJerkY),
                     meantBodyGyroJerkZ=mean(meantBodyGyroJerkZ),
                     stdtBodyGyroJerkZ=mean(stdtBodyGyroJerkZ),
                     meantBodyAccMag=mean(meantBodyAccMag),
                     stdtBodyAccMag=mean(stdtBodyAccMag),
                     meantGravityAccMag=mean(meantGravityAccMag),
                     stdtGravityAccMag=mean(stdtGravityAccMag),
                     meantBodyAccJerkMag=mean(meantBodyAccJerkMag),
                     stdtBodyAccJerkMag=mean(stdtBodyAccJerkMag),
                     meantBodyGyroMag=mean(meantBodyGyroMag),
                     stdtBodyGyroMag=mean(stdtBodyGyroMag),
                     meantBodyGyroJerkMag=mean(meantBodyGyroJerkMag),
                     stdtBodyGyroJerkMag=mean(stdtBodyGyroJerkMag),
                     meanfBodyAccX=mean(meanfBodyAccX),
                     stdfBodyAccX=mean(stdfBodyAccX),
                     meanfBodyAccY=mean(meanfBodyAccY),
                     stdfBodyAccY=mean(stdfBodyAccY),
                     meanfBodyAccZ=mean(meanfBodyAccZ),
                     stdfBodyAccZ=mean(stdfBodyAccZ),
                     meanfBodyAccJerkX=mean(meanfBodyAccJerkX),
                     stdfBodyAccJerkX=mean(stdfBodyAccJerkX),
                     meanfBodyAccJerkY=mean(meanfBodyAccJerkY),
                     stdfBodyAccJerkY=mean(stdfBodyAccJerkY),
                     meanfBodyAccJerkZ=mean(meanfBodyAccJerkZ),
                     stdfBodyAccJerkZ=mean(stdfBodyAccJerkZ),
                     meanfBodyGyroX=mean(meanfBodyGyroX),
                     stdfBodyGyroX=mean(stdfBodyGyroX),
                     meanfBodyGyroY=mean(meanfBodyGyroY),
                     stdfBodyGyroY=mean(stdfBodyGyroY),
                     meanfBodyGyroZ=mean(meanfBodyGyroZ),
                     stdfBodyGyroZ=mean(stdfBodyGyroZ),
                     meanfBodyAccMag=mean(meanfBodyAccMag),
                     stdfBodyAccMag=mean(stdfBodyAccMag),
                     meanfBodyAccJerkMag=mean(meanfBodyAccJerkMag),
                     stdfBodyAccJerkMag=mean(stdfBodyAccJerkMag),
                     meanfBodyGyroMag=mean(meanfBodyGyroMag),
                     stdfBodyGyroMag=mean(stdfBodyGyroMag),
                     meanfBodyGyroJerkMag=mean(meanfBodyGyroJerkMag),
                     stdfBodyGyroJerkMag=mean(stdfBodyGyroJerkMag))
write.table(tidy_data,"tidy_data.txt",row.names=FALSE)