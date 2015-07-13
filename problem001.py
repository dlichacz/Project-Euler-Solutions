def sumofmultiples(num1, num2, end):
	sum = 0
	for k in range(end):
		if k % num1 == 0 or k % num2 == 0:
			sum += k
	return sum

print(sumofmultiples(3, 5, 1000))
