#문제1번

ID <- c("1","2","3","4","5")
mid_exam <- c(10,25,100,75,30)
class <- c("1반","2반","3반","1반","2반")
  
# 문제2번

example_test <- data.frame(ID,mid_exam,class)

View(example_test)

#문제3번

library(readxl)
mid_exam <- read_excel("C:/Users/315-05/Documents/classi/mid_exam.xlsx")
mid_exam <- rename(mid_exam, MATH_MID = MATH, ENG_MID = ENG)
View(mid_exam)

#문제4번

final_exam <- read_excel("C:/Users/315-05/Documents/classi/final_exam.xlsx")
final_exam <- rename(final_exam , MATH_FINAL
View(final_exam)

#문제5번

library(dplyr)
total_exam <- inner_join(mid_exam, final_exam, by = "ID")
View(total_exam)

#문제6번

total_exam$MATH_AVG <- (total_exam$MATH_MID + total_exam$MATH_FINAL) / 2
total_exam$ENG_AVG <- (total_exam$ENG_MID + total_exam$ENG_FINAL) / 2
View(total_exam)

#문제7번

total_exam$TOTAL_AVG <- (total_exam$MATH_MID + total_exam$MATH_FINAL + total_exam$ENG_MID + total_exam$ENG_FINAL) / 4
View(total_exam)

#문제8번

mean(total_exam$MATH_AVG)
mean (total_exam$ENG_AVG)

#문제9번

total_exam %>% filter(MATH_MID >= 80 & ENG_MID >= 90)

# 문제10번

boxplot(total_exam$MATH_AVG, total_exam$ENG_AVG)

