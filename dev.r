
#test at 697 & test that at end we have 150


max_date <- max(one_date$end_date)

one_test <- one_date %>% 
  filter(end_date == max_date)

dim(one_date)
dim(one_test)

two_test <- two_dates %>% 
  filter(end_date == max_date)

dim(two_dates)
dim(two_test)


three_test <- three_dates %>% 
  filter(end_date == max_date)

dim(three_dates)
dim(three_test)


dim(three_dates)




dim(reps54)

length(unique(reps54$fn_ln))