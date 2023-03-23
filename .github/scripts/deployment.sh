# Use readarray para ler a string em um array
readarray -t array <<< "$files"

# Imprima o array
printf '%s\n' "${array[@]}"
