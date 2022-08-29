# add openjdk repo and update
echo " -- ADD OPENJDK REPO -- "
add-apt-repository -y ppa:openjdk-r/ppa
apt-get update


# add neotechnology repo
echo " -- ADD NEO4J REPO -- "
wget -O - https://debian.neo4j.com/neotechnology.gpg.key | apt-key add -
echo 'deb https://debian.neo4j.com stable latest' | sudo tee -a /etc/apt/sources.list.d/neo4j.list
apt-get update

# install neo4j
echo " -- INSTALL NEO4J -- "
apt-get install neo4j

echo " -- COPY APOC LIB IN PLUGINS -- "
cp /var/lib/neo4j/labs/apoc-4.4.0.7-core.jar /var/lib/neo4j/plugins

echo " -- ADD APOC CONFIG -- "
echo 'apoc.import.file.enabled=true' | tee -a /etc/neo4j/neo4j.conf
echo 'apoc.import.file.use_neo4j_config=false' | tee -a /etc/neo4j/neo4j.conf


echo " -- ENABLE NEO4J IN SYSTEMCTL -- "
systemctl enable neo4j

service neo4j start
