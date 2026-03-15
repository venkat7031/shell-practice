#!/bin/bash


USERID=$(id -u)

install packages () { 
   dnf install nginx -y
   dnf install mysql -y
}

if [ $USERID -ne 0 ]
then  
    echo "ERROR: Please run this script with root access"
    exit 1
else
    echo "your running with root access"
fi

if [ "$USERID" -eq 0 ]
then
    echo "your running with root access"
else
    echo "ERROR: please run with root access"
    exit 1
fi