	///@description Creation
//raise = 0;

getInput();

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
inside_wall = false;
dirc = 1;
grav = 0.3;
gravMax = 15;
grounded = true;
on_ground = true;
gameOver = false;
dead = false;
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
NumHealthUps = 7;
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
atk = false;
atkpower = 5;
knockback = 0;
knockback3 = 10;

//Aerials
aerial = false;
fHit = true;
can_smash = false;
is_smashing = false;
	


hascontrol = true;
sliding = false;
crouching = false;
hit = false;
move = 0;
invincible = false;
//Fire Variables
//form 2 is fire

//Ice Variables
//form 3 is ice


vTouch = false;
hTouch = false;
//Wall Jump
can_wall_jump = false;
wall_jump = false;

//For stats
powerUpColl = 0;


//Gamepad Configuration
gamepad_set_axis_deadzone(0,0.7);
