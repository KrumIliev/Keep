///scr_add_portals
var portals = 0;
var xx = 0;
var yy = 0;

while (portals < obj_level_generator.num_portals) {
    location = scr_find_free_location();
    xx = location[0] * 32;
    yy = location[1] * 32;
    
    if (scr_check_grid(xx + 32, yy, GENERATOR_FLOOR)
        && scr_check_grid(xx + 64, yy, GENERATOR_FLOOR)
        && scr_check_grid(xx, yy + 32, GENERATOR_FLOOR)
        && scr_check_grid(xx + 32, yy + 32, GENERATOR_FLOOR)
        && scr_check_grid(xx + 64, yy + 32, GENERATOR_FLOOR)) {
        
            instance_create(xx, yy, obj_portal);
            scr_add_to_grid(xx, yy, GENERATOR_PORTAL);
            scr_add_to_grid(xx + 32, yy, GENERATOR_PORTAL);
            scr_add_to_grid(xx + 64, yy, GENERATOR_PORTAL);
            scr_add_to_grid(xx, yy + 32, GENERATOR_PORTAL);
            scr_add_to_grid(xx + 32, yy + 32, GENERATOR_PORTAL);
            scr_add_to_grid(xx + 64, yy + 32, GENERATOR_PORTAL);
            show_debug_message("Added portal: " + string(xx) + "/" + string(yy));
            portals++;
    }
}
