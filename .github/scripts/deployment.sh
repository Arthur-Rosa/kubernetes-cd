OLDIFS=$IFS
IFS=' '
array=($files)
IFS=$OLDIFS

for f in "${array[@]}" 
do
    path="./$f"
    
    aws eks --region us-east-1 update-kubeconfig --name cluster_name

    echo eksctl create nodegroup --config-file=$path

done
