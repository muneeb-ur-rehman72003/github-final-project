#!/usr/bin/env bash

# Calculate simple interest from user-provided values.
read -r -p "Enter principal amount: " principal
read -r -p "Enter annual interest rate (%): " rate
read -r -p "Enter time period (years): " time

# Simple Interest = Principal × Rate × Time ÷ 100
interest=$(awk -v p="$principal" -v r="$rate" -v t="$time" 'BEGIN { printf "%.2f", (p * r * t) / 100 }')

echo "Simple interest: $interest"
