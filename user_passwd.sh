#!/usr/bin/bash

echo "=============Welcome to the USER MANAGEMENT PORTAL================"
echo "======Select the below options to perform specific operation======"
echo

select opt in "List of users" "Creation of new user" "Default password generation" "User deletion" "Reset password" "Exit" ; do

        case $opt in
        
                "List of users")
                        echo "=====Displaying all the available users====="
                        cat /home/anchal/user_management/user_list
                        ;;

                "Creation of new user")
                        echo "=====creating usernames for all the available users====="

                        for user in $(cat /home/anchal/user_management/user_list | tr 'A-Z' 'a-z') ; do

                                if [[ $(id "$user") ]]; then
                                        echo "user \"$user\" already exists...."
                                else
                                        echo "creating user for $user"
                                        sudo adduser  --disabled-password --gecos "" "$user" >/dev/null
                                        echo "user \"$user\" created successfully"
                                        echo
                                fi
                        done
                                ;;

                "Default password generation")
                        echo "=====Generating passwords for all the available users====="

                        for user in $(cat /home/anchal/user_management/user_list | tr 'A-Z' 'a-z') ; do

                                default_pwd="$user@123"
                                
                                if [[ $(id "$user") ]]; then
                                        echo "generating password for $user"
                                        echo "$user:$default_pwd" | sudo chpasswd
                                        echo "password created successfully"
                                        echo
                                else
                                        echo "no password required, as user \"$user\" doesn't exists...."
                                fi
                        done
                                ;;
                                
                "User deletion")

                        echo "============Deletion of specific user============"
                        
                        echo "List of the available users"
                                cat /home/anchal/user_management/user_list | tr 'A-Z' 'a-z'
                                echo
                                read -p "Enter the user which you want to delete.." i
                                echo "deleting account for \"$i\".."
                                sudo userdel $i 2>/dev/null

                                if [[ $? -eq 0 ]] ; then
                                echo "user \"$i\" deleted successfully"
                                else
                                echo "user \"$i\" doesn't exists.."
                                fi

                                ;;

                "Reset password")

                        echo "==========Reset password for specific user=========="
                        echo "List of the available users"
                                cat /home/anchal/user_management/user_list | tr 'A-Z' 'a-z'
                                echo
                                read -p "Enter the user which you want to reset the password.." i
                                echo "updating password for \"$i\".."
                                sudo passwd $i

                                if [[ $? -ne 0 ]] ; then
                                echo "password has not been updated as user \"$i\" doesn't exists.."
                                fi

                                ;;
                "Exit")
                        echo "=====Thanks for visiting our portal====="
                        break
                        ;;

                #default case
                *)
                        echo "INVALID OPTION $REPLY"
                        echo "Please enter valid option.."
                        ;;

        esac
done
