	///@description Creation

#macro SAVEFILE "save.ini"


//demo
demo = true;

debug = 0;
diffX = -1;
diffY = -1;
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
NumHealthUps = 6;
repeat(NumHealthUps){
	healthUp[i] = false;
	i++;
}

//Mana
maxMana = 0;
currentMana = maxMana;
var i = 0;
NumManaUps = 0;
repeat(NumManaUps){
	manaUp[i] = false;
	i++;
}


//Attacks
has_sword = false;
pAttack1 = false;
pAttack2 = false;
pAttack3 = false;
atk = pAttack1 || pAttack2 || pAttack3;



hascontrol = true;
sliding = false;
hit = false;
invincible = false;
//Fire Variables
//form 2 is fire

//Ice Variables
//form 3 is ice


vTouch = false;
hTouch = false;
//Wall Jump
can_wall_jump = true;
wall_jump = false;
//Gamepad Configuration
gamepad_set_axis_deadzone(0,0.7);
