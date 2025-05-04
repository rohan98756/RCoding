# Load the 'faraway' library
library(faraway)

df <- data.frame(glucose = pima$glucose)

q1 <- quantile(pima$glucose, probs = 0.25)
q4 <- quantile(pima$glucose, probs = 0.75)

subset_q1 <- subset(pima, glucose <= q1)
subset_q4 <- subset(pima, glucose >= q4)

# Compute mean of 'diabetes' for Q1 subset
diabetes_q1 <- tapply(subset_q1$diabetes, subset_q1$diabetes,mean)
print(mean(diabetes_q1))

# Compute mean of 'diabetes' for Q4 subset
diabetes_q4 <- tapply(subset_q4$diabetes, subset_q4$diabetes,mean)
print(mean(diabetes_q4))

