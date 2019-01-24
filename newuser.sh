#!/bin/bash
#used to create new sftp user
docroot=$1
username=$2
#echo $docroot
#echo $username
clear
printhelp() {
echo "Syntax Error"
echo "Script Usage: $0 document_root user_name"
echo "eg: $0 /var/www/html username"
}
if [[ -z  "$docroot" ]] || [[ -z "$username" ]]; then
	printhelp && exit
fi
echo "Creating User $username with HomeDir $docroot"
useradd -m -d $docroot -s /bin/MySecureShell $username
pwd_sftp=$(mkpasswd -l 16)
echo "$pwd_sftp" | passwd $username --stdin
echo "Restarting services"
/etc/init.d/sshd restart
echo "============================"
echo "Changing ownership of $docroot to apache"
echo "============================"
chown -R apache:apache $docroot
echo "Save the user details for future usage"
echo "-------------------------------------"
echo -e " Username : $username\n Password :  $pwd_sftp "
echo "-------------------------------------"
