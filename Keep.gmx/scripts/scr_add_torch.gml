///scr_add_torch(grid_x, grid_y)
var grid_x = argument0;
var grid_y = argument1;

if ((obj_level.level[grid_x + 1, grid_y] == LVL_WALL_BODY_TOP_RIGHT
    || obj_level.level[grid_x - 1, grid_y] == LVL_WALL_BODY_TOP_LEFT)
                && scr_chance(.6)) {
    
     instance_create(grid_x * 32, grid_y * 32, obj_wall_torch);
     return true;
}

return false;
