# a script to merge dcd and write a new concatenated traj 
mol new protein.psf
mol addfile A.dcd  first 0 last -1 step 1 waitfor all
mol addfile B.dcd  first 0 last -1 step 1 waitfor all
mol addfile C.dcd  first 0 last -1 step 1 waitfor all

set all [atomselect top "all"]

animate write dcd conc_90K.dcd  beg 0 end -1  waitfor all sel $all

quit


