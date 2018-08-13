/// @description Insert description here
// You can write your code in this editor

//Forest 
if(room >= rm_demo1 && room <= rm_demo3 && !audio_is_playing(m_forest)){
	audio_play_sound(m_forest, 1000, true);
	audio_sound_gain(m_forest, 1, 1000);
}
else if(!(room >= rm_demo1 && room <= rm_demo3) && audio_is_playing(m_forest) && audio_sound_get_gain(m_forest) == 1){
	audio_sound_gain(m_forest, 0, 1000);
}


//Caverns
if(room >= rm_cave1 && room <= rm_cave5 && !audio_is_playing(m_cave) && !instance_exists(obj_mino)){
	audio_play_sound(m_cave, 1000, true);
	audio_sound_gain(m_cave, 1, 1000);
}
else if(!(room >= rm_cave1 && room <= rm_cave5) && audio_is_playing(m_cave) && audio_sound_get_gain(m_cave) == 1){
	audio_sound_gain(m_cave, 0, 1000);
}


//Caverns Boss
if(room == rm_cave4 && instance_exists(obj_mino)){
	
	if(!audio_is_playing(m_boss_intro) && !audio_is_playing(m_boss) && obj_mino.ready && intro){
		audio_sound_gain(m_cave, 0, 2000);
		audio_play_sound(m_boss_intro, 1000, false);
		audio_sound_gain(m_boss_intro, 1, 1000);
		
		intro = false;
	}
	else if(!audio_is_playing(m_boss_intro) && !audio_is_playing(m_boss) && !intro){
		audio_play_sound(m_boss, 1000, true);
		audio_sound_gain(m_boss, 1, 0);
		
		//intro = true;
	}
}
else if(!instance_exists(obj_mino) && audio_is_playing(m_boss) && audio_sound_get_gain(m_boss) == 1){
	audio_sound_gain(m_boss, 0, 2000);
	audio_sound_gain(m_cave, 1, 2000);
	intro = true;
}

//Clean-up

if(audio_sound_get_gain(m_cave) == 0){
	audio_stop_sound(m_cave);
}


if(audio_sound_get_gain(m_forest) == 0){
	audio_stop_sound(m_forest);
}


if(audio_sound_get_gain(m_boss) == 0){
	audio_stop_sound(m_boss);
	audio_stop_sound(m_boss_intro);	
}