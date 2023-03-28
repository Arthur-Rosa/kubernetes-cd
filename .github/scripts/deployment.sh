OLDIFS=$IFS
IFS=' '
array=($files)
IFS=$OLDIFS

for f in "${array[@]}" 
do
    path="./$f"
    
    aws eks --region us-east-1 update-kubeconfig --name teste-aks-pipe

    echo "##############################################################"
    echo "Pegando File"

    cat $path

    echo "##############################################################"
    echo "Iniciando criação" 

    eksctl create nodegroup --config-file=$path

done
