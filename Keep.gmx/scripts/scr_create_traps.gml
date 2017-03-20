///scr_create_traps

// Add fire trap
var location = scr_find_free_ground();
var grid_x = location[0];
var grid_y = location[1];

if (obj_level.level[grid_x, grid_y + 1] == LVL_GROUND) {
    instance_create(location[0] * 32, location[1] * 32, obj_flame_blast_trap);
    obj_level.level[grid_x, grid_y] = LVL_OBJECT;
    obj_level.level[grid_x, grid_y + 1] = LVL_OBJECT;
}

// Add 10 spike traps
var spikes = 0;
while(spikes < 5) {
    location = scr_find_free_ground();
    grid_x = location[0];
    grid_y = location[1];
    
    instance_create(grid_x * 32, grid_y * 32, obj_spike_trap);
    obj_level.level[grid_x, grid_y] = LVL_OBJECT;
    spikes++;
}
