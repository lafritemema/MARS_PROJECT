
echo " -- INSTALL MARS SERVICES -- "

echo "---------------------------------------"
echo " -- INSTALL BUILD PROCESSOR SERVICE -- "
echo "---------------------------------------"
echo " -- DOWNLOAD SOURCES FILES -- "
git clone https://github.com/lafritemema/MARS_build_processor && \
cd MARS_build_processor &&\
echo " -- INSTALLATION DEPENDENCES -- "
pip install -r requirement.txt && \
echo " -- CREATE RESSOURCE DATABASE -- "
mongoimport --db=mars --collection=carrier --drop ressources_c35_actions.json
cd ..
echo " -- END OF BUILD PROCESSOR INSTALLATION -- "


echo "---------------------------------"
echo " -- INSTALL SEQUENCER SERVICE -- "
echo "---------------------------------"
echo " -- DOWNLOAD SOURCE FILES -- "
git clone https://github.com/lafritemema/MARS_sequencer && \
cd MARS_sequencer  && \
echo " -- INSTALLATION DEPENDENCES -- "
npm install --production --legacy-peer-deps && \
cd ..
echo " -- END OF SEQUENCER INSTALLATION -- "


echo "----------------------------------"
echo " -- INSTALL ENIP PROXY SERVICE -- "
echo "----------------------------------"
echo " -- DOWNLOAD SOURCE FILES -- "
git clone https://github.com/lafritemema/MARS_enip_proxy && \
cd MARS_enip_proxy && \
echo " -- INSTALLATION DEPENDENCES -- "
npm install --production --legacy-peer-deps && \
cd ..
echo " -- END OF ENIP PROXY INSTALLATION -- "


#Installation HMI
echo "---------------------------------"
echo " -- INSTALL HMI SHELL SERVICE -- "
echo "---------------------------------"
echo " -- DOWNLOAD SOURCE FILES -- "
git clone https://github.com/Ced-Mars/MARS_hmi_shell && \
cd MARS_hmi_shell/app_shell && \
echo " -- INSTALLATION DEPENDENCES FOR FRONTEND -- "
npm install && \
cd  server && \
echo " -- INSTALLATION DEPENDENCES FOR BACKEND -- "
npm install && \
cd .. && \
echo " -- BUILD APPLICATION -- "
npm run-script build && \
cd ../..
echo " -- END OF HMI SHELL INSTALLATION -- "


echo "-------------------------------------------"
echo " -- INSTALL HMI BUILD PROCESSOR SERVICE -- "
echo "-------------------------------------------"
echo " -- DOWNLOAD SOURCE FILES -- "
git clone https://github.com/Ced-Mars/MARS_hmi_buildprocessor && \
cd MARS_hmi_buildprocessor/build-process-app && \
echo " -- INSTALLATION DEPENDENCES FOR FRONTEND -- "
npm install && \
cd  service-backend && \
echo " -- INSTALLATION DEPENDENCES FOR BACKEND -- "
npm install && \
cd .. && \
echo " -- BUILD APPLICATION -- "
npm run-script build && \
cd ../..
echo " -- END OF HMI BUILD PROCESSOR INSTALLATION -- "

echo "-------------------------------------"
echo " -- INSTALL HMI SEQUENCER SERVICE -- "
echo "-------------------------------------"
echo " -- DOWNLOAD SOURCE FILES -- "
git clone https://github.com/Ced-Mars/MARS_hmi_sequencer && \
cd MARS_hmi_sequencer/seq_app_front && \
echo " -- INSTALLATION DEPENDENCES FOR FRONTEND -- "
npm install && \
cd  seq_app_backend && \
echo " -- INSTALLATION DEPENDENCES FOR BACKEND -- "
npm install && \
cd .. && \
echo " -- BUILD APPLICATION -- "
npm run-script build && \
cd ../..
echo " -- END OF HMI SEQUENCER INSTALLATION -- "

echo " -- END OF MARS INSTALLATION -- "
