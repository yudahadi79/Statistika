from google.colab import files
import pandas as pd
uploaded = files.upload()
import pandas as pd
#from pandas.tools import plotting
import matplotlib.pyplot as plt
import numpy as np
from sklearn.model_selection import train_test_split, cross_val_score, KFold, GridSearchCV
from sklearn.linear_model import LogisticRegression
from sklearn.tree import DecisionTreeClassifier,export_graphviz
from sklearn.metrics import confusion_matrix, accuracy_score
from sklearn.ensemble import GradientBoostingClassifier, RandomForestClassifier
data_yuda = pd.read_csv('/content/houseprice.csv')
data_yuda.head(5)
col_list=['Price']
numhouse = data_yuda[data_yuda.columns[data_yuda.columns.isin(col_list)]]
plt.figure(figsize=(10,5))
numhouse.boxplot(sym='r*', grid=False)
plt.show()
plt.figure(figsize=(15,5))
plt.subplot(121)
data_yuda['Price'].plot.hist(bins=10, title='Price')
plt.show()
col_list=['Price', 'SqFt']
numhouse = data_yuda[data_yuda.columns[data_yuda.columns.isin(col_list)]]
numhouse.plot.scatter(x='SqFt', y='Price')
col_list=['Price', 'Bedrooms']
numhouse = data_yuda[data_yuda.columns[data_yuda.columns.isin(col_list)]]
plt.figure(figsize=(15,5))
numhouse.boxplot(by='Bedrooms')
plt.show()
