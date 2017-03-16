///scr_finish_walls
grid_x = 0;
grid_y = 0;

for (grid_x = 0; grid_x <= obj_level.grid_size - 1; grid_x++) {
    for (grid_y = 0; grid_y <= obj_level.grid_size - 1; grid_y++) {
        
        if (obj_level.level[grid_x, grid_y] == LVL_WALL_OUT_TOP) {
            obj_level.level[grid_x, grid_y + 1] = LVL_WALL_BODY_TOP_CENTER;
            obj_level.level[grid_x, grid_y + 2] = LVL_WALL_BODY_BOTTOM_CENTER;
        }
        
        if (obj_level.level[grid_x, grid_y] == LVL_WALL_IN_BOTTOM_LEFT) {
            obj_level.level[grid_x, grid_y + 1] = LVL_WALL_BODY_TOP_LEFT;
            obj_level.level[grid_x, grid_y + 2] = LVL_WALL_BODY_BOTTOM_LEFT;
        }
        
        if (obj_level.level[grid_x, grid_y] == LVL_WALL_IN_BOTTOM_RIGHT) {
            obj_level.level[grid_x, grid_y + 1] = LVL_WALL_BODY_TOP_RIGHT;
            obj_level.level[grid_x, grid_y + 2] = LVL_WALL_BODY_BOTTOM_RIGHT;
        }
    }
}
