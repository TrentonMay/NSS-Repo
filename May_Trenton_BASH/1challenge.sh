freespace=$(df -h / | grep -E "\/$" | awk '{print $4}')
#logdate=$(date +"%Y%m%d")
logfile=report.log

echo -e "System Report for" "$HOSTNAME"
printf "\tSystem type:\t%s\n" $MACHTYPE
printf "\tBash Version:\t%s\n" $BASH_VERSION
printf "\tFree Space:\t%s\n" $freespace
printf "\tFiles in dir:\t%s\n" $(ls | wc -l)
printf "\tGenerated on: \t%s\n" $(date +"%m/%d/%y")
echo -e "A summary of this info has been saved to $logfile"

cat <<- EOF > $logfile

EOF

printf "SYS:\t%s\n" $MACHTYPE >> $logfile
printf "BASH:\t%s\n" $BASH_VERSION >> $logfile
