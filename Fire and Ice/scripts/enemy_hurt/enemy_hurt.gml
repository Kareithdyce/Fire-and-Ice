hp -= obj_player.atkpower;
if(argument[0] == "skeleton"){
	sprite_index = spr_skeleton_hit;
	image_index = 0;
	x-= 10;
	hit = false;
	invincible = true;
	alarm[0] = room_speed * .6;
}
