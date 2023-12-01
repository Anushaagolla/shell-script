userid=$(id -u)

if [ $userid -ne 0 ]
then
    echo "ERROR : Please run this command with sudo access"
fi

yum install git -y

if [ $? -ne 0 ]
then
    echo "git installation is not successful"
else
    echo "git installation is successful"
fi