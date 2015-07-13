# A function that finds the sum of all multiples of 'num1' or 'num2' below 'end'.
def sumofmultiples(num1, num2, end):
        # Initialize sum.
	sum = 0
	#Loop through all values below 'end' and if it is a multiple of 'num1' or 'num2', add it to the sum.
	for k in range(end):
		if k % num1 == 0 or k % num2 == 0:
			sum += k
        # Return the final sum.
	return sum

#Call the function with the values from the problem.
print(sumofmultiples(3, 5, 1000))
