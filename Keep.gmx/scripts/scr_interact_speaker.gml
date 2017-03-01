///scr_interact_speaker

var xdir = lengthdir_x(8, var_face * 90);
var ydir = lengthdir_y(8, var_face * 90);
var speaker = instance_place(x + xdir, y + ydir, obj_speaker);

if (speaker != noone) {
// There is a speaker here    
    with (speaker) {
        if (!instance_exists(dialog)) {
            dialog = instance_create(x + xoffset, y + yoffset, obj_dialog);
            dialog.text = text;
        } else {
            dialog.text_page++;
            dialog.text_count = 0;
            if (dialog.text_page > array_length_1d(dialog.text) - 1) {
                with (dialog) {
                    instance_destroy();
                }
            }
        }
    }
    return false;
    
} else {
    return true;
}
