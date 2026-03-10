#!/bin/bash

# Get numbers from arguments or ask user
if [ $# -lt 2 ]; then
    echo "Enter first number:"
    read num1
    echo "Enter second number:"
    read num2
else
    num1=$1
    num2=$2
fi

echo "Choose an operation:"
echo "1) Add"
echo "2) Subtract"
echo "3) Multiply"
echo "4) Divide"
echo "5) Exit"

read choice

case $choice in
    1)
        result=$((num1 + num2))
        echo "Result: $result"
        ;;
    2)
        result=$((num1 - num2))
        echo "Result: $result"
        ;;
    3)
        result=$((num1 * num2))
        echo "Result: $result"
        ;;
    4)
        if [ "$num2" -eq 0 ]; then
            echo "Error: Cannot divide by zero"
        else
            result=$((num1 / num2))
            echo "Result: $result"
        fi
        ;;
    5)
        echo "Exiting..."
        ;;
    *)
        echo "Invalid choice"
        ;;
esac
