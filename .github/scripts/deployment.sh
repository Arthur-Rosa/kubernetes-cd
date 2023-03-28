OLDIFS=$IFS
IFS=' '
array=($files)
IFS=$OLDIFS

cat ~/.aws/config

for f in "${array[@]}" 
do
    path="./$f"
    
    aws eks --region eu-north-1 update-kubeconfig --name basic-cluster

    aws eks update-kubeconfig --name basic-cluster --region aws-region

    eksctl utils write-kubeconfig --kubeconfig=./.github/config/kubeconfig.yaml --profile=test
    echo "##############################################################"
    echo "Pegando File"

    

    echo " "

    echo "##############################################################"
    echo "Iniciando criação" 

    eksctl create nodegroup --config-file=$path --profile 

done