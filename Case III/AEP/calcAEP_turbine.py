import os
import io
import numpy as np
import csv
import math

power = [0,0,0,0,0,0,0,0,0,0,0,0,0]

f = open('actuatorDisk8S1.dat', encoding='utf-8')
line = f.readline().strip()
power [0] =line

f = open('actuatorDisk8S2.dat', encoding='utf-8')
line = f.readline().strip()
power [1] =line

f = open('actuatorDisk8S3.dat', encoding='utf-8')
line = f.readline().strip()
power [2] =line

f = open('actuatorDisk8S4.dat', encoding='utf-8')
line = f.readline().strip()
power [3] =line

f = open('actuatorDisk8S5_1.dat', encoding='utf-8')
line = f.readline().strip()
power [4] =line

f = open('actuatorDisk8S5_2.dat', encoding='utf-8')
line = f.readline().strip()
power [5] =line

f = open('actuatorDisk8S6_1.dat', encoding='utf-8')
line = f.readline().strip()
power [6] =line

f = open('actuatorDisk8S6_2.dat', encoding='utf-8')
line = f.readline().strip()
power [7] =line

f = open('actuatorDisk8S7_1.dat', encoding='utf-8')
line = f.readline().strip()
power [8] =line

f = open('actuatorDisk8S7_2.dat', encoding='utf-8')
line = f.readline().strip()
power [9] =line

f = open('actuatorDisk8S7_3.dat', encoding='utf-8')
line = f.readline().strip()
power [10] =line

f = open('actuatorDisk8S8_1.dat', encoding='utf-8')
line = f.readline().strip()
power [11] =line

f = open('actuatorDisk8S8_2.dat', encoding='utf-8')
line = f.readline().strip()
power [12] =line

		
AEP = (float(power [0])*0.03+float(power [1])*0.03+float(power [2])*0.08+float(power [3])*0.08+float(power [4])*0.04+float(power [5])*0.08+float(power [6])*0.06+float(power [7])*0.12++float(power [8])*0.02++float(power [9])*0.15++float(power [10])*0.15++float(power [11])*0.08++float(power [12])*0.08)*8766/1000

distance = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]


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
mindistance = min(distance)

with open('AEP.dat','w') as f:
	f.write(str(AEP)+'\n'+str(mindistance))

		
