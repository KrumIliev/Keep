///scr_state_move

// Get the input
scr_get_input(); 

// Get direction
var dir = point_direction(0, 0, xaxis, yaxis);

// Get length
if (xaxis == 0 && yaxis == 0) {
    var_length = 0;
} else {
    var_length = var_speed;
}

// Get horisontal and vertical speed
var_horisontal_speed = lengthdir_x(var_length, dir);
var_vertical_speed = lengthdir_y(var_length, dir);

// Move
phy_position_x += var_horisontal_speed;
phy_position_y += var_vertical_speed;

// Animate player
image_speed = .5;
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
