echo " -- IMPORT DATA IN MONGODB DATABASE --"
mongoimport --db=mars --collection=carrier --drop ./data/c35_resources.json
echo " -- END OF DATA LOADING -- "