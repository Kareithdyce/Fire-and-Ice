if(obj_player.can_smash){
	with(obj_falling){
		special = true;
		y = 1248;
	}
	with(obj_boss_batte){
		instance_destroy();
	}
	instance_destroy();
}