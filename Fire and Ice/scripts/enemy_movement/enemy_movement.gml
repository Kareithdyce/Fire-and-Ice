///Handles movement for enemies
//Horizontial Movement
if(!hit && !attacking){
	hspd = dirc * movespeed;
}

//Collisions
if(flying && !dead){
	vspd = hoverspeed;
	vertical_collision()
}
else{
	vspd += grav;
	if(vspd > gravMax){
		vspd = gravMax;
	}
	vertical_collision_enemy();
}
y += vspd;
if(!keep_walking()){
	horizontal_collision_enemy();
	x += hspd;
}
else if(flying){
		horizontal_collision();
		x += hspd;
}
