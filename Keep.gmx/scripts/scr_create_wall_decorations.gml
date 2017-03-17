///scr_create_wall_decorations(grid_x, grid_y)
var grid_x = argument0;
var grid_y = argument1;

if (obj_level.level[grid_x, grid_y] == LVL_WALL_BODY_TOP_CENTER) {
    
    if (!scr_add_torch(grid_x, grid_y) && scr_chance(biome.wall_object_spawn_chanse)) {
         instance_create(grid_x * 32, grid_y * 32, biome.wall_objects[irandom(array_length_1d(biome.wall_objects) - 1)]);
    }
}
