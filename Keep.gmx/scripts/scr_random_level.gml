///scr_random_level
for (grid_x = 0; grid_x <= (room_width / 32) - 1; grid_x++) {
    for (grid_y = 0; grid_y <= (room_height / 32) - 1; grid_y++) {
        obj_level.level[grid_x, grid_y] = GENERATOR_EMPTY;
    }
}

obj_level.grid_size = array_length_1d(obj_level.level);
show_debug_message("grid_size: " + string(obj_level.grid_size));

scr_create_floor();
scr_create_walls();
scr_create_level();
