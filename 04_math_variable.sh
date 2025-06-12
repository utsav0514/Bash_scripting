#!/bin/bash

a=5
b=10
c=15

sum=$((a+b+c))
let add=$a+$b
(( sum1 = a + c ))


echo "The sum of a,b and c is: $sum"
echo "Ths add of a and b is : $add"
echo "Ths sum of a and c is : $sum1" 
