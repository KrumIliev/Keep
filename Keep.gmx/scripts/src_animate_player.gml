///src_animate_player
image_speed = .4;
if (var_length == 0) {
    image_index = 0;
}

switch (var_face) {
    case RIGHT:
        sprite_index = spr_player_right;
        break;
        
    case LEFT:
        sprite_index = spr_player_left;
        break;
        
    case UP:
        sprite_index = spr_player_up;
        break;
        
    case DOWN:
        sprite_index = spr_player_down;
        break;
}
