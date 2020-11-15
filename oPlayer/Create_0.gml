/// @description Insert description here
// You can write your code in this editor
hsp = 0;
vsp = 0;
walksp = 6;

if (audio_is_playing(sMenuMusic))
{
	audio_stop_sound(sMenuMusic);
}

if (audio_is_playing(sBadEndingMusic))
{
	audio_stop_sound(sBadEndingMusic);
}

audio_play_sound(sMusic, 3, true);
