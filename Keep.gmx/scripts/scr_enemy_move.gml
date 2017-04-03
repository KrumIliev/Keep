///scr_enemy_move
var_action = MOVE;
var dir = point_direction(0, 0, xaxis, yaxis);
var hspd = lengthdir_x(var_speed, dir);
var vspd = lengthdir_y(var_speed, dir);
/*
if (hspd != 0) {
    image_xscale = sign(hspd);
}*/
scr_get_face(dir);
phy_position_x += hspd;
phy_position_y += vspd;
