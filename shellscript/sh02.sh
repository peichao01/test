#!/bin/bash
#Program:
#	User inputs his first name and last name. Program shows his full name.
#History:
#2013/04/24	peichao		First release
read -p "Please input your first name:" firstname
read -p "Please input your last name:" lastname
echo -e "\nYour full name is: $firstname $lastname"
