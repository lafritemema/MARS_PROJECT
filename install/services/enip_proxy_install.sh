

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
