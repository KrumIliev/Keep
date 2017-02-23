///scr_dash

var_length = var_speed * 4;

// Get horisontal and vertical speed
var_horisontal_speed = lengthdir_x(var_length, var_direction);
var_vertical_speed = lengthdir_y(var_length, var_direction);

// Move
phy_position_x += var_horisontal_speed;
phy_position_y += var_vertical_speed;
