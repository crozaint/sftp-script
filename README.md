# mysecureshell-centos6

Simple SFTP server setup script for Centos6/Amazon Linux LAMP stack

*OS supported : Centos6, Centos7, Amazon linux(Amazon Linux AMI)*
- ssh/sftp port : 64567
- sftp package : Mysecureshell
- user home dir : /var/www/html/
- home dir user and group : apache

## Installation Steps
1. Download the package
```
git clone https://crozaint@github.com/crozaint/sftp-script.git
```
2. Run install.sh
```
cd sftp-script
./install.sh
```

## To add new user
```
./newuser.sh document-root username
```

