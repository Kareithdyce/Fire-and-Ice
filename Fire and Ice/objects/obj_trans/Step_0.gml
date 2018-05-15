/// @description Progress the transition.
if(mode != TRANS_MODE.OFF){
	if(mode == TRANS_MODE.INTRO){
		percent = max(0, percent - max((percent/10), 0.005));
	}
	else{
		percent = min(2, percent + max(((2 - percent)/10),0.005));
	}
	if(percent == 2) || (percent == 0){
		switch(mode){
			
			case TRANS_MODE.INTRO:
				mode = TRANS_MODE.OFF;
				obj_player.hascontrol = true;
				if(travel){
					room_goto(target);
					travel = false;
				}
				break;
		
			case TRANS_MODE.GOTO:
				mode = TRANS_MODE.INTRO;
				travel = true;
				break;
		
			case TRANS_MODE.RESTART:
				game_restart();
				break;
			
		}
	}
}