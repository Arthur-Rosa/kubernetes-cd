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
    
    eksctl utils write-kubeconfig --kubeconfig=./.github/config/kubeconfig.yaml --cluster=basic-cluster

     eksctl register cluster --name basic-cluster --provider EKS_ANYWHERE --region eu-north-1

    echo "##############################################################"
    echo "Pré criando File"

    echo "##############################################################"
    echo "Iniciando criação" 

    eksctl create nodegroup --config-file=$path

done