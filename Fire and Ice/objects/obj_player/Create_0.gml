	///@description Creation

//demo
demo = true;
//Turn this off after clearing the last intro room

//Basic
image_speed = 1;
image_index = 0;
blink = 0;
hspd = 0;
true_color = image_blend;
vspd = 0;
movespeed = 3;
dirc = 1;
grav = 0.3;
depth = -1;

//Jumping
number_of_jumps = 0;
jumps_max = 1;
is_jumping = false;
jumpspeed = 8;

//Health
maxHealth = 100;
currentHealth = maxHealth;

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

//Wall Jump
can_wall_jump = true;
wall_jump = false;
//Gamepad Configuration
gamepad_set_axis_deadzone(0,0.7);
