#!/bin/bash

add() {
        (( num = $1 + $2 ))
        echo "Addition is $num"
}

sub() {
        (( num = $1 - $2 ))
        echo "Subtraction is $num"
}

multiply() {
        (( num = $1 * $2 ))
        echo "Multiplication is $num"
}

division() {
        (( num = $1 / $2 ))
        echo "Division is $num"
}


echo "Welcome to the calculator"
read -p "Provide Two Operands: " a b

read -p "a:Add b:Sub c:Mul d:Div " choice

case $choice in
        a)
                add $a $b ;;
        b)
                sub $a $b ;;
        c)
                multiply $a $b ;;
        d)
                division $a $b ;;

        *)
                echo "Invalid Input Provided"
esac