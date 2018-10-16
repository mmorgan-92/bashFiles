#!bin/bash
echo "Welcome, this script will encrypt a files/folder for you"
echo "to use me place me in the same folder as the file you are trying to encrypt"
echo "enter the complete file path"
read file;
gpg -c $file
echo "your file has been encrypted"
echo "... removing the original file"
rm -rf $file