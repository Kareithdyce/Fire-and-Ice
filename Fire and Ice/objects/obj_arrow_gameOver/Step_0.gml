/// @description Insert description here
// You can write your code in this editor
key_up = keyboard_check_pressed(ord("W")) 
            || keyboard_check_pressed(vk_up) ||  gamepad_button_check_pressed(0,gp_padu);
        
key_down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S")) 
            || gamepad_button_check_pressed(0,gp_padd);

key_confirm = keyboard_check_pressed(ord("X")) || (gamepad_button_check_pressed(0,gp_face2));

key_back  = keyboard_check_pressed(ord("C")) || (gamepad_button_check_pressed(0,gp_face3));


if(key_up && choice != 0){
	y-= 75;
	choice--;
}
else if(key_down && choice != 1){
	y+= 75;
	choice++;
}

else if(key_confirm){
	switch(choice){
		case 0:
			slideTrans(TRANS_MODE.RESTART);	
			break;
		case 1:
			game_end();
		break;
	}
}