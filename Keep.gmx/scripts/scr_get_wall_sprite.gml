///scr_get_wall_sprite(x, y)

var xx = argument0;
var yy = argument1;

if (!place_meeting(xx - 32, yy - 32, obj_floor)
    && !place_meeting(xx, yy - 32, obj_floor)
    && !place_meeting(xx + 32, yy - 32, obj_floor)
    && !place_meeting(xx - 32, yy, obj_floor)
    && !place_meeting(xx + 32, yy, obj_floor)
    && !place_meeting(xx - 32, yy + 32, obj_floor)
    && !place_meeting(xx, yy + 32, obj_floor)
    && place_meeting(xx + 32, yy + 32, obj_floor)) {
    
    return 0;
}

if (!place_meeting(xx, yy - 32, obj_floor)
    && !place_meeting(xx - 32, yy, obj_floor)
    && !place_meeting(xx + 32, yy, obj_floor)
    && place_meeting(xx, yy + 32, obj_floor)) {
    
    return 1;
}

if (!place_meeting(xx - 32, yy - 32, obj_floor)
    && !place_meeting(xx, yy - 32, obj_floor)
    && !place_meeting(xx + 32, yy - 32, obj_floor)
    && !place_meeting(xx - 32, yy, obj_floor)
    && !place_meeting(xx + 32, yy, obj_floor)
    && place_meeting(xx - 32, yy + 32, obj_floor)
    && !place_meeting(xx, yy + 32, obj_floor)
    && !place_meeting(xx + 32, yy + 32, obj_floor)) {
    
    return 2;
}

if (!place_meeting(xx - 32, yy - 32, obj_floor)
    && !place_meeting(xx, yy - 32, obj_floor)
    && place_meeting(xx + 32, yy - 32, obj_floor)
    && !place_meeting(xx - 32, yy, obj_floor)
    && !place_meeting(xx + 32, yy, obj_floor)
    && !place_meeting(xx - 32, yy + 32, obj_floor)
    && !place_meeting(xx, yy + 32, obj_floor)
    && !place_meeting(xx + 32, yy + 32, obj_floor)) {
    
    return 3;
}

if (place_meeting(xx, yy - 32, obj_floor)
    && !place_meeting(xx - 32, yy, obj_floor)
    && !place_meeting(xx + 32, yy, obj_floor)
    && !place_meeting(xx, yy + 32, obj_floor)) {
    
    return 4;
}

if (place_meeting(xx - 32, yy - 32, obj_floor)
    && !place_meeting(xx, yy - 32, obj_floor)
    && !place_meeting(xx + 32, yy - 32, obj_floor)
    && !place_meeting(xx - 32, yy, obj_floor)
    && !place_meeting(xx + 32, yy, obj_floor)
    && !place_meeting(xx - 32, yy + 32, obj_floor)
    && !place_meeting(xx, yy + 32, obj_floor)
    && !place_meeting(xx + 32, yy + 32, obj_floor)) {
    
    return 5;
}

if (!place_meeting(xx, yy - 32, obj_floor)
    && !place_meeting(xx - 32, yy, obj_floor)
    && place_meeting(xx + 32, yy, obj_floor)
    && !place_meeting(xx, yy + 32, obj_floor)) {
    
    return 6;
}

if (!place_meeting(xx, yy - 32, obj_floor)
    && place_meeting(xx - 32, yy, obj_floor)
    && !place_meeting(xx + 32, yy, obj_floor)
    && !place_meeting(xx, yy + 32, obj_floor)) {
    
    return 7;
}

if (place_meeting(xx, yy - 32, obj_floor)
    && place_meeting(xx - 32, yy, obj_floor)
    && !place_meeting(xx + 32, yy, obj_floor)
    && !place_meeting(xx, yy + 32, obj_floor)
    && !place_meeting(xx + 32, yy + 32, obj_floor)) {
    
    return 8;
}

if (place_meeting(xx, yy - 32, obj_floor)
    && !place_meeting(xx - 32, yy, obj_floor)
    && place_meeting(xx + 32, yy, obj_floor)
    && !place_meeting(xx - 32, yy + 32, obj_floor)
    && !place_meeting(xx, yy + 32, obj_floor)) {
    
    return 9;
}

if (!place_meeting(xx, yy - 32, obj_floor)
    && !place_meeting(xx + 32, yy - 32, obj_floor)
    && place_meeting(xx - 32, yy, obj_floor)
    && !place_meeting(xx + 32, yy, obj_floor)
    && place_meeting(xx, yy + 32, obj_floor)) {
    
    return 10;
}

if (!place_meeting(xx - 32, yy - 32, obj_floor)
    && !place_meeting(xx, yy - 32, obj_floor)
    && !place_meeting(xx - 32, yy, obj_floor)
    && place_meeting(xx + 32, yy, obj_floor)
    && place_meeting(xx, yy + 32, obj_floor)) {
    
    return 11;
}

return 12;
