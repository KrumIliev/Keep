///scr_enemy_damage(enemy, damage, knockback)

var enemy = argument0;
var damage = argument1;
var knockback = argument2;

if (instance_exists(enemy)) {
    
    enemy.var_health -= damage; 
       
    if (instance_exists(obj_player) && enemy.alarm[2] <= 0) {
        with(enemy) {
            var dir = point_direction(obj_player.x, obj_player.y, x, y);
            var xforce = lengthdir_x(knockback, dir); 
            var yforce = lengthdir_y(knockback, dir);
            physics_apply_impulse(x, y, xforce, yforce);
        }
    }
    
    enemy.alarm[2] = room_speed * 2;
    enemy.path.run_path = false;
}
