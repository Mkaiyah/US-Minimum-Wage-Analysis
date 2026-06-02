# ==========================
# U.S. Minimum Wage Analysis
# Mkaiyah Jenkins
# ==========================

# Import Data
wages <- read.csv("data/minimum_wage.csv")

# Examine Dataset
head(wages, 10)

# Data Cleaning
wages <- wages[wages$State != "", ]
wages <- wages[!is.na(wages$Minimum_Wage), ]

# Verify Number of States
nrow(wages)

# Check Data Structure
str(wages)

# Clean Region Labels
wages$Region <- tolower(wages$Region)

wages$Region[wages$Region == "west"] <- "West"
wages$Region[wages$Region == "south"] <- "South"
wages$Region[wages$Region == "midwest"] <- "Midwest"
wages$Region[wages$Region == "northeast"] <- "Northeast"
wages$Region[wages$Region == "northwest"] <- "Northeast"

# Count States by Region
table(wages$Region)

# Descriptive Statistics
mean(wages$Minimum_Wage)
median(wages$Minimum_Wage)
sd(wages$Minimum_Wage)
var(wages$Minimum_Wage)
IQR(wages$Minimum_Wage)
summary(wages$Minimum_Wage)

# Histogram
hist(
  wages$Minimum_Wage,
  main = "Distribution of State Minimum Wages",
  xlab = "Minimum Wage ($)",
  col = "lightpink"
)

# Boxplot
boxplot(
  wages$Minimum_Wage,
  main = "State Minimum Wages",
  ylab = "Minimum Wage ($)",
  col = "lightgreen"
)

# Check South Variable
table(wages$South)

# Remove Extra Spaces
wages$South <- trimws(wages$South)

# Verify Values
table(wages$South)

# Welch Two-Sample T-Test
t.test(
  Minimum_Wage ~ South,
  data = wages
)

# Wilcoxon Rank Sum Test
# exact = FALSE is used because multiple states share
# the same minimum wage values (ties in the data)

wilcox.test(
  Minimum_Wage ~ South,
  data = wages,
  exact = FALSE
)
