create database cardekho;
select * from car_dekho;

-- 1.Get total number of records.
select count(*) from car_dekho;

-- 2.The manager asked the employee,how many cars will be available in 2023? 
select count(*) from car_dekho where year=2023;

-- 3.The manager asked the employee,how many cars will be available in 2020,2021,2022
select count(*) from car_dekho where year in (2020,2021,2022) group by year;

-- 4.Client asked me to print the total of all cars by year.I don't see all the details.
select year,count(*) as car from car_dekho group by year;

-- 5.Client asked the car dealer agent,how many diesel cars will be there in 2020?
select count(*) from car_dekho where fuel='Diesel' and year=2020;

-- 6.The Manager told the employee to give a print of all the fuel cars(Petrol,Diesel & CNG)come by all year.
select year,count(*) from car_dekho where fuel='Petrol' group by year;
select year,count(*) from car_dekho where fuel='Diesel' group by year;
select year,count(*) from car_dekho where fuel='CNG' group by year;

-- 7.Manager said there were more than 100 cars in a given year,which year had more than 100 cars?
select year,count(*) as number from car_dekho group by year having number>100;

-- 8.The manager said to the employee, he need all cars count details between 2015 & 2023.
select count(*) from car_dekho where year between 2015 and 2023;

-- 9.Manager needs complete list of the cars between 2015 to 2023.
select * from car_dekho where year between 2015 and 2023; 
















