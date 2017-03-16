///scr_get_wall_type (grid_x, grid_y)

var grid_x = argument0;
var grid_y = argument1;
var showDebug = false;

// ---------------------------------------------------------------
// TOP - LEFT - OUT
// ---------------------------------------------------------------

if (showDebug) show_debug_message("TOP - LEFT - OUT")

if (grid_x - 1 < 0 && grid_y - 1 < 0
    && obj_level.level[grid_x + 1, grid_y + 1] == LVL_GROUND) {
    if (showDebug) show_debug_message("TOP - LEFT - OUT X: " + string(grid_x) + " Y: " + string(grid_y))
    
    return LVL_WALL_OUT_TOP_LEFT;
} 

if (grid_x - 1 > 0 && grid_x + 1 < obj_level.grid_size - 1 && grid_y - 1 < 0
    && obj_level.level[grid_x + 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x, grid_y + 1] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y + 1] == LVL_GROUND) {
    if (showDebug) show_debug_message("TOP - LEFT - OUT X: " + string(grid_x) + " Y: " + string(grid_y))
    
    return LVL_WALL_OUT_TOP_LEFT;
}

if (grid_x - 1 < 0 && grid_y - 1 > 0 && grid_y + 1 < obj_level.grid_size - 1
    && obj_level.level[grid_x + 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x, grid_y + 1] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y + 1] == LVL_GROUND) {
    if (showDebug) show_debug_message("TOP - LEFT - OUT X: " + string(grid_x) + " Y: " + string(grid_y))

    return LVL_WALL_OUT_TOP_LEFT;    
}

// ---------------------------------------------------------------
// TOP - RIGHT - OUT
// ---------------------------------------------------------------
if (showDebug) show_debug_message("TOP - RIGHT - OUT")

if (grid_x + 1 > obj_level.grid_size - 1 && grid_y - 1 < 0
    && obj_level.level[grid_x - 1, grid_y + 1] == LVL_GROUND) {
    if (showDebug) show_debug_message("TOP - RIGHT - OUT X: " + string(grid_x) + " Y: " + string(grid_y))
    
    return LVL_WALL_OUT_TOP_RIGHT;
}

if (grid_x + 1 > obj_level.grid_size - 1 && grid_y - 1 > 0 && grid_y + 1 < obj_level.grid_size - 1
    && obj_level.level[grid_x - 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x, grid_y + 1] != LVL_GROUND
    && obj_level.level[grid_x - 1, grid_y + 1] == LVL_GROUND) {
    if (showDebug) show_debug_message("TOP - RIGHT - OUT X: " + string(grid_x) + " Y: " + string(grid_y))
    
    return LVL_WALL_OUT_TOP_RIGHT;
}

if (grid_x - 1 >= 0 && grid_x + 1 <= obj_level.grid_size - 1 
    && grid_y - 1 < 0 && grid_y + 1 < obj_level.grid_size - 1 
    && obj_level.level[grid_x - 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x, grid_y + 1] != LVL_GROUND
    && obj_level.level[grid_x - 1, grid_y + 1] == LVL_GROUND) {
    if (showDebug) show_debug_message("TOP - RIGHT - OUT X: " + string(grid_x) + " Y: " + string(grid_y))
    
    return LVL_WALL_OUT_TOP_RIGHT;
}

// ---------------------------------------------------------------
// BOTTOM - LEFT - OUT
// ---------------------------------------------------------------
if (showDebug) show_debug_message("BOTTOM - LEFT - OUT")

if (grid_x - 1 < 0 && grid_y + 1 > obj_level.grid_size - 1
    && obj_level.level[grid_x + 1, grid_y - 1] == LVL_GROUND) {
    if (showDebug) show_debug_message("BOTTOM - LEFT - OUT X: " + string(grid_x) + " Y: " + string(grid_y))

    return LVL_WALL_OUT_BOTTOM_LEFT;
}

if (grid_x - 1 > 0 && grid_x + 1 < obj_level.grid_size - 1 && grid_y + 1 > obj_level.grid_size - 1
    && obj_level.level[grid_x, grid_y - 1] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y - 1] == LVL_GROUND) {
    if (showDebug) show_debug_message("BOTTOM - LEFT - OUT X: " + string(grid_x) + " Y: " + string(grid_y))

    return LVL_WALL_OUT_BOTTOM_LEFT;
}

if (grid_x - 1 < 0 && grid_y + 1 < obj_level.grid_size - 1
    && obj_level.level[grid_x, grid_y - 1] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y - 1] == LVL_GROUND) {
    if (showDebug) show_debug_message("BOTTOM - LEFT - OUT X: " + string(grid_x) + " Y: " + string(grid_y))

    return LVL_WALL_OUT_BOTTOM_LEFT;
}

// ---------------------------------------------------------------
// BOTTOM - RIGHT - OUT
// ---------------------------------------------------------------
if (showDebug) show_debug_message("BOTTOM - RIGHT - OUT")

