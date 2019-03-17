% convert .mat data to .dat 
t = dlmread('DesvioSW.mat');
dlmwrite('DesvioSW.dat',[desvio],'delimiter',' ')
