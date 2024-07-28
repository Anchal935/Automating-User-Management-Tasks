# Automating-User-Management-Tasks

## Introduction

The User Management Portal is a Bash script that allows users to perform various operations related to user management on a Linux system. It provides a menu-driven interface where users can select options to perform specific tasks such as listing users, creating new users, generating default passwords, deleting users, and resetting passwords.

## Key Concepts

Before diving into the code, let's understand some key concepts related to user management in Linux:
1.	User Accounts: In Linux, each user is associated with a unique user account. User accounts store information such as the username, user ID, group ID, home directory, and default shell.
2.	User Creation: To create a new user account, the adduser command is used. It creates a new user with the specified username, assigns a unique user ID and group ID, and creates a home directory for the user.
3.	Password Management: User passwords are stored in an encrypted format in the system's password file. The chpasswd command is used to set or change a user's password programmatically.
4.	User Deletion: The userdel command is used to delete a user account from the system. It removes the user's entry from the system's user database and deletes the user's home directory.
5.	Password Reset: The passwd command is used to change a user's password. It prompts the user to enter a new password and updates the password in the system's password file.

## Code Structure

The code is structured as a Bash script and follows a menu-driven approach. It uses the select statement to present a menu of options to the user. Based on the user's selection, the script executes the corresponding code block.
The code consists of the following sections:
1.	Welcome Message: Displays a welcome message and the available options to the user.
2.	Menu Options: Defines the menu options using the select statement. Each option corresponds to a specific user management task.
3.	Task Implementation: Implements the code for each menu option. This includes listing users, creating new users, generating default passwords, deleting users, resetting passwords, and exiting the script.

## Code Examples

Let's take a closer look at some code examples to understand how each task is implemented:

1.	List of users:
   
      ![image](https://github.com/user-attachments/assets/a6a852eb-2d7d-4b3c-992f-1af21be9f8fd)

      This code block displays the contents of the user_list file, which contains a list of all the available users.

2. Creation of new user:

      ![image](https://github.com/user-attachments/assets/ef37764a-56a2-4516-81b3-101c01abd1c7)

      This code block iterates over each username in the user_list file and checks if the user already exists. If the user does not exist, it creates a new user using the adduser command.

3.	Default password generation:

      ![image](https://github.com/user-attachments/assets/7b3eca7b-a3a3-4d77-b05d-0bc231a70fe1)

      This code block generates default passwords for each user in the user_list file. It sets the password as "$user@123" and uses the chpasswd command to update the password.

4.	User deletion:

      ![image](https://github.com/user-attachments/assets/709b18a7-b641-489b-b5d3-a38bc973eb10)

      This code block prompts the user to enter the username of the user they want to delete. It then uses the userdel command to delete the specified user.

5.	Reset password:

      ![image](https://github.com/user-attachments/assets/66379a04-44f7-4ff4-93dd-4515e2ca84ee)

      This code block prompts the user to enter the username of the user they want to reset the password for. It then uses the passwd command to update the password for the specified user.

## Conclusion

The User Management Portal is a Bash script that provides a menu-driven interface for managing users on a Linux system. It allows users to perform tasks such as listing users, creating new users, generating default passwords, deleting users, and resetting passwords. By understanding the code structure and the key concepts of user management in Linux, you can easily customize and extend this script to suit your specific needs.
