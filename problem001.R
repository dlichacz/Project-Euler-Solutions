# A function that finds the sum of all multiples of 'num1' or 'num2' below 'end'.
sumofmultiples <- function(num1, num2, end) {
  # Initialize sum.
  sum <- 0
  # Loop through all values below 'end' and if it is a multiple of 'num1' or 'num2', add it to the sum.
  for (k in 1:end-1) {
    if (k %% num1 == 0 || k %% num2 == 0) {
      sum <- sum + k
    }
  }
  # Return the final sum.
  sum
}
#Call the function with the values from the problem.
sumofmultiples(3, 5, 1000)