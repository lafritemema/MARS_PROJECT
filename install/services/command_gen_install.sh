echo "---------------------------------------"
echo " -- INSTALL COMMAND GENERATOR SERVICE -- "
echo "---------------------------------------"
echo " -- DOWNLOAD SOURCES FILES -- "
git clone --recursive https://github.com/lafritemema/MARS_command_generator.git && \
cd MARS_command_generator &&\
echo " -- DEPENDENCES INSTALLATION -- "
pip install --user -r requirement.txt && \

cd ..
echo " -- END OF COMMAND GENERATOR INSTALLATION -- "