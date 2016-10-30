labels<-read.table("UCI HAR Dataset/activity_labels.txt", header=FALSE, sep="")

#Reading in and cleaning the test set

x_test<-read.table("UCI HAR Dataset/test/X_test.txt", header=FALSE, sep="") #reading in the test data
x_test_mean<-apply(x_test, 1, mean)
x_test_SD<-apply(x_test,1,sd)

y_test<-read.table("UCI HAR Dataset/test/y_test.txt", header=FALSE, sep="") # reading in the labels
colnames(y_test)<-"activity"

subject<-read.table("UCI HAR Dataset/test/subject_test.txt", header=FALSE, sep="")# reading in the subjects
colnames(subject)<-"subject"

body_acc_x_test<-read.table("UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt", header=FALSE, sep="")
body_acc_x_test_mean<-apply(body_acc_x_test, 1, mean)
body_acc_x_test_SD<-apply(body_acc_x_test,1,sd)

body_acc_y_test<-read.table("UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt", header=FALSE, sep="")
body_acc_y_test_mean<-apply(body_acc_y_test, 1, mean)
body_acc_y_test_SD<-apply(body_acc_y_test,1,sd)

body_acc_z_test<-read.table("UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt", header=FALSE, sep="")
body_acc_z_test_mean<-apply(body_acc_z_test, 1, mean)
body_acc_z_test_SD<-apply(body_acc_z_test,1,sd)

body_gyro_x_test<-read.table("UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt", header=FALSE, sep="")
body_gyro_x_test_mean<-apply(body_gyro_x_test, 1, mean)
body_gyro_x_test_SD<-apply(body_gyro_x_test,1,sd)

body_gyro_y_test<-read.table("UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt", header=FALSE, sep="")
body_gyro_y_test_mean<-apply(body_gyro_y_test, 1, mean)
body_gyro_y_test_SD<-apply(body_gyro_y_test,1,sd)

body_gyro_z_test<-read.table("UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt", header=FALSE, sep="")
body_gyro_z_test_mean<-apply(body_gyro_z_test, 1, mean)
body_gyro_z_test_SD<-apply(body_gyro_z_test,1,sd)

total_acc_x_test<-read.table("UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt", header=FALSE, sep="")
total_acc_x_test_mean<-apply(total_acc_x_test, 1, mean)
total_acc_x_test_SD<-apply(total_acc_x_test,1,sd)

total_acc_y_test<-read.table("UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt", header=FALSE, sep="")
total_acc_y_test_mean<-apply(total_acc_y_test, 1, mean)
total_acc_y_test_SD<-apply(total_acc_y_test,1,sd)

total_acc_z_test<-read.table("UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt", header=FALSE, sep="")
total_acc_z_test_mean<-apply(total_acc_z_test, 1, mean)
total_acc_z_test_SD<-apply(total_acc_z_test,1,sd)

d<-cbind(subject, y_test, x_test_mean, x_test_SD, body_acc_x_test_mean, body_acc_x_test_SD, 
         body_acc_y_test_mean, body_acc_y_test_SD, body_acc_z_test_mean, body_acc_z_test_SD, 
         body_gyro_x_test_mean, body_gyro_x_test_SD, body_gyro_y_test_mean, body_gyro_y_test_SD,
         body_gyro_z_test_mean, body_gyro_z_test_SD, total_acc_x_test_mean,  total_acc_x_test_SD, 
         total_acc_y_test_mean, total_acc_y_test_SD, total_acc_z_test_mean, total_acc_z_test_SD)

d$activity<-factor(d$activity, levels=labels$V1, labels=labels$V2)
colnames(d)<-c("subject", "activity", "featuremean", "featureSD", "body_acc_x_mean", "body_acc_x_SD", 
"body_acc_y_mean", "body_acc_y_SD", "body_acc_z_mean", "body_acc_z_SD", 
"body_gyro_x_mean", "body_gyro_x_SD", "body_gyro_y_mean", "body_gyro_y_SD",
"body_gyro_z_mean", "body_gyro_z_SD", "total_acc_x_mean",  "total_acc_x_SD", 
"total_acc_y_mean", "total_acc_y_SD", "total_acc_z_mean", "total_acc_z_SD")


head(d)

#working on the train set

x_train<-read.table("UCI HAR Dataset/train/X_train.txt", header=FALSE, sep="") #reading in the train data
x_train_mean<-apply(x_train, 1, mean)
x_train_SD<-apply(x_train,1,sd)

y_train<-read.table("UCI HAR Dataset/train/y_train.txt", header=FALSE, sep="") # reading in the labels
colnames(y_train)<-"activity"

subject<-read.table("UCI HAR Dataset/train/subject_train.txt", header=FALSE, sep="")# reading in the subjects
colnames(subject)<-"subject"

body_acc_x_train<-read.table("UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt", header=FALSE, sep="")
body_acc_x_train_mean<-apply(body_acc_x_train, 1, mean)
body_acc_x_train_SD<-apply(body_acc_x_train,1,sd)

