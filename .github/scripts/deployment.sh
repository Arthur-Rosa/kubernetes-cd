# Use readarray para ler a string em um array
readarray -t array <<< "$files"

if [ -a "$files" ]; then
    echo "é um array suave"
else
    echo "não é um array, deu ruim"
fi
# Imprima o array
printf '%s\n' "${array[@]}"
