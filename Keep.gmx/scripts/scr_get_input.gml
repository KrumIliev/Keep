///scr_get_input
key_right = keyboard_check(vk_right);
key_left = keyboard_check(vk_left);
key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);
key_dash = keyboard_check_pressed(ord('C'));
key_attack = keyboard_check_pressed(ord('X'));

// Get the axis
var_xaxis = (key_right - key_left); 
var_yaxis = (key_down - key_up);

// Check for gamepad input 
if (gamepad_is_connected(0)) {
    gamepad_set_axis_deadzone(0, .35);
    var_xaxis = gamepad_axis_value(0, gp_axislh);
    var_yaxis = gamepad_axis_value(0, gp_axislv);
    key_dash = gamepad_button_check_pressed(0, gp_face1);
    key_attack = gamepad_button_check_pressed(0, gp_face3);
}
