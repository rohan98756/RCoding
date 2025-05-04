# Load the 'faraway' library
library(faraway)

# data frame with test==0 
df <- pima[pima$test == 0, ]
print(df)

print(paste("The mean diabetes for test==0 is", mean(df$diabetes)))

#data frame with test==1
df2 <- pima[pima$test==1,]
print(df2)

print(paste("The mean diabetes for test==1 is", mean(df2$diabetes)))
