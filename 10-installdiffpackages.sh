#Getting the id 
userid=$(id -u)
Date=$(date +%F)

# Initializing the logs directory
mkdir /home/centos/shellscript-logs
logsdir=/home/centos/shellscript-logs
script-name=$0
logfile=$logsdsir/$0-$Date.log

#Initializing some colors for user experience
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

#checking whether the user is root or not
if [ $userid -ne 0 ]
then
    echo -e " $R ERROR : Please run this command with sudo access $N"
    exit 1
fi

#writing the function to check whether the package is istalled or not
validate(){
    if [$? -ne 0 ]
    then
        echo -e "$R $2 is not installed $N"
        exit 1
    else
        echo -e  " $G $2 is successfully installed $N"
}

#installing the multiple packages by passing the input through cli
for i in $@
do
    yum list installed $i &>>$logfile
    if [ $? -ne 0 ]
    then
        echo -e "$R $i is not installed, lets install it $N"
        yum install $i -y &>>$logfile
        validate $? "$i"
    else
        echo -e "$G $i is already installed $N"
done

