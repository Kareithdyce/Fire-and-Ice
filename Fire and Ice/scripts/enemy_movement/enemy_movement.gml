///Handles movement for the player
//Horizontial Movement
if(!hit && !attacking){
	hspd = dirc * movespeed;
	vspd += grav;
}	
//Collisions
vertical_collision();
y += vspd;
horizontal_collision(true);
x += hspd;

	