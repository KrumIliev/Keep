///scr_state_dash

// Fixes the dashing if the player is standing still 
if (var_length == 0) {
    var_direction = var_face * 90;
}

var_length = var_speed * 4;

// Get horisontal and vertical speed
var_horisontal_speed = lengthdir_x(var_length, var_direction);
var_vertical_speed = lengthdir_y(var_length, var_direction);

// Move
phy_position_x += var_horisontal_speed;
phy_position_y += var_vertical_speed;

//Create effect
var dash = instance_create(x, y, obj_dash_effect);
dash.sprite_index = sprite_index;
dash.image_index = image_index;