body_acc_y_train<-read.table("UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt", header=FALSE, sep="")
body_acc_y_train_mean<-apply(body_acc_y_train, 1, mean)
body_acc_y_train_SD<-apply(body_acc_y_train,1,sd)

body_acc_z_train<-read.table("UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt", header=FALSE, sep="")
body_acc_z_train_mean<-apply(body_acc_z_train, 1, mean)
body_acc_z_train_SD<-apply(body_acc_z_train,1,sd)

body_gyro_x_train<-read.table("UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt", header=FALSE, sep="")
body_gyro_x_train_mean<-apply(body_gyro_x_train, 1, mean)
body_gyro_x_train_SD<-apply(body_gyro_x_train,1,sd)

body_gyro_y_train<-read.table("UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt", header=FALSE, sep="")
body_gyro_y_train_mean<-apply(body_gyro_y_train, 1, mean)
body_gyro_y_train_SD<-apply(body_gyro_y_train,1,sd)

body_gyro_z_train<-read.table("UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt", header=FALSE, sep="")
body_gyro_z_train_mean<-apply(body_gyro_z_train, 1, mean)
body_gyro_z_train_SD<-apply(body_gyro_z_train,1,sd)

total_acc_x_train<-read.table("UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt", header=FALSE, sep="")
total_acc_x_train_mean<-apply(total_acc_x_train, 1, mean)
total_acc_x_train_SD<-apply(total_acc_x_train,1,sd)

total_acc_y_train<-read.table("UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt", header=FALSE, sep="")
total_acc_y_train_mean<-apply(total_acc_y_train, 1, mean)
total_acc_y_train_SD<-apply(total_acc_y_train,1,sd)

total_acc_z_train<-read.table("UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt", header=FALSE, sep="")
total_acc_z_train_mean<-apply(total_acc_z_train, 1, mean)
total_acc_z_train_SD<-apply(total_acc_z_train,1,sd)

e<-cbind(subject, y_train, x_train_mean, x_train_SD, body_acc_x_train_mean, body_acc_x_train_SD, 
         body_acc_y_train_mean, body_acc_y_train_SD, body_acc_z_train_mean, body_acc_z_train_SD, 
         body_gyro_x_train_mean, body_gyro_x_train_SD, body_gyro_y_train_mean, body_gyro_y_train_SD,
         body_gyro_z_train_mean, body_gyro_z_train_SD, total_acc_x_train_mean,  total_acc_x_train_SD, 
         total_acc_y_train_mean, total_acc_y_train_SD, total_acc_z_train_mean, total_acc_z_train_SD)

e$activity<-factor(e$activity, levels=labels$V1, labels=labels$V2)
colnames(e)<-c("subject", "activity", "featuremean", "featureSD", "body_acc_x_mean", "body_acc_x_SD", 
               "body_acc_y_mean", "body_acc_y_SD", "body_acc_z_mean", "body_acc_z_SD", 
               "body_gyro_x_mean", "body_gyro_x_SD", "body_gyro_y_mean", "body_gyro_y_SD",
               "body_gyro_z_mean", "body_gyro_z_SD", "total_acc_x_mean",  "total_acc_x_SD", 
               "total_acc_y_mean", "total_acc_y_SD", "total_acc_z_mean", "total_acc_z_SD")

#Binding together both sets into one dataset
f<-rbind(e,d)

write.csv(f, file="f.csv")

#Procesing the second independent dataset
library(dplyr)
f<-tbl_df(f)

g<-group_by(f, activity, subject)%>%summarize(featuremean=mean(featuremean), featureSD=mean(featureSD), body_acc_x_mean=mean(body_acc_x_mean), body_acc_x_SD=mean(body_acc_x_SD), 
                                                            body_acc_y_mean=mean(body_acc_y_mean), body_acc_y_SD=mean(body_acc_y_SD), body_acc_z_mean=mean(body_acc_z_mean), 
                                                            body_acc_z_SD=mean(body_acc_z_SD), body_gyro_x_mean=mean(body_gyro_x_mean), body_gyro_x_SD=mean(body_gyro_x_SD), 
                                                            body_gyro_y_mean=mean(body_gyro_y_mean), body_gyro_y_SD=mean(body_gyro_y_SD),
                                                            body_gyro_z_mean=mean(body_gyro_z_mean), body_gyro_z_SD=mean(body_gyro_z_SD), 
                                                            total_acc_x_mean=mean(total_acc_x_mean), total_acc_x_SD=mean(total_acc_x_SD), 
                                                            total_acc_y_mean=mean(total_acc_y_mean), total_acc_y_SD=mean(total_acc_y_SD), 
                                                            total_acc_z_mean=mean(total_acc_z_mean), total_acc_z_SD=mean(total_acc_z_SD))

write.csv(f, file="g.csv")

