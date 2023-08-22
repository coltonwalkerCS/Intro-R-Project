# library(datasets)
#
# head(iris)
# summary(iris)
# plot(iris)
#
# detach("package:datasets", unload = TRUE)
#
# dev.off()
introduction_func <- function() {
  print("Introduction to R Programming")

  vect <- c(1,2,3,4,5)
  vect + 2.1

  # Matricies
  print("Matricies")
  x <- 1:10
  x
  y <- matrix(x, nrow=2, ncol=5)
  y
  y <- matrix(x, nrow=5, ncol=2)
  y

  # Random numbers
  print("Testing random numbers")
  range_five <- 1:5
  range_five

  # Every element is chosen at most once
  sample(range_five, 3)
  sample(range_five, 5)

  # To get it to replace do:
  sample(range_five, 5, replace = TRUE)

  print("Random Matrix")
  rand_matrix <- matrix(sample(1:6, 12, replace = TRUE), nrow = 3, ncol = 4)
  rand_matrix

  # Test rolling a dice
  dice_throw <- sample(1:6, 3, replace = TRUE)
  dice_throw

  # Test equality
  dice_throw == 6

  # Test less than
  dice_throw < 4

  # Throw 1000 times
  sum(sample(1:6, 1000, replace = TRUE) == 6)
}

# Estimate the probability of getting a 6 within 4 rolls
estimate_dice_roll <- function() {
  rolls_matrix <- matrix(sample(1:6, 4*1000, replace = TRUE), nrow = 4, ncol = 1000)
  # rolls_matrix

  test_roll <- (rolls_matrix == 6)
  # test_roll

  print("Sum of Column Rolls = 6")
  sum_columns <- colSums(test_roll)
  print(sum_columns)

  print("Sum")
  print(sum(sum_columns > 0))

  print("Mean")
  print(mean(sum_columns > 0))

}

estimate_dice_roll()
