///scr_print_grid(array, total)

var array = argument0;
var row = "";

for (yy = 0; yy <= (room_width / 32) - 1; yy++) {
    for (xx = 0; xx <= (room_height / 32) - 1; xx++) {
        if (xx > 0) {
            row += ", ";
        }
        row += string(array[xx, yy]);
    }
    
    show_debug_message(row);
    row = "";
}

show_debug_message("Total objects: " + string(argument1));

