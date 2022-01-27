load("./data/aflsmall.Rdata")
library(lsr)
who()

load("aflsmall.Rdata") # you have to load aflsmall.Rdata # contains finalists and margins
# aflsmall two vectors: afl.margins and afl.finalists
print(afl.margins) # afl.margins是数据，afl.finalist 是队伍名称

# Exercise: 
hist(afl.margins) # It is a skewed histogram, tail on the right
# since the tail is on the right, the mean ought to be greater than the median # the longer the tail, the more skewed the graph will be
mean(afl.margins)
median(afl.margins) # Yes, the mean is greater than the median
plot(mtcars$mpg)
min(mtcars$mpg)

hist(mtcars$mpg) # default 
hist(mtcars$mpg,3)# 3 bars
hist(mtcars$mpg,10)# 10 bars

v <- c(brown =34, yellow =90, red= 12, blue =25)
barplot(v)
barplot(v, names=c("yellow","brown","red","blue")) # yellow and brown is switched. 
barplot(v/sum(v))
pie(v)
pie(v/sum(v))
perc = round(v/(sum(v))*100)
pie(v/sum(v), labels = paste(names(v),perc), main = "Distribution of M&Ms") 
#paste converts its arguments (via as.character) to character strings, and concatenates them
# paste()function is like paste the labels and the percent together by the graph
hist(afl.margins)
hist(afl.margins, 3)

stem(x= afl.margins, scale =.25)
stem(x= afl.margins, scale =.5)
stem(x = afl.margins, width = 20)
stem(x= afl.margins/1000) # same as stem(x= afl.margins, scale =.5), but R will tell you that the decimal point has moved. 
summary(afl.margins)

boxplot(x= afl.margins, range=100)
boxplot(afl.margins)

boxplot( x = afl.margins, # the data
         xlab = "AFL games, 2010", # x-axis label
         ylab = "Winning Margin", # y-axis label
         border = "grey50", # dim the border of the box
         frame.plot = FALSE, # don't draw a frame
         #staplewex = 0, # don't draw staples
         whisklty = 1 # solid line for whisker
)

afl.margins
suspicious.cases <- afl.margins>300
suspicious.cases
which(suspicious.cases) # The Which() function in R gives you the position of the value in a logical vector. 
#或者你也可以这么写which(afl.margins>300)

load("aflsmall2.Rdata")
# In order to use the who function, you have to run the library(lsr) function loaded.
who(TRUE) # TRUE Expands the variables. 如果expand没有特别注明那么就只是variable
#The who function prints out some basic information about all variables in the workspace. 
#Specifically, it lists the names of all variables, what class they are, and how big they are (see below for specifics). 
#If the expand argument is TRUE it will also print out the same information about variables within data frames.


head(afl2) # print out the first 6 rows, tail（）- last 6 rows, some()-random 6 rows
boxplot(formula = margin~year,data =afl2) # margin is the y, year is the x margin is the dependent variable while year is the independent variable. 
    # this plots the loose relationship between margin and year.
    # 在这里，同样margin ~ year 并没有限制性的函数关系，～ dan.sleep +baby.sleep + dan.grump 
boxplot()

# a more complex version
boxplot( formula = margin ~ year, # the formula
         data = afl2, # the data set
         xlab = "AFL season", # x axis label
         ylab = "Winning Margin", # y axis label
         frame.plot = FALSE, # don't draw a frame
         staplewex = 0, # don't draw staples
         staplecol = "white", # (fixes a tiny display issue)
         boxwex = .75, # narrow the boxes slightly
         boxfill = "grey80", # lightly shade the boxes
         whisklty = 1, # solid line for whiskers
         whiskcol = "grey70", # dim the whiskers
         boxcol = "grey70", # dim the box borders
         outcol = "grey70", # dim the outliers
         outpch = 20, # outliers as solid dots
         outcex = .5, # shrink the outliers
         medlty = "blank", # no line for the medians
         medpch = 20, # instead, draw solid dots
         medlwd = 1.5 # make them larger
)

min(mtcars$mpg)
max(mtcars$mpg)
IQR(mtcars$mpg)
summary(mtcars$mpg)

beaver1$temp
boxplot(beaver1$temp, ylab ="degrees in Fahrenheit", main="Beaver Temperature")
# The median is a little bit above the the midpoint of box, so data concentrate in the upperpart of the graph.
# The distribution is pretty symmetric since median ~ mean

# limitation of boxplot - no variance shown

v = mtcars$mpg
popvar = sum((v-mean(v))^2/length(v)) # do the length function rather than nchar

titanic = as.data.frame(Titanic)
View(titanic)

# aggregate(x, by, FUN)??????????????????????????????????????????????????????????????

load("~/Desktop/2022spring/Ling460/Rfiles/week3(1.24-1.30)/parenthood.Rdata")
who(TRUE)
#Error in as.name(var) : variable names are limited to 10000 bytes
# WHEN YOU SEE THIS ERROR, YOU NEED TO BROOM THE VARIBALES IN YOUR ENVIRONMENT.
head(parenthood,10)
parenthood$mySleep
plot(x= parenthood$dan.sleep, y = parenthood$dan.grump) # there is no vector called dan.sleep??)
# you can use names function, say names(parenthood) =c("mySleep","babySleep","myGroup","day")

load("~/Desktop/2022spring/Ling460/Rfiles/week3(1.24-1.30)/aflsmall.Rdata")
freq <- tabulate(afl.finalists)
freq

teams<- levels(afl.finalists)
print(teams)
barplot(height=freq, xlab="xxxxx",ylab="xxxxx")
barplot(height =freq, names.arg=teams,las=2)
# ???????????????????? what is names.arg????????????????????# There are 17 teams.
# las: rotate the labels from horizontal to vertical labels. 


scatterplot(parenthood$myGrump ~ parenthood$mySleep, data =parenthood,smooth=FALSE)
scatterplot(parenthood$myGrump ~ parenthood$mySleep, data =parenthood,smooth=TRUE)







