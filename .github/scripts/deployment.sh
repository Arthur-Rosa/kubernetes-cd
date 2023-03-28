OLDIFS=$IFS
IFS=' '
array=($files)
IFS=$OLDIFS

cat ~/.aws/config

for f in "${array[@]}" 
do
    path="./$f"
    
    aws eks --region eu-north-1 update-kubeconfig --name basic-cluster

    aws eks update-kubeconfig --name basic-cluster --region aws-region --role-arn arn:aws:sts::804006830115:assumed-role/az_lighthouse_support_n2/arthur.rosa@aquarelacs.com.br
    echo "##############################################################"
    echo "Pegando File"

    cat $path

    echo " "

    echo "##############################################################"
    echo "Iniciando criação" 

    eksctl create nodegroup --config-file=$path

done