if (grid_x + 1 > obj_level.grid_size - 1 && grid_y + 1 > obj_level.grid_size - 1
    && obj_level.level[grid_x - 1, grid_y - 1] == LVL_GROUND) {
    if (showDebug) show_debug_message("BOTTOM - RIGHT - OUT X: " + string(grid_x) + " Y: " + string(grid_y))

    return LVL_WALL_OUT_BOTTOM_RIGHT;
}

if (grid_x + 1 < obj_level.grid_size - 1 && grid_y + 1 > obj_level.grid_size - 1
    && obj_level.level[grid_x, grid_y - 1] != LVL_GROUND
    && obj_level.level[grid_x - 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x - 1, grid_y - 1] == LVL_GROUND) {
    if (showDebug) show_debug_message("BOTTOM - RIGHT - OUT X: " + string(grid_x) + " Y: " + string(grid_y))

    return LVL_WALL_OUT_BOTTOM_RIGHT;
}

if (grid_x + 1 > obj_level.grid_size - 1 && grid_y + 1 < obj_level.grid_size - 1
    && obj_level.level[grid_x, grid_y - 1] != LVL_GROUND
    && obj_level.level[grid_x - 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x - 1, grid_y - 1] == LVL_GROUND) {
    if (showDebug) show_debug_message("BOTTOM - RIGHT - OUT X: " + string(grid_x) + " Y: " + string(grid_y))

    return LVL_WALL_OUT_BOTTOM_RIGHT;
}

// ---------------------------------------------------------------
// TOP - OUT
// ---------------------------------------------------------------
if (showDebug) show_debug_message("TOP - OUT")

if (grid_x - 1 >= 0 && grid_x + 1 <= obj_level.grid_size - 1 && grid_y - 1 < 0
    && obj_level.level[grid_x, grid_y + 1] == LVL_GROUND) {
    if (showDebug) show_debug_message("TOP - OUT X: " + string(grid_x) + " Y: " + string(grid_y))

    return LVL_WALL_OUT_TOP;
}

// ---------------------------------------------------------------
// BOTTOM - OUT
// ---------------------------------------------------------------
if (showDebug) show_debug_message("BOTTOM - OUT")

if (grid_x - 1 >= 0 && grid_x + 1 <= obj_level.grid_size - 1 && grid_y + 1 > obj_level.grid_size - 1
    && obj_level.level[grid_x, grid_y - 1] == LVL_GROUND) {
    if (showDebug) show_debug_message("BOTTOM - OUT X: " + string(grid_x) + " Y: " + string(grid_y))

    return LVL_WALL_OUT_BOTTOM;
}

// ---------------------------------------------------------------
// LEFT - OUT
// ---------------------------------------------------------------
if (showDebug) show_debug_message("LEFT - OUT")

if (grid_x - 1 < 0 && grid_y - 1 >= 0 && grid_y + 1 <= obj_level.grid_size - 1
    && obj_level.level[grid_x + 1, grid_y] == LVL_GROUND) {
    if (showDebug) show_debug_message("LEFT - OUT X: " + string(grid_x) + " Y: " + string(grid_y))

    return LVL_WALL_OUT_LEFT;
}

// ---------------------------------------------------------------
// RIGHT - OUT
// ---------------------------------------------------------------
if (showDebug) show_debug_message("RIGHT - OUT")

if (grid_x + 1 > obj_level.grid_size - 1 && grid_y - 1 >= 0 && grid_y + 1 <= obj_level.grid_size - 1
    && obj_level.level[grid_x - 1, grid_y] == LVL_GROUND) {
    if (showDebug) show_debug_message("RIGHT - OUT X: " + string(grid_x) + " Y: " + string(grid_y))

    return LVL_WALL_OUT_RIGHT;
}

// ---------------------------------------------------------------
// CHECK INSIDE THE GRID
// ---------------------------------------------------------------
// TOP - LEFT - OUT
// ---------------------------------------------------------------

if (showDebug) show_debug_message("CHECKING INSIDE")
if (obj_level.level[grid_x - 1, grid_y - 1] != LVL_GROUND
    && obj_level.level[grid_x, grid_y - 1] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y - 1] != LVL_GROUND
    && obj_level.level[grid_x - 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x - 1, grid_y + 1] != LVL_GROUND
    && obj_level.level[grid_x, grid_y + 1] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y + 1] == LVL_GROUND) {
    if (showDebug) show_debug_message("TOP - LEFT - OUT X: " + string(grid_x) + " Y: " + string(grid_y))
    
    return LVL_WALL_OUT_TOP_LEFT;
}

if (obj_level.level[grid_x - 1, grid_y - 1] != LVL_GROUND
    && obj_level.level[grid_x, grid_y - 1] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y - 1] != LVL_GROUND
    && obj_level.level[grid_x - 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x - 1, grid_y + 1] == LVL_GROUND
    && obj_level.level[grid_x, grid_y + 1] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y + 1] != LVL_GROUND) {
    if (showDebug) show_debug_message("TOP - RIGHT - OUT X: " + string(grid_x) + " Y: " + string(grid_y))
    
    return LVL_WALL_OUT_TOP_RIGHT;
}

