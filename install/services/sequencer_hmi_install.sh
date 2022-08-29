
echo "-------------------------------------"
echo " -- INSTALL HMI SEQUENCER SERVICE -- "
echo "-------------------------------------"
echo " -- DOWNLOAD SOURCE FILES -- "
git clone https://github.com/lafritemema/MARS_hmi_sequencer && \

cd MARS_hmi_sequencer/backend_app && \
echo " -- INSTALLATION DEPENDENCES FOR FRONTEND -- "
npm install && \
cd  ../frontend_app && \
echo " -- INSTALLATION DEPENDENCES FOR BACKEND -- "
npm install && \
echo " -- BUILD APPLICATION -- "
npm run build && \
cd ../..
echo " -- END OF HMI SEQUENCER INSTALLATION -- "

echo " -- END OF MARS INSTALLATION -- "