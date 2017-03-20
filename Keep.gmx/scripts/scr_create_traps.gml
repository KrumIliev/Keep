///scr_create_traps

// Add fire trap
var location = scr_find_free_ground();
var grid_x = location[0];
var grid_y = location[1];

if (obj_level.level[grid_x, grid_y + 1] == LVL_GROUND && scr_chance(.4)) {
    instance_create(location[0] * 32, location[1] * 32, obj_flame_blast_trap);
    obj_level.level[grid_x, grid_y] = LVL_OBJECT;
    obj_level.level[grid_x, grid_y + 1] = LVL_OBJECT;
}

// Add spike traps
if (scr_chance(.6)) {
    location = scr_find_free_ground();
    grid_x = location[0];
    grid_y = location[1];


    scr_add_spike_trap_group(grid_x, grid_y);
}
