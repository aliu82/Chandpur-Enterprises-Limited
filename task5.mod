#Group Project Task 5
#IEOR 162
#Lily Engel, Ben Lee, Alice Liu, Jessica Richard

#Load task5.dat before running this program

var x{1..7} >= 0; #tons each raw material per month
var a >= 0; #number batches per month

param r{1..7}; #recovery each raw material
param c{1..7}; #cost each raw material
param minim{1..7}; #minimum %RM per batch
param maxim{1..7}; #maximum %RM per batch
param maxmon{1..7}; #maximum per month (tons)

maximize profit: 29000*sum{i in 1..7} r[i]*x[i] - sum{i in 1..7} c[i]*x[i] - 4.3*(1200*a+700*sum{i in 1..7} x[i]) - 3000*a - 2000*sum{i in 1..7} r[i]*x[i];

subject to

capacity: sum{i in 1..7} r[i]*x[i] <= 4*a;  #4000 kg finished product per batch, multiply by a for total

max_lims {j in 1..7}: x[j] <= maxim[j]*sum{i in 1..7} x[i];  #max limit each raw material per batch -> per month (equivalent) since ratio
min_lims {j in 1..7}: x[j] >= minim[j]*sum{i in 1..7} x[i];  #min limit each raw material per batch -> per month (equivalent) since ratio
max_mons {j in 1..7}: x[j] <= maxmon[j];  #max limit each raw material per month

time: 0.2*a + 0.3* sum{i in 1..7} x[i] <= 600;  #max limit time per month

