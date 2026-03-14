#!/bin/bash


USERID=$(id -u)

if [ $USERID -nq 0 ]
then  
    echo "ERROR: Please run this script with root access"
    exit 1
else
    echo "your running with root access"
fi

dnf install nginx -y

if [ $USERID -eq 0 ]
then
    echo "your running with root access"
else
    echo "ERROR: please run with root access"
    exit 1