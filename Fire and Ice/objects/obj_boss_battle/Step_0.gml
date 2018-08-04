/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,obj_player)){
	with(obj_player){
		if(hascontrol){
			loseControl();
		}
	}
	obj_mino.ready = true;
	obj_Camera.follow = obj_mino;
}
