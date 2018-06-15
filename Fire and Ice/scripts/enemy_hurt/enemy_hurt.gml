hp -= obj_player.atkpower;
if(argument[0] == "skeleton"){
	if(awake && !revive){
		sprite_index = spr_skeleton_hit;
		image_speed = 1;
		image_index = 0;
		hit = false;
		invincible = true;
		alarm[0] = room_speed * .6;
	}
}
hspd = obj_player.dirc*hitspeed; 
horizontal_collision(true);
x+= hspd;
