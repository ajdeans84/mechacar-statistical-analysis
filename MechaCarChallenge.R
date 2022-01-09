library(dplyr)

#Linear Regression of MPG
mpg <- read.csv("Resources/MechaCar_mpg.csv")
lreg <-  lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data=mpg)
summary(lreg)
summary(lreg)$r.squared

#Summary Stats on Suspension Coils
coils <- read.csv("Resources/Suspension_Coil.csv")
total_summary <- summarize(coils, mean(PSI), median(PSI), var(PSI), sd(PSI))
by_lot <- group_by(coils, Manufacturing_Lot)
lot_summary <- summarize(by_lot, mean(PSI), median(PSI), var(PSI), sd(PSI))