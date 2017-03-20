///scr_fire_fire_blast_projectile(x, y, x_offset, y_offset, rotation, direction, depth)

var xx = argument0;
var yy = argument1;
var x_offset = argument2;
var y_offset = argument3;
var dir = argument5;

var proj = instance_create(xx + x_offset, yy + y_offset, obj_flame_blast);
proj.depth = argument6;
proj.phy_rotation = argument4;
var xforce = lengthdir_x(35, dir);
var yforce = lengthdir_y(35, dir);
with (proj) {
    physics_apply_impulse(xx, yy, xforce, yforce);
} 
