if [ -a "$files" ]; then
    echo "é um array suave"
else
    echo "não é um array, deu ruim"
fi

# Use readarray para ler a string em um array
readarray -t array <<< "$files"
# Imprima o array
printf '%s\n' "${array[@]}"
