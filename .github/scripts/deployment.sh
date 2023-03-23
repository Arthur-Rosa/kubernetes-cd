countFile=0

for file in files; do
    countFile=$(($countFile+1))
    echo $file
done

echo $countFile