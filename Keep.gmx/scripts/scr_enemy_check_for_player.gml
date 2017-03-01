///scr_enemy_check_for_player
if (instance_exists(obj_player)) {
    var dist = point_distance(x, y, obj_player.x, obj_player.y);
    if (dist < sight) {
        state = scr_state_emeny_chase;
        var dir = point_direction(x, y, obj_player.x, obj_player.y);
        xaxis = lengthdir_x(1, dir);
        yaxis = lengthdir_y(1, dir);
    } else {
        scr_enemy_next_state();
    }
    
} else {
    scr_enemy_next_state();
}
