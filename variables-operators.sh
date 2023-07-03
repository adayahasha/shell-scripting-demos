#!/bin/bash

A=$1
B=$2

echo "Sum is $((A + B))"
echo "Difference is $((A - B))"
echo "Product is $((A * B))"
echo "Quotient is $((A / B))"

A=$1
B=$2
C=$3

sum=$((A + B + C))
avg=$(echo "scale=2; $sum / 3" | bc -l)
echo "Average is $avg"

# Additional Calculations
echo "----- Additional Calculations -----"

# Square of A
square_A=$((A * A))
echo "Square of A is $square_A"

# Cube of B
cube_B=$((B * B * B))
echo "Cube of B is $cube_B"

# Square root of C
sqrt_C=$(echo "scale=2; sqrt($C)" | bc -l)
echo "Square root of C is $sqrt_C"

# Power of A raised to B
power_AB=$((A ** B))
echo "A raised to the power of B is $power_AB"
