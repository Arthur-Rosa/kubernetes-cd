OLDIFS=$IFS
IFS=' '
array=($files)
IFS=$OLDIFS

for f in "${array[@]}" 
do
    path="./$f"
    
    aws eks --region eu-north-1 update-kubeconfig --name basic-cluster

    echo "##############################################################"
    echo "Pegando File"

    cat $path

    echo " "

    echo "##############################################################"
    echo "Iniciando criação" 

    eksctl create nodegroup --config-file=$path

done
