	///@description Creation

//demo
demo = true;

debug = 0;
//Turn this off after clearing the last intro room

//Basic
image_speed = 1;
image_index = 0;
form = 0;
pause = false;
blink = 0;
hspd = 0;
true_color = image_blend;
vspd = 0;
movespeed = 3;
dirc = 1;
grav = 0.3;
grounded = true;
stuck = false;
depth = -1;

//Platforms
vplat = false;
hplat = false;
//Jumping
number_of_jumps = 0;
jumps_max = 1;
is_jumping = false;
jumpspeed = 8;

//Health
maxHealth = 100;
currentHealth = maxHealth;
var i = 0;
repeat(6){
	healthUp[i] = false;
	i++;
}
//
has_sword = false;
hascontrol = true;
sliding = false;
hit = false;
invincible = false;
//Fire Variables

fireMode = false;

//Ice Variables
iceMode = false;
vTouch = false;
hTouch = false;
//Wall Jump
can_wall_jump = true;
wall_jump = false;
//Gamepad Configuration
gamepad_set_axis_deadzone(0,0.7);
