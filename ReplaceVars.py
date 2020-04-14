import csv
import os

#Appending data to variables.tf
def writeVars(var, val, type):
    file = open('variables.tf', 'a')
    string ='''
    variable "{v1}" {{
        type = {t1}
        default = {v2}
    }}
    '''.format(v1=var, v2=val, t1=type)
    file.write(string)

#The CSV file should be in the same directory as the Python script
def getDataFromCSV():
    dir = os.listdir('.')
    for item in dir:
        if ".csv" in item:
            data = item
    print("Writing CSV data to variables.tf file...")
    #Reading and formatting CSV values
    with open(data) as file:
        csvfile = csv.DictReader(file)
        for row in csvfile:
            for item in row:
                field = str(item)
                value = str(row[item])
                chars = value.split(".")
                if chars[0].isdigit()==True:
                    value = '["'+value+'"]'
                    type = 'list(string)'
                elif value.lower()=="true" or value.lower()=="false":
                    type = 'bool'
                elif chars[0].isalpha()==True and "true" or "false" not in value.lower():
                    value = '"'+value+'"'
                    type = 'string'
                writeVars(field, value, type)
                
try:
    getDataFromCSV()
    print("Done.")
except:
    print("Unable to gather values from CSV file.")
