
echo "---------------------------------"
echo " -- INSTALL SEQUENCER SERVICE -- "
echo "---------------------------------"
echo " -- DOWNLOAD SOURCE FILES -- "
git clone --recursive  https://github.com/lafritemema/MARS_sequencer && \
cd MARS_sequencer  && \
echo " -- INSTALLATION DEPENDENCES -- "
npm install --production --legacy-peer-deps && \
cd ..
echo " -- END OF SEQUENCER INSTALLATION -- "