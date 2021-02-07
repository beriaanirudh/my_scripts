echo "file to check = " $@
while [[ 1 ]]
do
  echo 'checking again'
  string="test -e $@"
  eval $string
  if [[ $? -eq 0 ]]
  then
    echo "download completed, will sleep after 5 seconds; printing date"
    date
    sleep 5
    systemctl hibernate
    systemctl suspend
    exit
  fi
  sleep 5
done
  
    
  
