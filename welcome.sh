d=$(date +%H)
d1=${d#0}
n=$(whoami)
p=$(dpkg --list | wc -l)
p1=$((p - 5))
weather=$(curl -s wttr\.in/"DUBAI"?0?A?)

if [ $d1 -ge '18' ] && [ $d1 -lt '24' ] ; then
	echo "Good Evening"
elif [ $d1 -ge '12' ] && [ $d1 -lt '18' ] ; then
	echo "Good Afternoon"
elif [ $d1 -ge '0' ] && [ $d1 -lt '12' ] ; then
	echo "Good Morning"
else
	echo "ERROR"
fi

echo "Date: $(date)"
echo "Users: $(users)"
echo "ID: $(id)"
echo "Groups: $(groups)"
echo "OS: $(uname -o)"
echo "Kernel: $(uname -rs)"
echo "Uptime: $(uptime --pretty)"
echo "CPU: $(lshw | grep -oE '.{,0}11t.{,44}')"
echo "Process:\n$(ps)"
echo "Packages: $p1"
echo "Path: $PATH"
echo "Terminal: $TERM"
echo "Shell: $SHELL"
echo "Working Directory: $(pwd)"
echo $weather
# echo "Environment: $(env)"
