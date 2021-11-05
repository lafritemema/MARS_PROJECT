gnome-terminal -- bash -c 'npm run sequencer --prefix ./MARS_sequencer'
gnome-terminal -- bash -c 'bash -c "export FLASK_APP=./MARS_build_processor/http_server && flask run -p 8001"'
gnome-terminal -- bash -c 'npm run enip-proxy --prefix ./MARS_enip_proxy'

gnome-terminal -- bash -c "cd ~/MARS_PROJECT/MARS_hmi_buildprocessor/build-process-app/service-backend && npm start" && \
gnome-terminal -- bash -c "cd ~/MARS_PROJECT/MARS_hmi_sequencer/seq_app_front/seq_app_backend && npm start" && \
gnome-terminal -- bash -c "cd ~/MARS_PROJECT/MARS_hmi_shell/app_shell/server && npm start" && \
xdg-open http://localhost:4000
