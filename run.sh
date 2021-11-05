echo "Run buid processor service in a new terminal"
gnome-terminal -- bash -c './run_build_processor.sh'
echo "Run enip proxy service in a new terminal"
gnome-terminal -- bash -c './run_enip_proxy.sh'
echo "run sequencer in a new terminal"
gnome-terminal -- bash -c './run_sequencer.sh'
echo "run hmi in new terminals"
./run_hmi.sh
