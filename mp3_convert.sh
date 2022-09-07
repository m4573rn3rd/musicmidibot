timidity final.mid -Ow -o - | ffmpeg -i - -acodec libmp3lame -ab 64k final.mp3
