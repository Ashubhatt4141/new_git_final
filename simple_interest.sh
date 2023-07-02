#!/bin/bash
#Author :- Ashu Bhatt
# Function to calculate simple interest
calculate_simple_interest() {
    principal=$1
    rate=$2
    time=$3

    interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)
    echo "Simple Interest: $interest"
}

# Input variables
read -p "Enter the principal amount: " principal
read -p "Enter the rate of interest (in percentage): " rate
read -p "Enter the time (in years): " time

# Call the function to calculate simple interest
calculate_simple_interest $principal $rate $time
