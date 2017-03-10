///scr_place_wall

// Store the targets id number 
target = instance_place(x, y, obj_floor);

// Check if the neighboring floors and place walls
if (instance_exists(target)) {

    // left
    if (!place_meeting(x + 32, y, obj_floor) && scr_check_grid(x + 32, y)) {
        instance_create(x + 32, y, obj_wall);
        scr_add_to_grid(x + 32, y, GENERATOR_WALL);
    }
    
    // right
    if (!place_meeting(x - 32, y, obj_floor) && scr_check_grid(x - 32, y)) {
        instance_create(x - 32, y, obj_wall);
        scr_add_to_grid(x - 32, y, GENERATOR_WALL);
    }
    
    // top
    if (!place_meeting(x, y + 32, obj_floor) && scr_check_grid(x, y + 32)) {
        instance_create(x, y + 32, obj_wall);
        scr_add_to_grid(x, y + 32, GENERATOR_WALL);
    }
    
    // bottom
    if (!place_meeting(x, y - 32, obj_floor) && scr_check_grid(x, y - 32)) {
        instance_create(x, y - 32, obj_wall);
        scr_add_to_grid(x, y - 32, GENERATOR_WALL);
    }
    
    // top-left
    if (!place_meeting(x + 32, y + 32, obj_floor) && scr_check_grid(x + 32, y + 32)) {
        instance_create(x + 32, y + 32, obj_wall);
        scr_add_to_grid(x + 32, y + 32, GENERATOR_WALL);
    }
    
    // bottom-left
    if (!place_meeting(x + 32, y - 32, obj_floor) && scr_check_grid(x + 32, y - 32)) {
        instance_create(x + 32, y - 32, obj_wall);
        scr_add_to_grid(x + 32, y - 32, GENERATOR_WALL);
    }
    
    // top-right
    if (!place_meeting(x - 32, y + 32, obj_floor) && scr_check_grid(x - 32, y + 32)) {
        instance_create(x - 32, y + 32, obj_wall);
        scr_add_to_grid(x - 32, y + 32, GENERATOR_WALL);
    }
    
    // bottom-right
    if (!place_meeting(x - 32, y - 32, obj_floor) && scr_check_grid(x - 32, y - 32)) {
        instance_create(x - 32, y - 32, obj_wall);
        scr_add_to_grid(x - 32, y - 32, GENERATOR_WALL);
    }
}

// Check the bounds of the wall handler
if (x < start_x) { 
    x = start_x; 
}

if (x == stop_x) { 
    y += 32; 
    x = 0; 
} else {
    x += 32;
}
