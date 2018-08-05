/// @description Insert description here
// You can write your code in this editor
if(count < maxRocks){
	if(spawn){
		spawn = false;
		repeat(5){
			instance_create_depth(obj_player.x + random_range(-96,96), y, -2, obj_falling_rock);
		}
		alarm[1] = room_speed * .5;
		count++;
		alarm[0] = room_speed * 6;
	}
}
else{
	spawn = false;
}