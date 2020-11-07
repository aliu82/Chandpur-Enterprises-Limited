#Group Project Task 1
#IEOR 162
#Lily Engel, Ben Lee, Alice Liu, Jessica Richard

#Load task1.dat before running this program

var x{1..7}>=0; #tons each raw material per batch

param r{1..7}; #recovery each raw material
param c{1..7}; #cost each raw material
param minim{1..7}; #minimum %RM per batch
param maxim{1..7}; #maximum %RM per batch

maximize profit: 29000*sum{i in 1..7} r[i]*x[i] - sum{i in 1..7} c[i]*x[i] - 4.3*(1200+700*sum{i in 1..7} x[i]) - 3000 - 2000*sum{i in 1..7} r[i]*x[i];

subject to

capacity: sum{i in 1..7} r[i]*x[i] <= 4;  #4000 kg finished product per batch

max_lims {j in 1..7}: x[j] <= maxim[j]*sum{i in 1..7} x[i];  #max limit each raw material per batch
min_lims {j in 1..7}: x[j] >= minim[j]*sum{i in 1..7} x[i];  #min limit each raw material per batch
