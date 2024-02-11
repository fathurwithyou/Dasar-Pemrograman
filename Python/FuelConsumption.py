file = open('FuelConsumption.csv')
txt = file.readlines()
file.close()
result = "Fuel Consumption City,Fuel Consumption Hwy,Fuel Consumption Comb\n"
for i in txt[1:]:
    ans = []
    for num in i.rstrip().split(','):
        res = None
        if num.find('L/100km') != -1 or num.find('liters per 100 km') != -1:
            res = float(num.split()[0])
        elif num.find('L/10km') != -1:
            res = float(num.split()[0]) * 10
        elif num.find('km per L') != -1 or num.find('km/L') != -1:
            res = 1/float(num.split()[0]) * 100
        elif num.find('MPG (AS)') != -1:
            res = 100 / (float(num.split()[0]) * 0.425144)
        elif num.find('mpg Imp.') != -1:
            res = 100 / (float(num.split()[0]) * 0.354006)
        else:
            res = 'NaN'
        ans.append(str(res))
    result += ",".join(ans) + '\n'
file = open('FuelConsumptionCleaned.csv', 'w')
file.write(result)
file.close()