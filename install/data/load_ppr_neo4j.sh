echo " -- IMPORT DATA IN NEO4J DATABASE -- "
# need to create env var for neo user and password before to execute the first time
cypher-shell -u $NEO4J_USER -p $NEO4J_PWD "MATCH (e) detach delete e" && 
cypher-shell -u $NEO4J_USER -p $NEO4J_PWD "call apoc.import.graphml('file://$(pwd)/ppr_c35_mars.graphml', {readLabels:true})" &&
echo " -- END OF DATA LOADING -- "
read -p "Press enter to continue"

