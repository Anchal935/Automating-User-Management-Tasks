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
