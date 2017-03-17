///scr_create_wall_decorations
var grid_x = 0;
var grid_y = 0;

for (grid_x = 0; grid_x <= obj_level.grid_size - 1; grid_x++) {
    for (grid_y = 0; grid_y <= obj_level.grid_size - 1; grid_y++) {
        if (obj_level.level[grid_x, grid_y] == LVL_WALL_BODY_TOP_CENTER) {
        
            if (!scr_add_torch(grid_x, grid_y)) {
            
                if (scr_chance(biome.wall_object_common_chanse)) {
                    scr_add_wall_object(grid_x, grid_y, biome.wall_objects_common);
                    
                } else if (scr_chance(biome.wall_object_rare_chanse)) {
                    scr_add_wall_object(grid_x, grid_y, biome.wall_objects_rare);
                }
            }
        }
    }
}


