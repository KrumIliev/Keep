///scr_enemy_state_check
if (instance_exists(obj_player)) {
    if (point_distance(x, y, obj_player.x, obj_player.y) <= attack_range) {
        state = scr_enemy_state_idle;
        alarm[1] = room_speed * .2;
    
    } else {
        state = scr_enemy_state_move;
    }
    
} else {
    state = scr_enemy_state_idle;
}
