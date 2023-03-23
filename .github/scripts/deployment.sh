OLDIFS=$IFS
IFS=' '
array=($files)
IFS=$OLDIFS

for f in "${array[@]}" 
do
    path="./$f"
    
    aws configure
    $aws_acess
    $aws_secret
    echo "us-east-1"
    echo "json"
    
done
