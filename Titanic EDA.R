titanic_train = read.csv("train.csv")

#head/tail
head(titanic_train)
tail(titanic_train)

#basic summary
summary(titanic_train)

# check all columns class
sapply(titanic_train, class)

#change columns class
#Survived: from integer into factor
titanic_train$Survived = as.factor(titanic_train$Survived)
titanic_train$Sex = as.factor(titanic_train$Sex)

#missing data
is.na(titanic_train)
sum(is.na(titanic_train))

#drop missing data
titanic_train_dropedna = titanic_train[rowSums(is.na(titanic_train)) <= 0,]

#separate data
titanic_survivor = titanic_train_dropedna[titanic_train_dropedna$Survived == 1, ]
titanic_nonsurvivor = titanic_train_dropedna[titanic_train_dropedna$Survived == 0, ]

#barchart
barplot(table(titanic_survivor$Sex))
barplot(table(titanic_nonsurvivor$Sex))

#histogram
hist(titanic_survivor$Age)
hist(titanic_nonsurvivor$Age)

hist(titanic_survivor$SibSp)
hist(titanic_nonsurvivor$SibSp)
