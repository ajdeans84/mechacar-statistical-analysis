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

#T-test on Suspension Coils
total_psi <- coils[3]
t.test(total_psi, mu=1500)
lot_1 <- coils$PSI[coils$Manufacturing_Lot=='Lot1']
lot_2 <- coils$PSI[coils$Manufacturing_Lot=='Lot2']
lot_3 <- coils$PSI[coils$Manufacturing_Lot=='Lot3']
t.test(lot_1, mu=1500)
t.test(lot_2, mu=1500)
t.test(lot_3, mu=1500)