use WAGE1, clear

//answer to question 1
histogram wage, frequency width(0.5)
//skewed to the left


//answer to question 2
histogram lwage, frequency width (0.05)
//skewed to the right a bit but more normally distributed

//answer to question 3
reg lwage educ exper tenure
//equation is lwage(hat) = 0.28 + 0.09educ + 0.004exp +0.022tenure

//answer to question 4
di invttail(2.e+17,0.01)
//t value of exper is 2.39 > critical level (2.33) at 1% significance level; hence we reject Ho and exper is statistically significant

//answer to question 5
//change in y/change in x = B and in this question, experience is being asked hence 1 year additional is 1xB2 =0.004 or 0.4% estimated return

//answer to question 6
//adding three more years is 3xB2= 0.004x3
di (3*0.004) //yields 0.012 or 
//adding 3 more years of experience increases the wage by 1.2%
