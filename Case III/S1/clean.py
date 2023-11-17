import os
import shutil


csv_name = []
dat_name = []
folder_name = []

def name():
	a = os.listdir()
	for j in a:
		if os.path.splitext(j)[1] == '.csv':
			csv_name.append(j)
		if os.path.splitext(j)[1] == '.dat':
			dat_name.append(j)
		if 'processor' in j:
			folder_name.append(j)
if __name__ == '__main__':
	name()
	for csvname in csv_name:
		os.remove(csvname)
	for datname in dat_name:
		os.remove(datname)
	for foldername in folder_name:
		shutil.rmtree(foldername)
