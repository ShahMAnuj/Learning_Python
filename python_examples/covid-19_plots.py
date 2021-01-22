import pandas as pd

#Our dataset, imported as a DataFrame
df = pd.read_csv('covid-19_data.csv')

#We drop the 'Date' column in our original dataframe
#And then we find the cumsum (cumulative sum) of the remaining columns
#This becomes our cumulative DataFrame
cumulative_df = df.drop(['Date'], axis=1).cumsum()

#Renaming the columns of our cumulative DataFrame
rename_map = {
    'India New Cases': 'India Cumulative Cases',
    'Mumbai New Cases': 'Mumbai Cumulative Cases',
}
cumulative_df_2 = cumulative_df.rename(columns=rename_map)

#Combining (concatenating) the original and the cumulative DataFrames
final_df = pd.concat([df,cumulative_df_2], axis=1)
final_df.head(4)

#Plotting!
import matplotlib.pyplot as plt
plt.loglog(final_df['India Cumulative Cases'], final_df['India New Cases'])
plt.loglog(final_df['Mumbai Cumulative Cases'], final_df['Mumbai New Cases'])
plt.title('Growth of COVID-19: Mumbai vs India')
plt.xlabel('Total confirmed cases')
plt.ylabel('New confirmed cases')
plt.legend(['India', 'Mumbai'])
plt.grid()
plt.show()