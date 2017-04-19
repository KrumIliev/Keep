///scr_fire_curved_projectile(projectile, speed, creator)

var proj = argument0;
var spd = argument1;

if (instance_exists(obj_player)){
    with (proj) {
        creator = argument2;
        end_x = obj_player.x;
        end_y = obj_player.y;
        dist = point_distance(x, y, obj_player.x, obj_player.y);
        
        // Start moving
        dir = point_direction(x, y, obj_player.x, obj_player.y);
        var xforce = lengthdir_x(spd, dir);
        var yforce = lengthdir_y(spd, dir);
        physics_apply_impulse(x, y, xforce, yforce);
    }
}
