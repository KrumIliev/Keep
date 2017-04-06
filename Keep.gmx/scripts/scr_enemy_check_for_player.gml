///scr_enemy_check_for_player
if (instance_exists(obj_player) 
    && !collision_line(x, y, obj_player.x, obj_player.y - 16, obj_wall, false, true)) {
    
        if (point_distance(x, y, obj_player.x, obj_player.y) <= attack_range) {
            state = scr_state_enemy_attack;
            
        } else {
            state = scr_state_emeny_chase;
            var dir = point_direction(x, y, obj_player.x, obj_player.y);
            xaxis = lengthdir_x(1, dir);
            yaxis = lengthdir_y(1, dir);
        }
        
} else {
    scr_enemy_next_state();
}
