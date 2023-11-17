import os
import numpy as np
import csv
import math

distance = []

power = [0,0,0,0,0,0,0,0,0]

def calcdistance():
	with open('distance.csv') as file_name:
		csv_file = csv.reader(file_name)
		location = list(csv_file)
		for i in range(0,8):
			for j in range(i+1,8):
				distance1 = math.sqrt((float(location[i][0])-float(location[j][0]))*(float(location[i][0])-float(location[j][0]))+(float(location[i][1])-float(location[j][1]))*(float(location[i][1])-float(location[j][1])))
				distance.append(distance1)

def calcAEP():

	f = open('S1.dat', encoding='utf-8')
	line = f.readline().strip()
	power [0] =line

	f = open('S2.dat', encoding='utf-8')
	line = f.readline().strip()
	power [1] =line

	f = open('S3.dat', encoding='utf-8')
	line = f.readline().strip()
	power [2] =line

	f = open('S4.dat', encoding='utf-8')
	line = f.readline().strip()
	power [3] =line

	f = open('S5.dat', encoding='utf-8')
	line = f.readline().strip()
	power [4] =line

	f = open('S6.dat', encoding='utf-8')
	line = f.readline().strip()
	power [5] =line

	f = open('S7.dat', encoding='utf-8')
	line = f.readline().strip()
	power [6] =line

	f = open('S8.dat', encoding='utf-8')
	line = f.readline().strip()
	power [7] =line

if __name__ == '__main__':
	calcdistance()
	print (distance)
	calcAEP()
	mindistance = min(distance)
	AEP = (float(power [0])*0.106+float(power [1])*0.07+float(power [2])*0.05+float(power [3])*0.072+float(power [4])*0.148+float(power [5])*0.203+float(power [6])*0.21+float(power [7])*0.141)*8766/1000
	with open('AEP.dat','w') as f:
		f.write(str(AEP)+'\n')
		f.write(str(mindistance))

		
