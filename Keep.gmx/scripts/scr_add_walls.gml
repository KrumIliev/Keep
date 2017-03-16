///scr_add_bottom_walls(grid_x, grid_y)

var grid_x = argument0;
var grid_y = argument1;
var wall_type = LVL_WALL_ERROR;

if (grid_x >= 0 && grid_y >= 0 
    && grid_x <= obj_level.grid_size - 1 
    && grid_y <= obj_level.grid_size - 1) {
    
    if (obj_level.level[grid_x, grid_y] == LVL_EMPTY) {
        wall_type = scr_get_wall_type(grid_x, grid_y);

        obj_level.level[grid_x, grid_y] = wall_type;
    }
}

