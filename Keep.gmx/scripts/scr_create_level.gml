///scr_create_level
var wall = noone;

for (grid_x = 0; grid_x <= obj_level.grid_size - 1; grid_x++) {
    for (grid_y = 0; grid_y <= obj_level.grid_size - 1; grid_y++) {
    
        if (obj_level.level[grid_x, grid_y] != LVL_GROUND && obj_level.level[grid_x, grid_y] != LVL_EMPTY) {
            
            if (obj_level.level[grid_x, grid_y] == LVL_WALL_OUT_BOTTOM
                || obj_level.level[grid_x, grid_y] == LVL_WALL_IN_TOP_LEFT
                || obj_level.level[grid_x, grid_y] == LVL_WALL_IN_TOP_RIGHT) {
                
                wall = instance_create(grid_x * 32, grid_y * 32, obj_wall);
            
            } else if (obj_level.level[grid_x, grid_y] == LVL_WALL_BODY_BOTTOM_LEFT
                    || obj_level.level[grid_x, grid_y] == LVL_WALL_BODY_BOTTOM_CENTER
                    || obj_level.level[grid_x, grid_y] == LVL_WALL_BODY_BOTTOM_RIGHT) {
                    
                wall = instance_create(grid_x * 32, grid_y * 32, obj_wall_bottom);
                
            } else {
                wall = instance_create(grid_x * 32, grid_y * 32, obj_wall_solid);
            }
        
            
            wall.sprite_index = biome.tileset;
            wall.image_index = obj_level.level[grid_x, grid_y];   
        
        } else if (obj_level.level[grid_x, grid_y] == LVL_EMPTY) {
            instance_create(grid_x * 32, grid_y * 32, obj_void);
        }
    }
}
