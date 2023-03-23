# Salve o IFS atual
OLDIFS=$IFS

# Defina o IFS como espaço
IFS=' '

# Converta a string em um array
array=($files)

# Restaure o IFS
IFS=$OLDIFS

# Imprima o array
printf '%s\n' "${array[@]}"
