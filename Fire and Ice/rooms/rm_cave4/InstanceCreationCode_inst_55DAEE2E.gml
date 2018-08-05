if(obj_player.can_smash){
	with(obj_falling){
		special = true;
		y = 1248;
		vspd = 0;
	}
	with(obj_boss_battle){
		instance_destroy();
	}
	instance_destroy();
}