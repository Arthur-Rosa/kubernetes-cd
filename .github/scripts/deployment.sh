echo 'deu certo sua ideia ?'

echo $nome

ls

countFile=0

for file in ${{ steps.changed-files.outputs.all_changed_files }}; do
    
    echo $file
done