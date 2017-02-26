///scr_enemy_check_for_player
if (instance_exists(obj_player)) {
    var dist = point_distance(x, y, obj_player.x, obj_player.y);
    if (dist < sight) {
        state = scr_state_emeny_chase;
        targetx = obj_player.x;
        targety = obj_player.y;
    } else {
        scr_enemy_next_state();
    }
    
} else {
    scr_enemy_next_state();
}
