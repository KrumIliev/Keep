///scr_random_level

// Clear the grid
for (grid_x = 0; grid_x <= (room_width / 32) - 1; grid_x++) {
    for (grid_y = 0; grid_y <= (room_height / 32) - 1; grid_y++) {
        obj_level.level[grid_x, grid_y] = LVL_EMPTY;
    }
}

obj_level.grid_size = array_length_1d(obj_level.level);

// Generate the level
scr_create_floor();
scr_create_walls();
scr_create_level();
scr_create_portals();

// Add the ground
background_index[0] = bg_ground_dirt;

// Add the player
location = scr_find_free_ground();
instance_create(location[0] * 32, location[1] * 32, obj_player);
instance_create(0, 0, obj_enemy_spawn_timer);
instance_create(0, 0, obj_light);
