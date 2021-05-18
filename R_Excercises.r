#Exercise 1 (R)
x <- sample(0:100, 1)
i <- 0 
while (i < 5) {
  y <- readline("What is the value of x?")
  y = as.numeric(y)
  if (x == y) {
    print("Great")
    break
  } else if (x < y) {
    print("Your number is to high")
  }else if (x > y) {
    print("Your number is to low")
  }
  i = i+1;
}


#Exercise 2 (R)
#output: first lines of esoph data frame
head(esoph)

#output: last lines of esoph data frame
tail (esoph)

#output: find the names of the columns of esoph data frame
colnames (esoph) 

#output: count rows and columns of esoph data frame
dim (esoph)

#Output: Descriptive Statistics, these measures allow the quantitative description of the data
summary (esoph) 

#Output: mean/average of the nr of cases
mean (esoph$ncases)    

# Output: median of all controls
median (esoph$ncontrols) 

# Output: mean nr of cases in ages 25-34 (rows 1 to 15)
mean (esoph$ncases[1:15])

# Output: median nr of cases (column 4) in ages 35-44 (rows 16 to 30)
median (esoph[16:30,4])

# Output: minimum nr of cases observed
min (esoph$ncases)

# Output: maximum nr of controls (column 5) observed
max (esoph[,5])
