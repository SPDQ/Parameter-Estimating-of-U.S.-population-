# Parameter-Estimating-of-U.S.-population-
We use Malthus model and Logistic model to do regeression of U.S. population in 1790-2000. We have the data 
of U.S. population in 1790-2000 with 10-year interval. 

Part 1
---
In folder Part1, we use two methods to do regression by using Malthus model. In file poly.m, we use a Matlab function polyfit to do 
regression. In file MSE2.m, we use gradient descent with a least square loss function to do regression. 

Part 2
---
In folder Part2, we use four methods to do regression by using Logistic model. In file fordif.m, we use forward difference and polyfit to 
do regression. In file cendif.m, we use central difference and polyfit to do regression. In files isqcur.m and isqcur2.m, we use a function lsqcurvefit 
to estimate the solution of logistic model directly. In isqcur.m, there are two parameters and in isqucr2.m, there are three parameters.
