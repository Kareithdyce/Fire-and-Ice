/// @description Insert description here
// You can write your code in this editor
vspd += grav;
//image_angle++;
if(vspd > gravMax){
	vspd = gravMax;
}
vertical_collision();
y+= vspd;
if(vspd == 0){
	instance_destroy()
}