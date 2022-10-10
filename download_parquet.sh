#! /bin/zsh

for year in {2019..2021}; do
    for month in {1..12}; do
        suffix=`printf "%04d-%02d" $year $month`
        fileName="yellow_tripdata_$suffix.parquet"
        if [ ! -f "data/$fileName" ]; then
            wget https://d37ci6vzurychx.cloudfront.net/trip-data/$fileName -O data/$fileName
        else
            echo "Already downloaded $fileName"
        fi
    done
    
done