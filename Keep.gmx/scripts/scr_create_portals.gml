///scr_create_portals
var portals = 0;
var grid_x = 0;
var grid_y = 0;

while(portals < obj_level.portals) {
    
    location = scr_find_free_ground();
    grid_x = location[0];
    grid_y = location[1];
    
    if (grid_x + 2 < obj_level.grid_size - 1
        && obj_level.level[grid_x + 1, grid_y] == LVL_GROUND
        && obj_level.level[grid_x + 2, grid_y] == LVL_GROUND
        && obj_level.level[grid_x, grid_y + 1] == LVL_GROUND
        && obj_level.level[grid_x + 1, grid_y + 1] == LVL_GROUND
        && obj_level.level[grid_x + 2, grid_y + 1] == LVL_GROUND) {
        
            instance_create(grid_x * 32, grid_y * 32, obj_portal);
            obj_level.level[grid_x, grid_y] = LVL_OBJECT;
            obj_level.level[grid_x + 1, grid_y] = LVL_OBJECT;
            obj_level.level[grid_x + 2, grid_y] = LVL_OBJECT;
            obj_level.level[grid_x, grid_y + 1] = LVL_OBJECT;
            obj_level.level[grid_x + 1, grid_y + 1] = LVL_OBJECT;
            obj_level.level[grid_x + 2, grid_y + 1] = LVL_OBJECT;
            
            portals++;
    }
}
