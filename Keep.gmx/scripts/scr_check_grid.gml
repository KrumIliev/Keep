/// scr_check_grid(x, y, type)
var grid_x = argument0 / 32;
var grid_y = argument1 / 32;
var type = argument2;
return obj_level_generator.level[grid_x, grid_y] == type;
