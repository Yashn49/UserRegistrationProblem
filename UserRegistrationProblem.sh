#!/bin/bash
echo "Welcome to user registration program"
shopt -s extglob
regex="^([A-Z]{1}[a-zA-Z]{2,})+$"
read -p "enter a valid first name " firstName
if [[ $firstName =~ $regex ]]
 then
        echo "true"
 else
        echo "false"
fi

shopt -s extglob
regex1="^([A-Z]{1}[a-zA-Z]{2,})+$"
read -p "enter a valid last name " lastName
if [[ $lastName =~ $regex1 ]]
 then
        echo "true"
 else
        echo "false"
fi

shopt -s extglob
regex2="^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9])+\.)+([a-zA-Z])+$"
read -p "Enter a valid Email :" Email
if [[ $Email =~ $regex2 ]]
then
        echo "VALID"
else
        echo "INVALID EMAIL"
fi

shopt -s extglob
regex3="^([0-9]{2})+[]+([^0]{1}[0-9]{9})+$"
read -p "Enter a valid number" Number
if [[ $Number =~ $regex3 ]]
then
        echo "Number is Valid"
else
        echo "Number is invalid"
fi

shopt -s extglob
read -p "Enter a password: " s
if [[ "${#s}" -ge 8 && "$s" == *[A-Z]* && "$s" == *[a-z]* && "$s" == *[0-9]* && "$s" == *[!@*#$%^_-]* ]]
then
   echo "Password Accepted"
else
   echo "Password Rejected"
fi
