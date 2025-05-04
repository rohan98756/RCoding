# Load the 'faraway' library
library(faraway)

# One way table: Proportion of pregnancies in Pima Indian women
number_of_women <- table(pima$pregnant)
print(number_of_women)

# One way table: Proportion of age in Pima Indian women 
women_by_age <-table(pima$age)
print(format(women_by_age, justify = "right"))

#Two way table: Relationship between bmi and diabetes
test_and_bmi <- table(pima$bmi, pima$test)
print(format(test_and_bmi, justify="right"))

#Subset:Pregnancies ≥ 5 in Pima Indian Women (one way table)
women_5pregOrMore <- number_of_women[6:17]
print(format(women_5pregOrMore, justify = "centre"))
#Subset: Pregnancies ≥ 5 in Pima Indian Women (two way table) with respect to BMI
two_table <- table(pima$pregnant > 5,pima$bmi)
print(format(two_table, justify = "centre"))

HW02sub=subset(pima,age>27)
print(HW02sub)

one_way_table <- table(HW02sub$pregnant)
print("One-way Table:")
print(one_way_table)

# Create a two-way table for the 'diabetes' and 'pregnant' variables
two_way_table <- table(HW02sub$age, HW02sub$pregnant)
print("Two-way Table:")
print(two_way_table)
