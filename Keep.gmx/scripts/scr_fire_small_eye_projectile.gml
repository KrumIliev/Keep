///scr_fire_small_eye_projectile(x, y, dir)

var xx = argument0;
var yy = argument1;
var dir = argument2;

var proj = instance_create(xx, yy, obj_eye_projectile_small);
var xforce = lengthdir_x(2, dir);
var yforce = lengthdir_y(2, dir);

with (proj) {
    physics_apply_impulse(xx, yy, xforce, yforce);
} 