if (obj_level.level[grid_x - 1, grid_y - 1] != LVL_GROUND
    && obj_level.level[grid_x, grid_y - 1] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y - 1] == LVL_GROUND
    && obj_level.level[grid_x - 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x - 1, grid_y + 1] != LVL_GROUND
    && obj_level.level[grid_x, grid_y + 1] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y + 1] != LVL_GROUND) {
    if (showDebug) show_debug_message("BOTTOM - LEFT - OUT X: " + string(grid_x) + " Y: " + string(grid_y))
    
    return LVL_WALL_OUT_BOTTOM_LEFT;
}

if (obj_level.level[grid_x - 1, grid_y - 1] == LVL_GROUND
    && obj_level.level[grid_x, grid_y - 1] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y - 1] != LVL_GROUND
    && obj_level.level[grid_x - 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x - 1, grid_y + 1] != LVL_GROUND
    && obj_level.level[grid_x, grid_y + 1] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y + 1] != LVL_GROUND) {
    if (showDebug) show_debug_message("BOTTOM - RIGHT - OUT X: " + string(grid_x) + " Y: " + string(grid_y))
    
    return LVL_WALL_OUT_BOTTOM_RIGHT;
}

if (obj_level.level[grid_x, grid_y - 1] != LVL_GROUND
    && obj_level.level[grid_x - 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x, grid_y + 1] == LVL_GROUND) {
    if (showDebug) show_debug_message("TOP - OUT X: " + string(grid_x) + " Y: " + string(grid_y))
    
    return LVL_WALL_OUT_TOP;
}

if (obj_level.level[grid_x, grid_y - 1] == LVL_GROUND
    && obj_level.level[grid_x - 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x, grid_y + 1] != LVL_GROUND) {
    if (showDebug) show_debug_message("BOTTOM - OUT X: " + string(grid_x) + " Y: " + string(grid_y))
    
    return LVL_WALL_OUT_BOTTOM;
}

if (obj_level.level[grid_x, grid_y - 1] != LVL_GROUND
    && obj_level.level[grid_x - 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y] == LVL_GROUND
    && obj_level.level[grid_x, grid_y + 1] != LVL_GROUND) {
    if (showDebug) show_debug_message("LEFT - OUT X: " + string(grid_x) + " Y: " + string(grid_y))
    
    return LVL_WALL_OUT_LEFT;
}

if (obj_level.level[grid_x, grid_y - 1] != LVL_GROUND
    && obj_level.level[grid_x - 1, grid_y] == LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x, grid_y + 1] != LVL_GROUND) {
    if (showDebug) show_debug_message("RIGHT - OUT X: " + string(grid_x) + " Y: " + string(grid_y))
    
    return LVL_WALL_OUT_RIGHT;
}

// ---------------------------------------------------------------
// TOP - LEFT - IN
// ---------------------------------------------------------------

if (obj_level.level[grid_x, grid_y - 1] == LVL_GROUND
    && obj_level.level[grid_x - 1, grid_y] == LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x, grid_y + 1] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y + 1] != LVL_GROUND) {
    
    return LVL_WALL_IN_TOP_LEFT;
}

// ---------------------------------------------------------------
// TOP - RIGHT - IN
// ---------------------------------------------------------------

if (obj_level.level[grid_x, grid_y - 1] == LVL_GROUND
    && obj_level.level[grid_x - 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y] == LVL_GROUND
    && obj_level.level[grid_x - 1, grid_y + 1] != LVL_GROUND
    && obj_level.level[grid_x, grid_y + 1] != LVL_GROUND) {
    
    return LVL_WALL_IN_TOP_RIGHT;
}

// ---------------------------------------------------------------
// BOTTOM - LEFT - IN
// ---------------------------------------------------------------

if (obj_level.level[grid_x, grid_y - 1] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y - 1] != LVL_GROUND
    && obj_level.level[grid_x - 1, grid_y] == LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x, grid_y + 1] == LVL_GROUND) {
    
    return LVL_WALL_IN_BOTTOM_LEFT;
}

// ---------------------------------------------------------------
// BOTTOM - RIGHT - IN
// ---------------------------------------------------------------

if (obj_level.level[grid_x - 1, grid_y - 1] != LVL_GROUND
    && obj_level.level[grid_x, grid_y - 1] != LVL_GROUND
    && obj_level.level[grid_x - 1, grid_y] != LVL_GROUND
    && obj_level.level[grid_x + 1, grid_y] == LVL_GROUND
    && obj_level.level[grid_x, grid_y + 1] == LVL_GROUND) {
    
    return LVL_WALL_IN_BOTTOM_RIGHT;
}

return LVL_WALL_ERROR;
