///scr_add_wall

// Store the targets id number 
target = instance_place(x, y, obj_floor);
var wall = noone;

// Check if the neighboring floors and place walls
if (instance_exists(target)) {
    
    // top-left
    if (!place_meeting(x - 32, y - 32, obj_floor) && scr_check_grid(x - 32, y - 32)) {
        wall = instance_create(x - 32, y - 32, obj_wall);  
        scr_add_to_grid(x - 32, y - 32, GENERATOR_WALL);  
            
        if (!place_meeting(x - 32, y, obj_floor) && !place_meeting(x, y - 32, obj_floor)) {
            wall.sprite_index = TILE_TOP_LEFT_IN;
            
        } else if (!place_meeting(x - 32, y, obj_floor) && place_meeting(x, y - 32, obj_floor)) {
            wall.sprite_index = TILE_LEFT;
            
        } else {
            wall.sprite_index = TILE_TOP;
        }
    }
    
    // top
    if (!place_meeting(x, y - 32, obj_floor) && scr_check_grid(x, y - 32)) {
        wall = instance_create(x, y - 32, obj_wall);
        scr_add_to_grid(x, y - 32, GENERATOR_WALL);
        
        if (!place_meeting(x - 32, y - 32, obj_floor) && !place_meeting(x + 32, y - 32, obj_floor)) {
            wall.sprite_index = TILE_TOP;
            
        } else if (!place_meeting(x - 32, y - 32, obj_floor) && place_meeting(x + 32, y - 32, obj_floor)) {
            wall.sprite_index = TILE_BOTTOM_RIGHT_IN;
        
        } else {
            wall.sprite_index = TILE_BOTTOM_LEFT_IN;
        }
    }
    
    // top-right
    if (!place_meeting(x + 32, y - 32, obj_floor) && scr_check_grid(x + 32, y - 32)) {
        wall = instance_create(x + 32, y - 32, obj_wall);
        scr_add_to_grid(x + 32, y - 32, GENERATOR_WALL);
        
        if (!place_meeting(x - 32, y - 32, obj_floor) && !place_meeting(x + 32, y, obj_floor)) {
            wall.sprite_index = TILE_TOP_RIGHT_IN;
            
        } else if (!place_meeting(x - 32, y - 32, obj_floor) && place_meeting(x + 32, y, obj_floor)) {
            wall.sprite_index = TILE_TOP;
            
        } else {
            wall.sprite_index = TILE_RIGHT;
        }
    }
    
}











