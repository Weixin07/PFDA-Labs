v <- c(1,2,3,4,NA,5,5,8,NA,NA)
mean(v)

mean(v, na.rm = TRUE)

avg = mean(v, na.rm = TRUE) #na.rm is to remove NA (missing) values before the process start
v_new <- ifelse(is.na(v), avg, v)
v_new


