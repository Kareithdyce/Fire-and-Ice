/// @description Insert description here
// You can write your code in this editor
if(!removed){
	audio_play_sound(s_break, 100, false);
	if(smashed){
		repeat(irandom(15)+15){
			instance_create_depth(x+random_range(-32,32),y+(random_range(10, sprite_height/2)), depth, obj_smashed_wall);
		}
	}
	else{
		repeat(irandom(15)+15){
			instance_create_depth(x+random_range(-32,32),y+(random_range(10, sprite_height/2)), depth, obj_breaking_wall);
		}
	}
}
