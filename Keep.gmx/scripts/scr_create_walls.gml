///scr_create_walls
scr_print_grid(obj_level.level, 0);
grid_x = 0;
grid_y = 0;

for (grid_x = 0; grid_x <= obj_level.grid_size - 1; grid_x++) {
    for (grid_y = 0; grid_y <= obj_level.grid_size - 1; grid_y++) {
    
        if (obj_level.level[grid_x, grid_y] == LVL_GROUND) {
            scr_add_walls(grid_x - 1, grid_y - 1);
            scr_add_walls(grid_x, grid_y - 1);
            scr_add_walls(grid_x + 1, grid_y - 1);
            scr_add_walls(grid_x - 1, grid_y);
            scr_add_walls(grid_x + 1, grid_y);
            scr_add_walls(grid_x - 1, grid_y + 1);
            scr_add_walls(grid_x, grid_y - 1);
            scr_add_walls(grid_x + 1, grid_y + 1);
        }
    }
}

scr_finish_walls();
