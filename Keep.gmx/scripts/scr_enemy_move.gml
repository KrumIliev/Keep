///scr_enemy_move
var dir = point_direction(x, y, targetx, targety);
var hspd = lengthdir_x(var_speed, dir);
var vspd = lengthdir_y(var_speed, dir);
phy_position_x += hspd;
phy_position_y += vspd;
