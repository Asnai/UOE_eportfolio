import pandas as pd


f1 = open("mn.csv","r")
data = f1.readlines()


data[0] = data[0][3:]
data[0] = data[0].replace('"','')
data[0] = data[0].replace('\n','')
d_header = data[0].split(',')

header = pd.read_csv("mn_headers.csv")
header = header.drop(columns=['Question'])
header = header.values.tolist()

final_header = []

remaining = []

for i in d_header:
    c = False
    for j in header:
        if j[0] == i:
            final_header.append(j[1])
            c = True
            break
    if not c:
        remaining.append(i)
        final_header.append(i)
        
    

print("Unchanged headers")
print(remaining)

data[0] = ','.join(final_header)
data[0] = ' ,' + data[0] + '\n'

f = open("result.csv", "w")
f.writelines(data)





    








