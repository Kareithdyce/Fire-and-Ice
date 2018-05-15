/// @description Transports player to next room
// You can write your code in this editor
with(obj_player){
	if(hascontrol){
		hascontrol = false;
	}
}
slideTrans(TRANS_MODE.GOTO,target, setX,setY);
