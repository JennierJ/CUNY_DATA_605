
# Take a good at the dataset
head(cars)

# Visualize the data
plot(cars, xlab = "Speed (mph)", ylab = "Stopping distance (ft)",
     las = 1, xlim = c(0, 25))

# The Linear Model Fuction
attach(cars)
liner <- lm(dist ~ speed)

liner

# Evaluate the quality of the model
summary(liner)

# Resudual Analysis
plot(fitted(liner), resid(liner))
qqnorm(resid(liner))
qqline(resid(liner))
