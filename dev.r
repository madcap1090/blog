test <- df %>% 
  mutate(from_dawn = 
           case_when((period_to_seconds(hms(time)) > 21600) ~ (period_to_seconds(hms(time))-21600) ,
                               TRUE ~ 2))


# next
test <- df %>% 
  mutate(from_dawn = 
           case_when((period_to_seconds(hms(time)) > 21600) ~ (period_to_seconds(hms(time))-21600) ,
                     TRUE ~ (period_to_seconds(hms(time))+64799)))


names(df)
unique(df$time)
as.numeric(as.POSIXct("2007-05-17 09:00:00")-as.POSIXct("2007-05-07 09:00:00"), units="secs")



dat1 <- dmy_hm("7/1/2016 2:53")
dat2 <- dmy_hm("7/1/2016 8:09")

dat2-dat1


period_to_seconds(hms(df$time[1]))

ref_time <- "06:00:00"

period_to_seconds(hms("06:00:00"))

period_to_seconds(hms("23:59:59"))

df$time[1]

hms("06:00:00") - hours(6)


hms("23:00:00") - hours(6)

hms("05:00:00") - hours(6)


as.numeric(as.POSIXct("09:00:00")-as.POSIXct("09:30:00"), units="secs")

# let's add seconds from 6 am to the df

test <- df %>% 
  mutate(from_dawn = (period_to_seconds(hms(time))-
                        period_to_seconds(hms("06:00:00"))))

test <- df %>% 
  mutate(from_dawn = case_when(period_to_seconds(hms(time)) > 21600) ~ 1,
         TRUE ~ 2)
         

test <- df %>% 
  mutate(from_dawn = case_when((period_to_seconds(hms(time)) > 21600) ~ 1,
         TRUE ~ 2))



df %>%
  mutate(g = if_else(a == 2 | a == 5 | a == 7 | (a == 1 & b == 4), 2,
                     if_else(a == 0 | a == 1 | a == 4 | a == 3 |  c == 4, 3, NA_real_)))

test <- df %>% 
  mutate(from_dawn = (period_to_seconds(hms(time))))

min(test$from_dawn)                                        
max(test$from_dawn)       

date <- with_tz(ymd_hms("2011-07-01 06:00:00"), tzone = "America/Los_Angeles")
hms(date)
date                                        
period_to_seconds(date)
