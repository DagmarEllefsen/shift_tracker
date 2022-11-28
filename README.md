# shift_tracker
practise project to fail and learn

[Click here to view the fancy page](https://github.io/DagmarEllefsen/shift_tracker/folder/)

data: 
- all earnings reported in DKKR
- all time stamps in GMT+1

Requirements: 
- input: 
    - hours worked (timestamps from x - y) + input validation
    - hourly rate/ shift type
    - Name
    - patients seen (?)
    - salary per patient


- Output:
    - dashboard / shift_tracker
    - monthly salary (set to payroll months - so it can be used to verify if the money paid out is correct)
    - average monthly earnings (for period you can set the filter to)
    - average daily earnings
    - average hourly wage
    - hours worked per month/year
    - filters: time, shift type

need to:
- save the data

nice to:
- work as an app in the app store (first priority for iphone)

build with:
- python + flask
- deploy with: render 
- somewhere to do sql: elephant sql 

steps:
1. do sql: designing the database and making sure I can talk to it
2. basic flask (write it in .py file )
3. front end stuff


Database design:
table1: doctor_info
doctor_id, first_name, last_name, country, region

table2: shift_info
shift_id, doctor_id, start_datetime, end_datetime, day_or_night, shift_type, region, patients_seen

table 3: payment
salary_id, shift_type, hourly_rate, extra_per_patient