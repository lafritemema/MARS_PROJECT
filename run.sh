# echo "Run buid processor service in a new terminal"
# gnome-terminal  -c './run_build_processor.sh'
# echo "Run enip proxy service in a new terminal"
# gnome-terminal -- bash -c './run_enip_proxy.sh'
# echo "run sequencer in a new terminal"
# gnome-terminal -- bash -c './run_sequencer.sh'
# echo "run hmi in new terminals"
# ./run_hmi.sh

echo "run build processor service"
mate-terminal -t "build_processor" --window-with-profile=mars -- bash -c "./run/run_build_processor.sh" &
echo "run command generator service"
mate-terminal -t "command_generator" --window-with-profile=mars -- bash -c "./run/run_cmd_generator.sh" &
echo "run sequencer service"
mate-terminal -t "sequencer" --window-with-profile=mars -- bash -c "./run/run_sequencer.sh" &
echo "run enip proxy service"
mate-terminal -t "proxy" --window-with-profile=mars -- bash -c "./run/run_enip_proxy.sh" &
echo "run sequencer hmi"
mate-terminal -t "hmi_sequencer_back" --window-with-profile=mars -- bash -c "./run/run_hmi_sequencer_back.sh" &
mate-terminal -t "hmi_sequencer_front" --window-with-profile=mars -- bash -c "./run/run_hmi_sequencer_front.sh" &

