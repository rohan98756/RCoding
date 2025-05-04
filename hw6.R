set.seed(13245) 
library(EnvStats)
sample_one <- runif(9,0,1)
sample_two <- runif(9,0,1.3)
qqnorm(sample_one)
qqline(sample_one)
qqnorm(sample_two)
qqline(sample_two)

t_test_result = t.test(sample_one,sample_two, var.equal = TRUE, paired=FALSE)
perm_result = twoSamplePermutationTestLocation(x=sample_one, y=sample_two, fcn="mean", alternative="two.sided");
print(perm_result);
print(t_test_result)
