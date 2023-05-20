# MVP version

# libraries
import pandas as pd
from datetime import datetime

# input
date_str = input("what date was your shift? (year-month-day")
date = datetime.strptime(date_str, '%Y-%m-%d')

shift_earnings = float(input("what did you earn?"))

shift_type = input("What type of shift was it? driving, phone or consultation")
# ideally this would be 3 locked option the user ticks?

if shift_type == "driving":
    km = float(input("how many km did you drive?"))

shift_list = [date, shift_earnings, shift_type, km]

# how to store this?
# save the input + access it to make calculations
df = pd.DataFrame(columns=["date", "shift_earnings", "shift_type", "km"])
df.append(shift_list)
df.head()
print(df)

# how do I display the output?
# how do I put the data into a df? (or into my database?)

# calculations
# earnings summary - filter
# def monthly_earnings(start_date, end_date, earnings_list):
    # define time period
    # sum all earnings entries in that period
    # I should probably put all the entries into a df? so the dates and rows are linked