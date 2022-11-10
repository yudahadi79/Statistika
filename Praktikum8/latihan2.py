col_list=['Price', 'Bedrooms']
numhouse = data_yuda[data_yuda.columns[data_yuda.columns.isin(col_list)]]
numhouse.plot.scatter(x='Bedrooms', y='Price')
col_list=['Price', 'Bathrooms']
numhouse = data_yuda[data_yuda.columns[data_yuda.columns.isin(col_list)]]
numhouse.plot.scatter(x='Bathrooms', y='Price')
col_list=['Price', 'Bathrooms']
numhouse = data_yuda[data_yuda.columns[data_yuda.columns.isin(col_list)]]
plt.figure(figsize=(15,5))
numhouse.boxplot(by='Bathrooms')
plt.show()
