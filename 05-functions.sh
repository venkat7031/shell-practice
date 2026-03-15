#!/bin/bash


USERID=$(id -u)

install_packages () { 
   dnf install nginx -y
   dnf install mysql -y
}

if [ "$USERID" -eq 0 ]
then
    echo "your running with root access"
else
    echo "ERROR: please run with root access"
    exit 1
fi
install_packages