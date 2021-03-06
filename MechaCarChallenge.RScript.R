library(dplyr)
MechaCar_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_table) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_table)) #generate summary statistics

Coil_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary <- Coil_table["PSI"] %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI)) #create summary table
lot_summary <- Coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI),.groups = 'keep') #create summary table

?t.test()
t.test(log10(Coil_table$PSI),mu=mean(log10(1500))) #compare sample versus population means

Lot_1 = subset(Coil_table, Manufacturing_Lot == "Lot1")
t.test(log10(Lot_1$PSI),mu=mean(log10(1500)))

Lot_2 = subset(Coil_table, Manufacturing_Lot == "Lot2")
t.test(log10(Lot_2$PSI),mu=mean(log10(1500)))

Lot_3 = subset(Coil_table, Manufacturing_Lot == "Lot3")
t.test(log10(Lot_3$PSI),mu=mean(log10(1500)))


