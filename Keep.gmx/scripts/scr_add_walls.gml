///scr_add_bottom_walls(grid_x, grid_y)

var grid_x = argument0;
var grid_y = argument1;
var wall_type = LVL_WALL_ERROR;

show_debug_message("scr_add_walls X: " + string(grid_x) + " Y: " + string(grid_y))

if (grid_x >= 0 && grid_y >= 0 
    && grid_x <= obj_level.grid_size - 1 
    && grid_y <= obj_level.grid_size - 1) {
    
    if (obj_level.level[grid_x, grid_y] == LVL_EMPTY) {
        wall_type = scr_get_wall_type(grid_x, grid_y);

        obj_level.level[grid_x, grid_y] = wall_type;
        
        if (wall_type == LVL_WALL_OUT_TOP) {
            obj_level.level[grid_x, grid_y + 1] = LVL_WALL_BODY_TOP_CENTER;
            obj_level.level[grid_x, grid_y + 2] = LVL_WALL_BODY_BOTTOM_CENTER;
        }
        
        if (wall_type == LVL_WALL_IN_BOTTOM_LEFT) {
            obj_level.level[grid_x, grid_y + 1] = LVL_WALL_BODY_TOP_LEFT;
            obj_level.level[grid_x, grid_y + 2] = LVL_WALL_BODY_BOTTOM_LEFT;
        }
        
        if (wall_type == LVL_WALL_IN_BOTTOM_RIGHT) {
            obj_level.level[grid_x, grid_y + 1] = LVL_WALL_BODY_TOP_RIGHT;
            obj_level.level[grid_x, grid_y + 2] = LVL_WALL_BODY_BOTTOM_RIGHT;
        }
    }
}

