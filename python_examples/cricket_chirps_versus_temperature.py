import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

#Import the data from the TXT file as a DataFrame
dataframe = pd.read_csv('cricket_chirps_versus_temperature.txt', header=None)
dataframe.columns = ['temp', 'chirps']

#Training data
X = dataframe[['temp']]
y = dataframe[['chirps']]

#Create and fit the model
from sklearn.linear_model import LinearRegression
model = LinearRegression()
model.fit(X,y)

#Plot the training data (red) and the line of regression (green)
plt.scatter(X, y, color = "red")
plt.plot(X, model.predict(X), color = "green")
plt.xlabel("Temperature in Degrees Fahrenheit")
plt.ylabel("Rate of Cricket Chirping")
plt.show()