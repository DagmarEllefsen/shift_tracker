# shift_tracker
practise project to fail and learn

[Click here to view the fancy page]([https://github.io/DagmarEllefsen/shift_tracker/folder](https://rawgit.com/DagmarEllefsen/shift_tracker/blob/main/index.html))

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
    - shift type (driving, phone, consultation)


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

ERD: https://drawsql.app/teams/sigma-labs/diagrams/doctors

----------------

insert data:
- Doctor logs in with doctor info once. 
- Then any further data input is linked to the doctor_id
- After each shift doctor inputs shift_info table
- payment table is fixed based on shift_type salaries and so the payment table can be updated according to new tariffs



