///scr_get_wall_type (grid_x, grid_y)

var grid_x = argument0;
var grid_y = argument1;

if (grid_x - 1 < 0 && grid_y - 1 < 0
    && obj_level.level[grid_x + 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x, grid_y + 1] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y + 1] == LVL_GROUND) {
    
     return LVL_WALL_OUT_TOP_LEFT;
     
} 

if (grid_x - 1 > 0 && grid_y - 1 < 0
    && obj_level.level[grid_x - 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x - 1, grid_y + 1] != LVL_GROUND
    && obj_level.level[grid_x, grid_y + 1] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y + 1] == LVL_GROUND) {
    
     return LVL_WALL_OUT_TOP_LEFT;
}

if (grid_x - 1 < 0 && grid_y - 1 > 0
    && obj_level.level[grid_x, grid_y - 1] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y - 1] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x, grid_y + 1] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y + 1] == LVL_GROUND) {

     return LVL_WALL_OUT_TOP_LEFT;    
}
    

if (obj_level.level[grid_x - 1, grid_y - 1] != LVL_GROUND
    && obj_level.level[grid_x, grid_y - 1] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y - 1] != LVL_GROUND
    && obj_level.level[grid_x - 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x - 1, grid_y + 1] != LVL_GROUND
    && obj_level.level[grid_x, grid_y + 1] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y + 1] == LVL_GROUND) {
    
    return LVL_WALL_OUT_TOP_LEFT;
}

if (grid_x + 1 > obj_level.grid_size - 1 && grid_y - 1 < 0
    && obj_level.level[grid_x - 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x, grid_y + 1] != LVL_GROUND
    && obj_level.level[grid_x - 1, grid_y + 1] == LVL_GROUND) {
    
    return LVL_WALL_OUT_TOP_RIGHT;
}

if (grid_x + 1 < obj_level.grid_size - 1 && grid_y - 1 < 0
    && obj_level.level[grid_x - 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x, grid_y + 1] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y + 1] != LVL_GROUND
    && obj_level.level[grid_x - 1, grid_y + 1] == LVL_GROUND) {
    
    return LVL_WALL_OUT_TOP_RIGHT;
}

if (obj_level.level[grid_x - 1, grid_y - 1] != LVL_GROUND
    && obj_level.level[grid_x, grid_y - 1] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y - 1] != LVL_GROUND
    && obj_level.level[grid_x - 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x - 1, grid_y + 1] == LVL_GROUND
    && obj_level.level[grid_x, grid_y + 1] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y + 1] != LVL_GROUND) {
    
    return LVL_WALL_OUT_TOP_RIGHT;
}

if (grid_x - 1 < 0 && grid_y + 1 > obj_level.grid_size - 1
    && obj_level.level[grid_x, grid_y - 1] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y - 1] == LVL_GROUND) {

    return LVL_WALL_OUT_BOTTOM_LEFT;
}

if (grid_y + 1 > obj_level.grid_size - 1
    && obj_level.level[grid_x - 1, grid_y - 1] != LVL_GROUND
    && obj_level.level[grid_x - 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x, grid_y - 1] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y - 1] == LVL_GROUND) {

    return LVL_WALL_OUT_BOTTOM_LEFT;
}

if (obj_level.level[grid_x - 1, grid_y - 1] != LVL_GROUND
    && obj_level.level[grid_x, grid_y - 1] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y - 1] == LVL_GROUND
    && obj_level.level[grid_x - 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x - 1, grid_y + 1] != LVL_GROUND
    && obj_level.level[grid_x, grid_y + 1] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y + 1] != LVL_GROUND) {
    
    return LVL_WALL_OUT_BOTTOM_LEFT;
}

if (grid_x + 1 > obj_level.grid_size - 1 && grid_y + 1 > obj_level.grid_size - 1
    && obj_level.level[grid_x, grid_y - 1] != LVL_GROUND
    && obj_level.level[grid_x - 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x - 1, grid_y - 1] == LVL_GROUND) {

    return LVL_WALL_OUT_BOTTOM_RIGHT;
}

