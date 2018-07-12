///Handles movement for enemies
//Horizontial Movement
if(!hit && !attacking){
	hspd = dirc * movespeed;
}
vspd += grav;
if(vspd > gravMax){
	vspd = gravMax;
}
//Collisions
vertical_collision();
y += vspd;
horizontal_collision();
x += hspd;

	