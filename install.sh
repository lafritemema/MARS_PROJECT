FOLDER=/install/services
INSTALLERS=('build_processor_install.sh' \
           'enip_proxy_install.sh' \
           'sequencer_install.sh' \
           'command_gen_install.sh' \
           'sequencer_hmi_install.sh')

NAMES=('BUILD PROCESSOR' \
       'ENIP PROXY' \
       'SEQUENCER' \
       'COMMAND GENENERATOR' \
       'SEQUENCER HMI')

for index in "${!INSTALLERS[@]}"
do
    echo "  --- RUN ${NAMES[$index]} INSTALLER ---  "
    if .$FOLDER/${INSTALLERS[$index]}
    then
       echo "  --- ${NAMES[$index]} INSTALLATION OK ---  "
    else
       echo "  --- ${NAMES[$index]} INSTALLATION ERROR,\
              FIX THE ERROR AND RERUN THE FILE .$FOLDER/${INSTALLERS[$index]}  ---  "
       continue
    fi
done