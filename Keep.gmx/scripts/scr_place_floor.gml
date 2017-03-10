///scr_place_floor

// Place the floor tile 
if (scr_check_grid(x, y)) {
    instance_create(x, y, obj_floor);
    scr_add_to_grid(x, y, GENERATOR_FLOOR);
}

// Add to floor tiles count
floors_placed++;

// Pick a random direction
dir = choose(1, 2, 3, 4, dir, dir, dir, dir);

// Move forward 1 cell
switch (dir) {
    case 1:
        x += 32;
        break;
        
    case 2:
        y += 32;
        break;
    
    case 3: 
        x -= 32;
        break;
        
    case 4:
        y -= 32;
        break;
}

// Check for being outside the room 
if (x < 32) { x = 32 }
if (x > room_width - 64){ x = room_width - 64; }
if (y < 32) { y = 32; }
if (y > room_height - 64) { y = room_height - 64; }

// Store top-left and bottom-right corners of the map
if (x < x_start) { x_start = x; }
if (x > x_stop) { x_stop = x; }
if (y < y_start) { y_start = y; } 
if (y > y_stop) { y_stop = y; }
