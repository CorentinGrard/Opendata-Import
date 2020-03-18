split-csv.sh mv_immeubles_2019t4.csv 300000 #Split the file

for f in mv_immeubles_2019t4.csv_split*; 
    csv2geojson --lat "y" --lon "x" "$f" > "$f.geojson"
    python import-geojson.py -f "gsm.geojson" -d "OpenData" -c "Fiber" -u "dbAdmin" -p "BoNvK6otesqAFpaS" -s localhost
done