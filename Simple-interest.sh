#!/bin/bash

# Prompt the user for inputs
read -p "Enter the principal amount: " p
read -p "Enter the annual rate of interest (%): " r
read -p "Enter the time period (in years): " t

# Calculate simple interest using bc for floating-point precision
si=$(echo "scale=2; ($p * $r * $t) / 100" | bc)
total=$(echo "scale=2; $p + $si" | bc)

# Display the results
echo "---------------------------------"
echo "Simple Interest: $si"
echo "Total Amount:    $total"
