///scr_state_move

// Get the input
scr_get_input(); 

if (key_dash) {
    state = scr_state_dash;
    alarm[0] = room_speed / 6;
}

// Get direction
var_direction = point_direction(0, 0, var_xaxis, var_yaxis);

// Get length
if (var_xaxis == 0 && var_yaxis == 0) {
    var_length = 0;
} else {
    var_length = var_speed;
}

// Get horisontal and vertical speed
var_horisontal_speed = lengthdir_x(var_length, var_direction);
var_vertical_speed = lengthdir_y(var_length, var_direction);

// Move
phy_position_x += var_horisontal_speed;
phy_position_y += var_vertical_speed;

// Animate player
image_speed = .4;
if (var_length == 0) {
    image_index = 0;
}
if (var_vertical_speed > 0) {
    sprite_index = spr_player_down;
} else if (var_vertical_speed < 0) {
    sprite_index = spr_player_up;
}
if (var_horisontal_speed > 0) {
    sprite_index = spr_player_right;
} else if (var_horisontal_speed < 0) {
    sprite_index = spr_player_left;
}
