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


Database design:
table1: doctor_info
doctor_id, first_name, last_name, country, region

CREATE TABLE doctor_info(
doctor_id SERIAL PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
country VARCHAR(50),
region VARCHAR(50)
);

table2: shift_info
shift_id, doctor_id, day, night, shift_type, date, patients_seen, km, total_earnings

CREATE TABLE shift_info(
shift_id SERIAL PRIMARY KEY,
doctor_id INTEGER,
shift_type VARCHAR(10),
night BOOLEAN,
date DATE,
patients_seen SMALLINT,
km NUMERIC, 
total_earnings NUMERIC not null,
FOREIGN KEY(doctor_id) REFERENCES doctor_info(doctor_id)
);

table 3: payment
shift_type, earnings_per_patient, extra_per_patient, extra, earnings_per_km,

CREATE TABLE payment(
shift_type VARCHAR(10) PRIMARY KEY,
earnings_per_patient NUMERIC not null, 
earnings_per_km NUMERIC not null
);

----------------

insert data:
- Doctor logs in with doctor info once. 
- Then any further data input is linked to the doctor_id
- After each shift doctor inputs shift_info table
- payment table is fixed based on shift_type salaries and so the payment table can be updated according to new tariffs


INSERT INTO doctor_info (first_name,last_name,country,region)
VALUES ( 'Jesper', 'Madsen', 'Denmark', 'Ostjylland');

INSERT INTO shift_info (doctor_id, shift_type, night, date, patients_seen, km, total_earnings)
VALUES ( '123', 'driving', 'True', '1990-08-23', '9', '134', '50000');

INSERT INTO payment(shift_type, earnings_per_patient, earnings_per_km)
VALUES ('driving', '2000', '10');