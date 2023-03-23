# Salve o IFS atual
OLDIFS=$IFS

# Defina o IFS como espaço
IFS=' '

# Converta a string em um array
array=($files)

# Restaure o IFS
IFS=$OLDIFS

for f in array; do
    echo f
done
