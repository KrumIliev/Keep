/// scr_check_grid(x, y)
var grid_x = argument0 / 32;
var grid_y = argument1 / 32;
return obj_level_generator.level[grid_x, grid_y] == GENERATOR_EMPTY;
