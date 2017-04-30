///scr_npc_choose
state = choose(scr_npc_idle, scr_npc_idle, scr_npc_idle, scr_npc_move);

if (state == scr_npc_move) {
    xaxis = random_range(-1, 1);
    yaxis = random_range(-1, 1);
} 

alarm[0] = room_speed * irandom_range(2, 4);

