///scr_damage_player(damage)
if (instance_exists(obj_player) && obj_player.can_be_damaged) {
    obj_player.can_be_damaged = false;          // Disable damage intile recovery
    obj_player_stats.player_hp -= argument0;    // Damage tge player
    obj_camera.alarm[0] = room_speed;           // Shake the screen
    obj_player.alarm[2] = room_speed * 2;       // Trigger recovery duration
    obj_player.alarm[3] = 1;                    // Start flashing between red and white
}

