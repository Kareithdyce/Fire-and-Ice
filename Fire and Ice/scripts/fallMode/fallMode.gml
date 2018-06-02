/// @desc fallMode(sprite)
/// @arg sprite 
//basic jumps
if (argument[0] == jump_b1 || argument[0] == jump_b2 || argument[0] == slide_b || argument[0] == walk_b || argument[0] == crouch_b || argument[0] == idle_b){
    sprite_index = fall_b; 
    image_speed = .6;   
}

if (argument[0] == jump_bs1 || argument[0] == jump_bs2 || argument[0] == slide_bs || argument[0] == walk_bs || argument[0] == crouch_bs || argument[0] == idle_bs){
    sprite_index = fall_bs; 
    image_speed = .6;   
}
