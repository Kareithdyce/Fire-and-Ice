/// @desc loadGame()
//instance_create_depth(x,y,-1,obj_player);
if(file_exists(SAVEFILE)){
	ini_open(SAVEFILE);
	newX = ini_read_real("Location", "X", 128);
	newY = ini_read_real("Location", "Y", 864);
	newR = ini_read_real("Location", "Room", rm_demo1);
	instance_create_depth(0, 0, -1, obj_player);
	obj_player.jumps_max = ini_read_real("Player","MaxJumps",1);
	obj_player.form = ini_read_real("Player","Form", 1);
	obj_player.maxHealth = ini_read_real("Player", "MaxHealth", 100);
	obj_player.maxMana = ini_read_real("Player", "MaxMana", 0);	
	obj_player.atkpower = ini_read_real("Abilities", "AttackPower", 5);
	obj_player.can_smash = ini_read_real("Abilities", "SmashAttack", false);
	obj_player.can_wall_jump = ini_read_real("Abilities", "WallJump", false);
	var i = 0;
	repeat(obj_player.NumHealthUps){
		obj_player.healthUp[i] = ini_read_real("Health", string(i), 0);
		i++;
	}
	
	var i = 0;
	repeat(obj_player.NumManaUps){
		obj_player.manaUp[i] = ini_read_real("Mana", string(i), 0);
		i++;
	}

	slideTrans(TRANS_MODE.GOTO, newR, newX, newY);	
	ini_close();
}