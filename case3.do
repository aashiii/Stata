use CEOSAL1, clear

reg lsalary lsales roe ros //OLS for question #2, unrestricted model

test roe ros //F test

reg lsalary lsales //reg of restricted model

// #3 t statistic for ros is 0.45 fom the regression
//critical value for 10% significance level from the t table one-tail test is 1.281
//one-tail test is done because the alternative hypothesis states that ros > 0
//since 0.45 < critical value ; we reject Ho
//command in stata to get critical value is invTtail(2.e+17,0.1) where 2.e+17 is the degree of freedom and 0.1 is the significance level


// #4 t statistic for roe is 4.26 from the regression
//critical value for 10% significance level from the t table two-tail test is 1.645
//since 4.26 > critical value: we fail to reject the Ho
//command in stata to get critical value is invttail(2.e+17,0.1) where 2.e+17 is the degree of freedom and 0.1 is the significance level


//for #5 and #6
//numerator of test statistic F
di (52.6559944-47.8608193)/2 //2 is q or the number of restrictions

//denominator of test statistic F
di (47.8608193)/205

//F statistic is
di (2.3975875/.23346741) //F statistic is 20.54

//to know if we should reject or not, we should look into the F distribution and this is by knowing the critical values
di invFtail(1, 205, 0.1) //inside the invFtail is q, and degrees of freedom or n-k-1, and confidence level = 90% 

di invFtail(1, 205, 0.05) //inside the invFtail is q, and degrees of freedom or n-k-1, and confidence level = 95% 

di invFtail(1, 205, 0.01) //inside the invFtail is q, and degrees of freedom or n-k-1, and confidence level = 99%

//conclusion is that you can reject with 90%, 95% and 99% because critical value is < F statistics

//alternative: calculate the p-value
di Ftail(1, 205, 20.538948) // q, degrees of freedom, and F statistic 


*ttest ros == 0, level(90) 

*ttest roe == 0, level(90)
