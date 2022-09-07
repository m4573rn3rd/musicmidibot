clear
echo "Ok making music"
echo"----------------- "
echo "Cleaning Directory"
sudo rm -rf *.mid
ls -l
echo "Making Music"
sudo python rbm_chords.py
echo "Merging Sample"
sudo python merge_samples.py
echo "Moving Files"
sudo mv final.mid ~/tmp/$(date -d "today" +"%Y%m%d%H%M%S").mid
echo "All done sir"
cd ~
sudo rm -rf tmp.zip
zip tmp.zip tmp/*
sudo cp tmp.zip ~/robot_v_1_6/music_bot/music_midi/sets
cp ~/robot_v_1_6/music_bot/music_midi/sets/tmp.zip ~/
