echo " -- IMPORT DATA IN MONGODB DATABASE --"
cd /home/$USER/MARS_command_generator/data && \
mongoimport --db=mars --collection=carrier --drop ./c35_resources.json
echo " -- END OF DATA LOADING -- "