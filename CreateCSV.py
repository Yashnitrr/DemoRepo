import os
import csv
path = 'C:\\Users\\User\\Desktop\\ShopinTrial'
finalList=[]
fields= ['Source','Gender','Category','General','Type','Occassion','Length','Neckline','Sleeve','Material','Color','Size','Price']
filename= 'ShopinTrial.csv'
#print (lst)
for file in os.listdir(path):
    finalList.append(['Google','Male','Apparel','Dress','A-Line',file,'NA','NA','NA','NA','NA','NA','NA'])

with open(filename,'w') as csvfile:
    csvwriter = csv.writer(csvfile)
    csvwriter.writerow(fields)
    csvwriter.writerows(finalList)
print(finalList)
'''
files = os.listdir(path)
for name in files:
    print(name)
'''