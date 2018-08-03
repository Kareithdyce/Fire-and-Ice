/// @description Insert description here
// You can write your code in this editor
if(sDirc == -1){
	vspd = raise;
	image_index = 0;
}
else if(sDirc == 1){
	vspd = grav;
	image_index = 1;
}

if(place_meeting(x-(sprite_width/2),y-10,obj_player) && active){
	start = true;
}

if(start){
	vertical_collision()
	y+= vspd;
	if(place_meeting(x-(sprite_width/2),y-10,obj_player)){
		with(obj_player){
			vplat = true;
			vspd = 0;
			loseControl();
			on_ground = true;
			y = other.y;
		}
	}
}
if(start && vspd == 0){
	start = false;
	obj_player.hascontrol = true;
	active = false;
}

