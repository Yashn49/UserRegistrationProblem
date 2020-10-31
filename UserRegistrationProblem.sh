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
