use HPRICE1, clear

reg price sqrft bdrms

predict pprice, xb //xb is the standard variable for linear fit
predict residuals, res //res is the standard variable for residuals

list price sqrft bdrms pprice residuals if sqrft == 2438 & bdrms == 4
