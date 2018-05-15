/// @desc slideTrans(mode, targetroom)
/// @arg mode sets transition mode between next, restart and goto.
/// @arg target sets target room when using goto mode.
///@arg newX
///@arg newX
with(obj_trans){
	mode = argument[0];
	if(argument_count > 3){
		target = argument[1];
		newX = argument[2];
		newY = argument[3];
	}
}