if (grid_y + 1 > obj_level.grid_size - 1
    && obj_level.level[grid_x + 1, grid_y - 1] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x, grid_y - 1] != LVL_GROUND
    && obj_level.level[grid_x - 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x - 1, grid_y - 1] == LVL_GROUND) {

    return LVL_WALL_OUT_BOTTOM_RIGHT;
}

if (obj_level.level[grid_x - 1, grid_y - 1] == LVL_GROUND
    && obj_level.level[grid_x, grid_y - 1] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y - 1] != LVL_GROUND
    && obj_level.level[grid_x - 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x - 1, grid_y + 1] != LVL_GROUND
    && obj_level.level[grid_x, grid_y + 1] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y + 1] != LVL_GROUND) {
    
    return LVL_WALL_OUT_BOTTOM_RIGHT;
}

if ((grid_y - 1 < 0 || obj_level.level[grid_x, grid_y - 1] != LVL_GROUND)
    && obj_level.level[grid_x - 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x, grid_y + 1] == LVL_GROUND) {
    
    return LVL_WALL_OUT_TOP;
}

if (obj_level.level[grid_x, grid_y - 1] == LVL_GROUND
    && obj_level.level[grid_x - 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y] != LVL_GROUND
    && (grid_y + 1 > obj_level.grid_size - 1 || obj_level.level[grid_x, grid_y + 1] != LVL_GROUND)) {
    
    return LVL_WALL_OUT_BOTTOM;
}

if ( obj_level.level[grid_x, grid_y - 1] != LVL_GROUND
    && (grid_x - 1 < 0 || obj_level.level[grid_x - 1, grid_y] != LVL_GROUND)
    && obj_level.level[grid_x + 1, grid_y] == LVL_GROUND
    && obj_level.level[grid_x, grid_y + 1] != LVL_GROUND) {
    
    return LVL_WALL_OUT_LEFT;
}

if (obj_level.level[grid_x, grid_y - 1] != LVL_GROUND
    && obj_level.level[grid_x - 1, grid_y] == LVL_GROUND
    && (grid_x + 1 > obj_level.grid_size - 1 || obj_level.level[grid_x + 1, grid_y] != LVL_GROUND)
    && obj_level.level[grid_x, grid_y + 1] != LVL_GROUND) {
    
    return LVL_WALL_OUT_RIGHT;
}

if (obj_level.level[grid_x, grid_y - 1] == LVL_GROUND
    && obj_level.level[grid_x - 1, grid_y] == LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x, grid_y + 1] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y + 1] != LVL_GROUND) {
    
    return LVL_WALL_IN_TOP_LEFT;
}

if (obj_level.level[grid_x, grid_y - 1] == LVL_GROUND
    && obj_level.level[grid_x - 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y] == LVL_GROUND
    && obj_level.level[grid_x - 1, grid_y + 1] != LVL_GROUND
    && obj_level.level[grid_x, grid_y + 1] != LVL_GROUND) {
    
    return LVL_WALL_IN_TOP_RIGHT;
}

if (obj_level.level[grid_x, grid_y - 1] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y - 1] != LVL_GROUND
    && obj_level.level[grid_x - 1, grid_y] == LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x, grid_y + 1] == LVL_GROUND) {
    
    return LVL_WALL_IN_BOTTOM_LEFT;
}

if (obj_level.level[grid_x - 1, grid_y - 1] != LVL_GROUND
    && obj_level.level[grid_x, grid_y - 1] != LVL_GROUND
    && obj_level.level[grid_x - 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y] == LVL_GROUND
    && obj_level.level[grid_x, grid_y + 1] == LVL_GROUND) {
    
    return LVL_WALL_IN_BOTTOM_RIGHT;
}

return LVL_WALL_ERROR;
