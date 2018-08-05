/// @description Insert description here
// You can write your code in this editor
///*
if(instance_exists(obj_player)){
	death = obj_player.dead;
	with(obj_player){
		powerUpColl = healthUpColl + atkUpColl + manaUpColl;
		other.percent = powerUpColl/(NumHealthUps + NumManaUps + NumAtkUps);
	}
	percent*=100;
	if(percent < 50){
	message = "Look around for power-ups next time.";
	}
	else if(percent < 75){
		message = "There are still quite a few upgrades out there!";
	}
	else if(percent >= 99){
		message = "You found everything Congrats!";
	}
	else{
		message = "You're almost there keep going!";
	}
}
if(death){
	text = "No!!! It can't end here! Don't lose hope!";	
}
else{
	text = "Congrats you beat the demo!!!\n";
	text += message+"\n";
	text+=string(percent);
	text+="% of items found!";
}
//*/
