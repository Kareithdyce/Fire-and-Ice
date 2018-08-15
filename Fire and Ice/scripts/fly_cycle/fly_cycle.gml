if(!dead){
	if(!is_waiting){
		enemy_run(enemy);
		mover += flyer_speed;
		dirc = sign(mover);
		movespeed = -abs(flyer_speed);
		if(abs(mover) >= move_radius || horizontal_collision()){
			movespeed = 0;
			is_waiting = true;
			enemy_idle(enemy);
			flyer_speed *= -1;
			alarm[1] = room_speed * wait_time;
		}
	}
}