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
with(obj_player){
	ini_write_real("Player", "MaxHealth", maxHealth);
	ini_write_real("Player", "MaxMana", maxMana);
	ini_write_real("Player", "MaxJumps", jumps_max);
	ini_write_real("Player", "Form", form);


	//Abilities
	ini_write_real("Abilities", "WallJump", can_wall_jump);
	ini_write_real("Abilities", "AttackPower", atkpower);
	ini_write_real("Abilities", "SmashAttack", can_smash);

	//HealthUps
	//ini_write_real("Health","NumPowerups", obj_player.NumHealthUps);
	var i = 0;
	repeat(NumHealthUps){
		ini_write_real("Health",string(i), healthUp[i]);
		i++;
	}


	//ManaUps
	//ini_write_real("Mana","NumPowerups", obj_player.NumManaUps);
	var i = 0;
	repeat(NumManaUps){
		ini_write_real("Mana",string(i), manaUp[i]);
		i++;
	}

	//Switches
	var i = 0;
	repeat(NumSwitches){
		ini_write_real("Switches",string(i), switches[i]);
		i++;
	}


}



ini_close();