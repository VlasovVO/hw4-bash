if [ -z $1 ]
then
printf "Error! use:\n\"sh parselog.sh logfile\"\n"
else
parse=$(grep "SIGALRM$" < $1 | awk '{print $4}' | tr '\n' '|') \
&& IFS=$'\n' \
&& result=($(grep -E "WARNING|SIGALRM$" < $1 | grep -E $parse)) \
&& mail -s "some trouble\n${result[*]}" besthelpdesk@dreamteam.com
fi