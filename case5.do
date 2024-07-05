use WAGE1, clear

//answer to #1
reg wage exper expersq 
//formula is wage(hat) = 3.73 + 0.30exper - 0.006expersq
// if expersq is not given you can use command "gen" like gen exps = exper^2

//answer to #2
//as B2 is negative or B1 > 0, B2 < 0, marginal effect will decrease
//do hypothesis testing for 
di invttail(2.e+17,0.01)
//critical value is 2.326
//tvalue > critical value and pvalue < 0.01 hence we will reject Ho and expersq is statistically significant

//answer to #3
di (0.298-2*0) //first year of experience
di (0.298-2*1*0.0061) //second year of experience
//answer is 0.2858 for second year and 0.298 for first year

//answer to #4
di (0.298-2*10*0.0061) //wage for 10 years of experience
di (0.298-2*11*0.0061) //wage for 11 years of experience 
di (0.176-0.1638) //11years-10 years 
//answer is 0.0122

//answer to #5
di (0.298/(2*0.0061)) //where marginal effect = 0
//answer is 24.43 years

//answer to #6
tabulate exper
//at 24 years, cumulative experience is 72%, the curve to the right is 28%, hence we cannot ignore the right curve (28% is still significant)

//significance is based on experience in work -- for this problem, 28% is still significant

//answer to #7
twoway scatter wage exper || lfit wage exper || qfit wage exper
//qfit is the quadratic curve and the lfit is the regression line
//estimated curve model is better because it presents the maximum marginal effect (turning point) of exper against wage
