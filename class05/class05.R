#' ---
#' title: "Week 5 Data Visualization Lab "
#' author: "Katie Chau (PID A15643295)"
#' ---


# Install ggplot2 package 
#install.packages("ggplot2")

# Anytime I want to use this package, I need to load it 
library(ggplot2)

#View(cars)

# A quick base R plot - not ggplot
plot(cars)

# Our first ggplot 
# We need data + aesthetics + geometry 

ggplot(data=cars) +
aes(x=speed,y=dist) +
  geom_point()

p <- ggplot(data=cars) +
  aes(x=speed,y=dist) +
  geom_point()

# Add a line geom with geom_line()
p + geom_line()

#Add a trend line close to the data 
p + geom_smooth()

p + geom_smooth(method = "lm")


#-------#

# Read in our drug expression data 


url <- "https://bioboot.github.io/bimm143_S20/class-material/up_down_expression.txt"
genes <- read.delim(url)
head(genes)

# Make a ggplot 
#ggplot(data=genes)+aes(x=Condition1,y=Condition2,col=State) +geom_point()
# Add some color 

# How many rows in genes?
nrow(genes)
# How many columns in genes? 
colnames(genes)
ncol(genes)
# down, unchanging and up of State
table(genes$State)
# Fraction of total genes are up-regulated
round(table(genes$State)/nrow(genes)*100,2)

# Change color
#g + scale_colour_manual(values=c("blue","gray","red")) + 
  #labs(title="Gene Expresion Changes Upon Drug Treatment",
       #x="Control (no drug)",
       #y="Drug Treatment")
