OLDIFS=$IFS
IFS=' '
array=($files)
IFS=$OLDIFS

cat ~/.aws/config

for f in "${array[@]}" 
do
    path="./$f"
    
    aws eks --region eu-north-1 update-kubeconfig --name basic-cluster

    aws eks update-kubeconfig --name basic-cluster --region eu-north-1
    
    aws sts get-caller-identity

    echo "##############################################################"
    echo "Pré criando File"

    echo "##############################################################"
    echo "Iniciando criação" 

    eksctl create nodegroup --config-file=$path

done