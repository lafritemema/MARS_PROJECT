
echo " -- CHECK CURRENT INSTALLATION -- "
if [ -d MARS_build_processor ] && \
   echo " -- BUILD_PROCESSOR PRESENT -- " && \
   [ -d MARS_sequencer ] && \
   echo " -- SEQUENCER PRESENT -- " && \
   [ -d MARS_enip_proxy ] && \
   echo " -- ENIP_PROXY PRESENT -- " && \
   [ -d MARS_hmi_shell ] && \
   echo " -- HMI SHELL PRESENT -- " && \
   [ -d MARS_hmi_buildprocessor ] && \
   echo " -- HMI BUILD PROCESS PRESENT -- " && \
   [ -d MARS_hmi_sequencer ] && \
   echo " -  HMI SEQUENCER PRESENT -- "; then


    echo " -- ALL DIRECTORIES ARE PRESENT -- "
    
    echo "--------------------------------------"
    echo " -- UPDATE BUILD PROCESSOR SERVICE -- "
    echo "--------------------------------------"
    
    cd MARS_build_processor && \
    echo " -- UPDATE SOURCE FILES -- "
    git pull origin master && \
    echo " -- UPDATE DEPENDENCES -- "
    sudo pip install -r requirement.txt && \
    echo " -- UPDATE RESSOURCE DATABASE -- "
    mongoimport --db=mars --collection=carrier --drop resSOURCE_c35_actions.json
    cd ..
    echo " -- END OF BUILD PROCESSOR UPDATE -- "
    
    
    echo "---------------------------------"
    echo " -- UPDATE ENIP PROXY SERVICE -- "
    echo "---------------------------------"
    cd MARS_enip_proxy && \
    echo " -- UPDATE SOURCE FILES -- "
    git pull origin master && \
    echo " -- UPDATE DEPENDENCES -- "
    npm install --production --legacy-peer-deps && \
    cd ..
    echo " -- END OF ENIP PROXY UPDATE -- "


    echo "--------------------------------"
    echo " -- UPDATE SEQUENCER SERVICE -- "
    echo "--------------------------------"
    cd MARS_sequencer && \
	echo " -- UPDATE SOURCE FILES -- "
    git pull origin master && \
	echo " -- UPDATE DEPENDENCES -- "
    npm install --production --legacy-peer-deps && \
    cd ..
	echo " -- END OF SEQUENCER UPDATE -- "


    echo " -------------------------------"
    echo " -- UPDATE HMI SHELL SERVICE -- "
    echo " -------------------------------"
    cd MARS_hmi_shell && \
    echo " -- UPDATE SOURCE FILES -- "
    git pull origin master && \
    cd app_shell && \
    echo " -- UPDATE DEPENDENCES FOR FRONTEND -- "
    npm install && \
    echo "BUILD APPLICATION FOR FRONTEND -- "
    npm run-script build && \
    cd server && \
    echo " -- UPDATE DEPENDENCES FOR BACKEND -- "
    npm install && \
    cd ../../..
	echo " -- END OF HMI SHELL UPDATE -- "


    echo "------------------------------------------"
    echo " -- UPDATE HMI BUILD PROCESSOR SERVICE -- "
    echo "------------------------------------------"
    cd MARS_hmi_buildprocessor && \
    echo " -- UPDATE SOURCE FILES -- "
    git pull origin master && \
    cd build-process-app && \
    echo " -- UPDATE DEPENDENCES FOR FRONTEND -- "
    npm install && \
    echo "BUILD APPLICATION FOR FRONTEND -- "
    npm run-script build && \
    cd service-backend && \
    echo " -- UPDATE DEPENDENCES FOR BACKEND -- "
    npm install && \
    cd ../../..
	echo " -- END OF HMI BUILD PROCESSOR UPDATE -- "



    echo "------------------------------------"
    echo " -- UPDATE HMI SEQUENCER SERVICE -- "
    echo "------------------------------------"
    cd MARS_hmi_sequencer && \
    echo " -- UPDATE SOURCE FILES -- "
    git pull origin master && \
    cd seq_app_front && \
    echo " -- UPDATE DEPENDENCES FOR FRONTEND -- "
    npm install && \
    echo "BUILD APPLICATION FOR FRONT"
    npm run-script build && \
    cd seq_app_backend && \
    echo " -- UPDATE DEPENDENCES FOR BACKEND -- "
    npm install && \
    cd ../../..
	echo " -- END OF HMI SEQUENCER UPDATE -- "


else
	echo " -- SOME DIRECTORIES MISSING -- "
	echo " -- CLEAN THE CURRENT INSTALLATION -- "
    rm -rf MARS_* && \ 
	echo " -- RUN A NEW INSTALLATION -- "
    ./install.sh
fi

