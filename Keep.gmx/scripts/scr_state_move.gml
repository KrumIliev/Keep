///scr_state_move

scr_get_input();

if (key_right) {
    phy_position_x += var_speed;
    sprite_index = spr_player_right;
    image_speed = .4;
}

if (key_left) {
    phy_position_x -= var_speed;
    sprite_index = spr_player_left;
    image_speed = .4;
}

if (key_up) {
    phy_position_y -= var_speed;
    sprite_index = spr_player_up;
    image_speed = .4;
}

if (key_down) {
    phy_position_y += var_speed;
    sprite_index = spr_player_down;
    image_speed = .4;
}

if (!key_right && !key_left && !key_up && !key_down) {
    image_speed = 0;
    image_index = 0;
}
