#Rental Application

###Learning Objective: ...use multiple files in a program to organize code

###Overview:
* Owners of buildings can rent apartments to potential tenants
* You are building the app
* This is a multi-file project that has a main file for working with the objects, and each class as separate files.  

###Spec:

|Building - attribute|type|
|:----------|:-----------|
|address|string|
|style|string|
|has_doorman|boolean|
|is_walkup|boolean|
|num_floors|integer|
|apartments|array of apartment objects|

|Apartment - attribute|type|
|:----------|:-----------|
|price|decimal|
|is_occupied|boolean|
|sqft|integer|
|num_beds|integer|
|num_baths|integer|
|renters|array of person objects|

|Person (assume tenants or prospective tenants)|type|
|:----------|:-----------|
|name|string|
|age|integer|
|gender|string|
|apartment|apartment object|

* Write attr_accessors for each object
* Write initialize methods for each object
* Write to_s methods for each object
* Write a main.rb file that allows you to build and add new objects


