///scr_create_level
var wall = noone;

for (grid_x = 0; grid_x <= obj_level.grid_size - 1; grid_x++) {
    for (grid_y = 0; grid_y <= obj_level.grid_size - 1; grid_y++) {
    
        if (obj_level.level[grid_x, grid_y] == LVL_GROUND) {
            instance_create(grid_x * 32, grid_y * 32, obj_floor);
            
        } else if (obj_level.level[grid_x, grid_y] != LVL_EMPTY) {
            wall = instance_create(grid_x * 32, grid_y * 32, obj_wall);
            wall.image_index = obj_level.level[grid_x, grid_y];
        }
    }
}
