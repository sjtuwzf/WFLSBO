This repo contains the case files for the paper: Wang, Zhenfan, Yu Tu, Kai Zhang, Zhaolong Han, Yong Cao, and Dai Zhou. "An optimization framework for wind farm layout design using CFD-based Kriging model." arXiv preprint arXiv:2309.01387 (2023).

# Introduction
The SBO-based wind farm layout optimization are carried out 
with OpenFOAM 4.x and DAKOTA 6.12. 
In this framework, CFD simulations with rotors simplified as actuator disk are performed to predict AEP of wind farm on OpenFOAM. 
Construction of Kriging and implementation of SBO method are carried out using DAKOTA.
Two wind farm cases are optimized using this framework in the .zip. 


## Running the framework
Three types of files are defined mannually for running this framework.

1.Dakotafile: In this directory, an input file with suffix input for DAKOTA is defined. Surrogate, sampling method and optimizer are set up in this file. The shell scripts are to couple DAKOTA OpenFOAM.

2.OpenFOAM file: basefile or S1-S8 are directories where you can perform CFD simulations for different inflow directions. Wind farm power output in each direction is obtained with these CFD simulations. 

3.AEP file: Wind farm power output obtained from CFD simulations are transffered to this directories automatically with shell script defined in Dakotafile. calcAEP.py in this directory is defined according to wind rose. It is used to calculate AEP of wind farm.

File location in the shell scripts are all absolute location, and thus users need to modify them. If you hope to run this framework, you should execute commands below in the Dakotafile terminals：

```
dakota sbo_WFLO.in
```


