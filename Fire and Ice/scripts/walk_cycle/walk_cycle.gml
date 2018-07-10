if(!is_waiting){
	enemy_run(enemy);
	dirc = sign(mover);
	mover += walk_speed;
	movespeed = -abs(walk_speed);
if(abs(mover) >= abs(move_radius) || keep_walking() || horizontal_collision()){
	walk_speed *= -1;
	movespeed  = 0;
	mover = 0;
	is_waiting = true;
	enemy_idle(enemy);
	alarm[1] = room_speed * wait_time;
}
}
