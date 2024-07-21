if(!music_play and room == Fase01){
	music_play = true;
	audio_play_sound(sndBackgroundMusic2, 0, 1);
	audio_sound_gain(sndBackgroundMusic2, 0, 0);
	audio_sound_gain(sndBackgroundMusic2, 0.37, 20000);
}