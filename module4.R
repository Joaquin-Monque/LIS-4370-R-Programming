#Define Vectors
freq <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
bloodp <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
first <- as.factor(c("bad", "bad", "bad", "bad", "good", "good", "good", "good", "NA", "bad"))
second <- as.factor(c("low", "low", "high", "high", "low", "low", "high", "high", "high", "high"))
finaldecision <- as.factor(c("low", "high", "low", "high", "low", "high", "low", "high", "high", "high"))

#Create a data frame using vectors
patients_data <- data.frame(freq, bloodp, first, second, finaldecision)

#Converting 'first' to numeric: 'bad' == 1 and 'good' == 0
patients_data$firstNumeric <- ifelse(patients_data$first == "bad", 1, ifelse(patients_data$first == "good", 0, NA))

#Converting 'second' to numeric: 'low' == 0 and 'high' == 1
patients_data$secondNumeric <- ifelse(patients_data$second == "high", 1, 0)

#Side by Side Box Plot
boxplot(bloodp ~ finaldecision, main="Blood Pressure Distribution", ylab="Blood Pressure (mmHg)")

# Histogram for First Assessment
hist(patients_data$firstNumeric, main="Count of Good/Bad BP in First Assessment", xlab="(Left = Good) (Right = Bad)", breaks=2, labels=TRUE, right=FALSE, xaxt = "n")

# Histogram for Second Assessment
hist(patients_data$secondNumeric, main="Count of Low/High BP in Second Assessment", xlab="(Left = Low) (Right = High)", breaks=2, labels=TRUE, right=FALSE, xaxt = "n")

