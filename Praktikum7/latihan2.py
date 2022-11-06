#memanipulasi data jumlah penumpang berdasarkan group Sex
data3 = data[['Name', 'Sex', 'Age', 'Pclass', 'Fare']]
penumpang=data3.groupby('Sex')['Name'].nunique()
print('Jumlah Penumpang:\n', penumpang)

#memfilter data penumpang yang selamat berdasarkan Sex
data4 = data[['Name', 'Sex', 'Age', 'Pclass', 'Fare']]
notsurvivedpassanger=data4['Sex'].loc[data['Survived']==0]
print('Penumpang yang tidak survived:\n', notsurvivedpassanger.value_counts())
survivedpassanger=data4['Sex'].loc[data['Survived']==1]
print('\nPenumpang yang survived:\n', survivedpassanger.value_counts())
