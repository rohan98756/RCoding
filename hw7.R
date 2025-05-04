set.seed(23415)

library(EnvStats)

prop.test.result = prop.test(x =c(40,30), n = c(50,50),
                               conf.level = .95, correct = FALSE)
print(prop.test.result)

dat1 <- c(rep(1,40), rep(0, 10))
dat2 <- c(rep(1,30), rep(0, 20))

test.list <- twoSamplePermutationTestProportion(dat1, dat2, alternative = "two.sided")
print(test.list)