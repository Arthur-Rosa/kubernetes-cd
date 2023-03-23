echo 'deu certo sua ideia ?'

echo $nome

ls


for file in ${{ steps.changed-files.outputs.all_changed_files }}; do
    echo $file
done