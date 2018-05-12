/// @desc slideTrans(mode, targetroom)
/// @arg mode sets transition mode between next, restart and goto.
/// @arg target sets target room when using goto mode.
with(obj_trans){
	mode = argument[0];
	if(argument_count > 1){
		target = argument[1];
	}
}