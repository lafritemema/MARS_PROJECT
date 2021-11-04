git clone https://github.com/lafritemema/MARS_build_processor && \
cd MARS_build_processor &&\
pip install -r requirement.txt && \
mongoimport --db=mars --collection=carrier --drop ressources_c35_actions.json
cd ..

git clone https://github.com/lafritemema/MARS_sequencer && \
cd MARS_sequencer  && \
npm install --production --legacy-peer-deps && \
cd ..

git clone https://github.com/lafritemema/MARS_enip_proxy && \
cd MARS_enip_proxy && \
npm install --production --legacy-peer-deps && \
cd ..
