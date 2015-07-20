# Create a function that will find the sum of the even-valued terms of the Fibonacci sequence whose 
# values do not exceed the entered limit.  If the optional parameter 'even' is set to FALSE,
# the function will return the sum of the odd-valued terms.
FibonacciEvenSum <- function(limit, even = TRUE) {
  # Create vector to store Fibonacci sequence and set the first two terms.
  fibonacci <- vector(mode = "numeric")
  fibonacci[1] <- 1
  fibonacci[2] <- 2
  # Initialize counter variable.
  count <- 1
  # Create loop to generate Fibonacci sequence up to defined limit.
  while (fibonacci[count] + fibonacci[count + 1] <= limit) {
    fibonacci[count + 2] <- fibonacci[count] + fibonacci[count + 1]
    count = count + 1
  }
  # Calcluate either the even-valued or odd-valued sum.
  if (even == TRUE) {
    sum(fibonacci[fibonacci %% 2 == 0])
  }
  else {
    sum(fibonacci[fibonacci %% 2 != 0])
  }
}

FibonacciEvenSum(4000000)