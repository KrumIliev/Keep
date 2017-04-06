///scr_enemy_next_state
if (alarm[0] <= 0) {
    state = choose(scr_state_enemy_wander, scr_state_enemy_idle, scr_state_enemy_wander, scr_state_enemy_wander);
    alarm[0] = room_speed * irandom_range(2, 4); 
    if (state == scr_state_enemy_wander) {
        xaxis = random_range(-1, 1);
        yaxis = random_range(-1, 1);
    }
}
