echo "---------------------------------------"
echo " -- INSTALL BUILD PROCESSOR SERVICE -- "
echo "---------------------------------------"
echo " -- DOWNLOAD SOURCES FILES -- "
git clone --recursive https://github.com/lafritemema/MARS_build_processor_ai && \
cd MARS_build_processor_ai &&\
echo " -- INSTALLATION DEPENDENCES -- "
pip install --user -r requirement.txt && \

cd ..
echo " -- END OF BUILD PROCESSOR INSTALLATION -- "