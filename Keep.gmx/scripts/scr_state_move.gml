///scr_state_move

// Get the input
scr_get_input(); 

if (key_dash && scr_interact_speaker() && obj_player_stats.player_stamina >= 5) {
    state = scr_state_dash;
    alarm[0] = room_speed / 6;
    obj_player_stats.player_stamina -= DASH_COST;
    obj_player_stats.alarm[0] = room_speed * 5;
}

if (key_attack) {
    image_index = 0;
    state = scr_state_attack;
}

// Get direction
var_direction = point_direction(0, 0, var_xaxis, var_yaxis);

// Get length
if (var_xaxis == 0 && var_yaxis == 0) {
    var_length = 0;
} else {
    var_length = var_speed;
    scr_get_face(); // Get the direction we are facing only if moving
}

// Get horisontal and vertical speed
var_horisontal_speed = lengthdir_x(var_length, var_direction);
var_vertical_speed = lengthdir_y(var_length, var_direction);

// Move
phy_position_x += var_horisontal_speed;
phy_position_y += var_vertical_speed;

// Animate player
src_animate_player();
