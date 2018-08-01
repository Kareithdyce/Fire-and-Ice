/// @desc loadGame()
//instance_create_depth(x,y,-1,obj_player);
if(file_exists(SAVEFILE)){
	ini_open(SAVEFILE);
	newX = ini_read_real("Location", "X", 128);
	newY = ini_read_real("Location", "Y", 864);
	newR = ini_read_real("Location", "Room", rm_demo1);
	instance_create_depth(0, 0, -1, obj_player);
	with(obj_player){
		jumps_max = ini_read_real("Player","MaxJumps",1);
		form = ini_read_real("Player","Form", 1);
		maxHealth = ini_read_real("Player", "MaxHealth", 100);
		currentHealth = maxHealth;
		maxMana = ini_read_real("Player", "MaxMana", 0);	
		currentMana = maxMana;
		atkpower = ini_read_real("Abilities", "AttackPower", 5);
		can_smash = ini_read_real("Abilities", "SmashAttack", false);
		can_wall_jump = ini_read_real("Abilities", "WallJump", false);
		var i = 0;
		healthUpColl = ini_read_real("Health","Crystals Collected", 0);
		repeat(NumHealthUps){
			healthUp[i] = ini_read_real("Health", string(i), 0);
			i++;
		}
	
		var i = 0;
		manaUpColl = ini_read_real("Mana","Crystals Collected", 0);
		repeat(NumManaUps){
			manaUp[i] = ini_read_real("Mana", string(i), 0);
			i++;
		}
		
		
		var i = 0;
		atkpower = ini_read_real("Attack", "Power", 5);
		atkUpColl = ini_read_real("Attack","Crystals Collected", 0);
		repeat(NumAtkUps){
			atkUp[i] = ini_read_real("Attack", string(i), 0);
			i++;
		}
		
		var i = 0;
		repeat(NumSwitches){
			switches[i] = ini_read_real("Switches", string(i), 0);
			i++;
		}
	}
	slideTrans(TRANS_MODE.GOTO, newR, newX, newY);	
	ini_close();
}