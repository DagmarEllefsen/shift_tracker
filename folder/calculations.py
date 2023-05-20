# input variables:

# I only want these to be input once and then stored for that profile
# stored in the doctor info table
# how?
first_name = input("first name")
last_name = input("last name")
country = input("country")
region = input("region")

# these should be input per shift
# stored in the shift info table, linked to doctor info through the doctor_id
# dr id needs to be pulled from the doctor info table for the user and added to each of these entries
# how?

shift_type = input("Was your shift: driving, phone or consultation?")
# front end I want the user to click a button for one of these options
night = input("was it a night shift? respond True or False")
# how do I make this a boolean input option?
date = input('what date was your shift?')
# can this be a front-end calendar?