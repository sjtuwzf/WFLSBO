import os
import numpy as np

power = [0,0,0,0,0]

f = open('speed6', encoding='utf-8')
line = f.readline().strip()
power [0] =line

f = open('speed8', encoding='utf-8')
line = f.readline().strip()
power [1] =line

f = open('speed10', encoding='utf-8')
line = f.readline().strip()
power [2] =line

f = open('speed12', encoding='utf-8')
line = f.readline().strip()
power [3] =line
		
AEP = (float(power [0])*0.2+float(power [1])*0.2+float(power [2])*0.3+float(power [3])*0.3)*8766

with open('AEP.dat','w') as f:
	f.write(str(AEP))

		
