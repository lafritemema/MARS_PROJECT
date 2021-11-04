if [ -d MARS_build_processor ] && \
   [ -d MARS_sequencer ] && \
   [ -d MARS_enip_proxy ]; then

    cd MARS_build_processor && \
    git pull origin master && \
    mongoimport --db=mars --collection=carrier --drop ressources_c35_actions.json
    pip install -r requirement.txt && \
    cd .. 

    cd MARS_enip_proxy && \
    git pull origin master && \
    npm install --production --legacy-peer-deps && \
    cd ..

    cd MARS_enip_proxy && \
    git pull origin master && \
    npm install --production --legacy-peer-deps && \
    cd ..
else 
    ./install.sh
fi
