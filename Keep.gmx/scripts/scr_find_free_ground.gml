///scr_find_free_ground
var location_found = false;
var grid_x = 0;
var grid_y = 0;

while(!location_found) {
    grid_x = irandom_range(2, obj_level.grid_size - 3);
    grid_y = irandom_range(2, obj_level.grid_size - 3);
    
    if (obj_level.level[grid_x, grid_y] == LVL_GROUND) {
        location_found = true;
    }
}

result[0] = grid_x;
result[1] = grid_y;

return result;
