gnome-terminal -- bash -c "cd ~/MARS_PROJECT/MARS_hmi_buildprocessor/build-process-app/service-backend && npm start" && \
gnome-terminal -- bash -c "cd ~/MARS_PROJECT/MARS_hmi_sequencer/seq_app_front/seq_app_backend && npm start" && \
gnome-terminal -- bash -c "cd ~/MARS_PROJECT/MARS_hmi_shell/app_shell/server && npm start" && \
xdg-open http://localhost:4000