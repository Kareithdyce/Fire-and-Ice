/// @description Insert description here
// You can write your code in this editor
swords = obj_atk_up.swords;
if(swords != 0){
	textA = "Collect " + string(3 - swords) + " more crystals to raise attack power by 5.";
}
else{
	textA = "Attack Power raised by 5!";
}
text = "Press any button to continue";
depth = -1001;

write = textA;
write += "\n"+text;