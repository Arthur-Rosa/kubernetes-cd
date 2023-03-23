OLDIFS=$IFS
IFS=' '
array=($files)
IFS=$OLDIFS

echo $teste

for f in "${array[@]}" 
do
    path="./$f"
    

done
