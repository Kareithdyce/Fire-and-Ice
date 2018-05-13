///Gets the player input
key_right = keyboard_check(vk_right) || keyboard_check(ord("D")) 
                || (gamepad_axis_value(0,gp_axislh) > 0);
        
key_left = -(keyboard_check(vk_left) || keyboard_check(ord("A")) 
                || (gamepad_axis_value(0,gp_axislh) < 0));
				
key_jump = keyboard_check_pressed(ord("W")) 
            || keyboard_check_pressed(vk_up) || (gamepad_button_check_pressed(0,gp_face1));
        
key_jump_release = keyboard_check_released(ord("W")) 
            || keyboard_check_released(vk_up) || (gamepad_button_check_pressed(0,gp_face1));

key_crouch = (keyboard_check(vk_down) || keyboard_check(ord("S")) 
                || (gamepad_axis_value(0,gp_axislv) > 0));

key_crouch = (keyboard_check(vk_down) || keyboard_check(ord("S")) 
                || (gamepad_axis_value(0,gp_axislv) > 0));
