/// @desc saveGame
//overwrite the old file
if(file_exists(SAVEFILE)) file_delete((SAVEFILE));

ini_open(SAVEFILE);

//Create new File
//Location
ini_write_real("Location", "Room", room);
ini_write_real("Location", "X", x);
ini_write_real("Location", "Y", y);

//Player Stats
ini_write_real("Player", "MaxHealth", obj_player.maxHealth);
ini_write_real("Player", "MaxMana", obj_player.maxMana);
ini_write_real("Player", "MaxJumps", obj_player.jumps_max);
ini_write_real("Player", "Form", obj_player.form);


//Abilities
//ini_write_real("Abilities", "WallJump", obj_player.wall_jump);

//HealthUps
//ini_write_real("Health","NumPowerups", obj_player.NumHealthUps);
var i = 0;
repeat(obj_player.NumHealthUps){
	ini_write_real("Health",string(i), obj_player.healthUp[i]);
	i++;
}


//ManaUps
//ini_write_real("Mana","NumPowerups", obj_player.NumManaUps);
var i = 0;
repeat(obj_player.NumManaUps){
	ini_write_real("Mana",string(i), obj_player.manaUp[i]);
	i++;
}




ini_close();