# Clean data script
library(tidyverse)

wine <- read_delim('Data/Raw/winequality-red.csv', delim = ';')

set.seed(1)

# training indices
train <- sample(1:nrow(wine), .7 * nrow(wine))

# subsetting wine data set
wine_train <- wine[train,]
wine_test  <- wine[-train,]

# saving as CSV's
write_csv(wine_train, 'Data/Clean/wine_train.csv')
write_csv(wine_test,  'Data/Clean/wine_test.csv')
