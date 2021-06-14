library(dplyr)
library(tidyverse)

#read csv file
MechaCar <- read.csv(file="MechaCar_mpg.csv")
#create linear regression for mpg
mc <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar)
summary(mc)

#read csv file
suspension_table<- read.csv(file="Suspension_Coil.csv")
#create summary stats
total_summary <- suspension_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
#create summary table grouped by lots
lot_summary <- suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep') 
