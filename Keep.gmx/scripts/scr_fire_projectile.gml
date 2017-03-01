///scr_fire_projectile(obj_projectile)

var projectile = argument0;

var_direction = point_direction(0, 0, var_xaxis, var_yaxis);
if (var_length == 0) {
    var_direction = var_face * 90;
}

var xforce = lengthdir_x(100, var_direction);
var yforce = lengthdir_y(100, var_direction);
projectile.creator = id;
with (projectile) {
    physics_apply_impulse(x, y, xforce, yforce);
}
