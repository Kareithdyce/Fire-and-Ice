///@desc ScreenShake(magnitude,frames)
///@arg Magnitude strength of the shake (radius in pixels)
///@arg Frames sets the length of the shake in frames (60 = 1 second @ 60 fps)
with(obj_Camera){
	audio_play_sound(s_shake,100,false);
	if(argument[0] > shake_remain){
		shake_remain = argument[0];
		shake_magnitude = argument[0];
		shake_length = argument[1];
	}
}