
for i in range(1,601):
    if(i<10):
         print(f"mv -v ./xx0{i} {i}.mol2")
    else:
         print(f"mv -v ./xx{i} {i}.mol2")
         with open("test.txt", "a") as myfile:
              myfile.write(f"mv -v ./xx{i} {i}.mol2\n")


# for i in range(1,4):

#     f = open(f"2.csv", "r")
#     print(f.read()) 
    # with open("test.txt", "a") as myfile:
        #  myfile.write(f"mv -v ./xx{i} {i}.mol2\n")


#import csv
# with open('2.csv') as f:
#     reader = csv.DictReader(f, delimiter=',')
#     for row in reader:
#         print(row[1][3]) 

# for file in xx*; do read line;  mv -v "${file}" "${line}";  done < list




#with open("2.csv") as file:

    #csvreaded = csv.reader(file)
    #header = next(csvreaded)

    #for row in csvreaded:
        #print(type(row))
        #with open('testing.csv', 'w') as f: 
           # write = csv.writer(f) 
           # write.writerow(row) 




