--Google Data Analytics - Automobile Data Set

--To check Distinct Fuel Data Type In a car
select distinct fuel_type
from GoogleAnalystics..automobile_data

--to check minimum and maximum length of a car
select MIN(length) as minimum_length, MAX(length) as maximum_length
from GoogleAnalystics..automobile_data

--To check if no of doors is null or not
select *
from GoogleAnalystics..automobile_data
where num_of_doors is null

--To update the no. of doors
update GoogleAnalystics..automobile_data
set num_of_doors = 'four'
where make = 'dodge'
and fuel_type = 'gas'
and body_style='sedan'

--To update the no of doors
update GoogleAnalystics..automobile_data
set num_of_doors = 'four'
where make = 'mazda'
and fuel_type = 'diesel'
and body_style='sedan'

--To check no of cylinders in car
select distinct num_of_cylinders
from GoogleAnalystics..automobile_data

--to update the error in no of cylinder
update GoogleAnalystics..automobile_data
set num_of_cylinders = 'two'
where num_of_cylinders = 'tow'

--To check compression ratio
select min(compression_ratio) as min_compression_ratio,max(compression_ratio) as max_compression_ratio
from GoogleAnalystics..automobile_data
where compression_ratio <> 70

--Count all the rows with error of compression ratio
select COUNT(*) as no_of_rows_delete
from GoogleAnalystics..automobile_data
where compression_ratio = 70

--Delete the row with error after consulting sales manager
delete GoogleAnalystics..automobile_data
where compression_ratio = 70

--checking driving coloumn
select distinct drive_wheels, LEN(drive_wheels) as length_of_drive_wheels
from GoogleAnalystics..automobile_data

--Find maximum price of car 
select max(price)
from GoogleAnalystics..automobile_data







