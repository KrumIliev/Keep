///scr_add_to_grid(x, y, type)
var grid_x = argument0 / 32;
var grid_y = argument1 / 32;
obj_level_generator.level[grid_x, grid_y] = argument2;
obj_level_generator.objects++;
