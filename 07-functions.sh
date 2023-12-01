VALIDATE 
{
    if [ $2 -ne 0 ]
    then
        echo "$1 installation is not successful"
    else
        echo "$1 installation is successful"
    fi
}


userid=$(id -u)

if [ $userid -ne 0 ] 
then
    echo "ERROR : run this command with root access"
fi

Packagename=$1
yum install $Packagename -y

VALIDATE  $1 $?
