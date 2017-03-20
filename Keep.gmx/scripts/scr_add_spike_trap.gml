///scr_add_spike_trap(grid_x, grid_y)
var grid_x = argument0;
var grid_y = argument1;

if (grid_x < obj_level.grid_size - 1 
    && grid_y < obj_level.grid_size - 1 
    &&  obj_level.level[grid_x, grid_y] == LVL_GROUND) {
    
    instance_create(grid_x * 32, grid_y * 32, obj_spike_trap);
    obj_level.level[grid_x, grid_y] = LVL_OBJECT;
}
