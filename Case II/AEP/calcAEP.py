import os
import numpy as np
import csv
import math

distance = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]

power = [0,0,0,0,0,0,0,0,0]

def calcdistance():
	with open('distance.csv') as file_name:
		csv_file = csv.reader(file_name)
		location = list(csv_file)
	distance [0] = math.sqrt((float(location[0][0])-float(location[1][0]))*(float(location[0][0])-float(location[1][0]))+(float(location[0][1])-float(location[1][1]))*(float(location[0][1])-float(location[1][1])))
	distance [1] = math.sqrt((float(location[0][0])-float(location[2][0]))*(float(location[0][0])-float(location[2][0]))+(float(location[0][1])-float(location[2][1]))*(float(location[0][1])-float(location[2][1])))
	distance [2] = math.sqrt((float(location[0][0])-float(location[3][0]))*(float(location[0][0])-float(location[3][0]))+(float(location[0][1])-float(location[3][1]))*(float(location[0][1])-float(location[3][1])))
	distance [3] = math.sqrt((float(location[0][0])-float(location[4][0]))*(float(location[0][0])-float(location[4][0]))+(float(location[0][1])-float(location[4][1]))*(float(location[0][1])-float(location[4][1])))
	distance [4] = math.sqrt((float(location[0][0])-float(location[5][0]))*(float(location[0][0])-float(location[5][0]))+(float(location[0][1])-float(location[5][1]))*(float(location[0][1])-float(location[5][1])))
	distance [5] = math.sqrt((float(location[0][0])-float(location[6][0]))*(float(location[0][0])-float(location[6][0]))+(float(location[0][1])-float(location[6][1]))*(float(location[0][1])-float(location[6][1])))
	distance [6] = math.sqrt((float(location[0][0])-float(location[7][0]))*(float(location[0][0])-float(location[7][0]))+(float(location[0][1])-float(location[7][1]))*(float(location[0][1])-float(location[7][1])))
	distance [7] = math.sqrt((float(location[1][0])-float(location[2][0]))*(float(location[1][0])-float(location[2][0]))+(float(location[1][1])-float(location[2][1]))*(float(location[1][1])-float(location[2][1])))
	distance [8] = math.sqrt((float(location[1][0])-float(location[3][0]))*(float(location[1][0])-float(location[3][0]))+(float(location[1][1])-float(location[3][1]))*(float(location[1][1])-float(location[3][1])))
	distance [9] = math.sqrt((float(location[1][0])-float(location[4][0]))*(float(location[1][0])-float(location[4][0]))+(float(location[1][1])-float(location[4][1]))*(float(location[1][1])-float(location[4][1])))
	distance [10] = math.sqrt((float(location[1][0])-float(location[5][0]))*(float(location[1][0])-float(location[5][0]))+(float(location[1][1])-float(location[5][1]))*(float(location[1][1])-float(location[5][1])))
	distance [11] = math.sqrt((float(location[1][0])-float(location[6][0]))*(float(location[1][0])-float(location[6][0]))+(float(location[1][1])-float(location[6][1]))*(float(location[1][1])-float(location[6][1])))
	distance [12] = math.sqrt((float(location[1][0])-float(location[7][0]))*(float(location[1][0])-float(location[7][0]))+(float(location[1][1])-float(location[7][1]))*(float(location[1][1])-float(location[7][1])))
	distance [13] = math.sqrt((float(location[2][0])-float(location[3][0]))*(float(location[2][0])-float(location[3][0]))+(float(location[2][1])-float(location[3][1]))*(float(location[2][1])-float(location[3][1])))
	distance [14] = math.sqrt((float(location[2][0])-float(location[4][0]))*(float(location[2][0])-float(location[4][0]))+(float(location[2][1])-float(location[4][1]))*(float(location[2][1])-float(location[4][1])))
	distance [15] = math.sqrt((float(location[2][0])-float(location[5][0]))*(float(location[2][0])-float(location[5][0]))+(float(location[2][1])-float(location[5][1]))*(float(location[2][1])-float(location[5][1])))
	distance [16] = math.sqrt((float(location[2][0])-float(location[6][0]))*(float(location[2][0])-float(location[6][0]))+(float(location[2][1])-float(location[6][1]))*(float(location[2][1])-float(location[6][1])))
	distance [17] = math.sqrt((float(location[2][0])-float(location[7][0]))*(float(location[2][0])-float(location[7][0]))+(float(location[2][1])-float(location[7][1]))*(float(location[2][1])-float(location[7][1])))
	distance [18] = math.sqrt((float(location[3][0])-float(location[4][0]))*(float(location[3][0])-float(location[4][0]))+(float(location[3][1])-float(location[4][1]))*(float(location[3][1])-float(location[4][1])))
	distance [19] = math.sqrt((float(location[3][0])-float(location[5][0]))*(float(location[3][0])-float(location[5][0]))+(float(location[3][1])-float(location[5][1]))*(float(location[3][1])-float(location[5][1])))
	distance [20] = math.sqrt((float(location[3][0])-float(location[6][0]))*(float(location[3][0])-float(location[6][0]))+(float(location[3][1])-float(location[6][1]))*(float(location[3][1])-float(location[6][1])))
	distance [21] = math.sqrt((float(location[3][0])-float(location[7][0]))*(float(location[3][0])-float(location[7][0]))+(float(location[3][1])-float(location[7][1]))*(float(location[3][1])-float(location[7][1])))
	distance [22] = math.sqrt((float(location[4][0])-float(location[5][0]))*(float(location[4][0])-float(location[5][0]))+(float(location[4][1])-float(location[5][1]))*(float(location[4][1])-float(location[5][1])))
	distance [23] = math.sqrt((float(location[4][0])-float(location[6][0]))*(float(location[4][0])-float(location[6][0]))+(float(location[4][1])-float(location[6][1]))*(float(location[4][1])-float(location[6][1])))
	distance [24] = math.sqrt((float(location[4][0])-float(location[7][0]))*(float(location[4][0])-float(location[7][0]))+(float(location[4][1])-float(location[7][1]))*(float(location[4][1])-float(location[7][1])))
	distance [25] = math.sqrt((float(location[5][0])-float(location[6][0]))*(float(location[5][0])-float(location[6][0]))+(float(location[5][1])-float(location[6][1]))*(float(location[5][1])-float(location[6][1])))
	distance [26] = math.sqrt((float(location[5][0])-float(location[7][0]))*(float(location[5][0])-float(location[7][0]))+(float(location[5][1])-float(location[7][1]))*(float(location[5][1])-float(location[7][1])))
	distance [27] = math.sqrt((float(location[6][0])-float(location[7][0]))*(float(location[6][0])-float(location[7][0]))+(float(location[6][1])-float(location[7][1]))*(float(location[6][1])-float(location[7][1])))

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
	calcAEP()
	mindistance = min(distance)
	AEP = (float(power [0])*0.106+float(power [1])*0.07+float(power [2])*0.05+float(power [3])*0.072+float(power [4])*0.148+float(power [5])*0.203+float(power [6])*0.21+float(power [7])*0.141)*8766/1000
	with open('AEP.dat','w') as f:
		f.write(str(AEP)+'\n')
		f.write(str(mindistance))

		
