#Importing the dataset
dataset = read.csv('regrex1.csv')

# Fitting Linear Regression to the Dataset
model = lm(formula = y ~ x,
               data = dataset)


#Visualizing the Linear Regression results
png(filename = 'dataset.png')
library(ggplot2)
ggplot() +
  geom_point(aes(x = dataset$x, y = dataset$y),
             colour = 'red') +

  ggtitle('y vs x') +
  xlab('x') +
  ylab('y')
dev.off()

#Visualizing the Linear Regression results
png(filename = 'Linear Model.png')
library(ggplot2)
 ggplot() +
  geom_point(aes(x = dataset$x, y = dataset$y), colour = 'red') +
    geom_line(aes(x = dataset$x, y = predict(model, newdata = dataset)),
            colour = 'blue') +
  ggtitle('y vs x') +
  xlab('x') +
  ylab('y')
dev.off()


