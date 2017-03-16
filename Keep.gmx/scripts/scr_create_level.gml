///scr_create_level
var wall = noone;

for (grid_x = 0; grid_x <= obj_level.grid_size - 1; grid_x++) {
    for (grid_y = 0; grid_y <= obj_level.grid_size - 1; grid_y++) {
    
        if (obj_level.level[grid_x, grid_y] != LVL_GROUND) {
            
            if (obj_level.level[grid_x, grid_y] == LVL_WALL_OUT_BOTTOM
                || obj_level.level[grid_x, grid_y] == LVL_WALL_IN_TOP_LEFT
                || obj_level.level[grid_x, grid_y] == LVL_WALL_IN_TOP_RIGHT) {
                
                wall = instance_create(grid_x * 32, grid_y * 32, obj_wall);
                
            } else {
                wall = instance_create(grid_x * 32, grid_y * 32, obj_wall_solid);
            }
        
            
            wall.sprite_index = obj_level.t_set;
            wall.image_index = obj_level.level[grid_x, grid_y];   
        }
    }
}
