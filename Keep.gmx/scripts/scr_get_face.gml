///scr_get_face(dir)
var dir = argument0;
var face = round(dir / 90);
if (face == 4) {
    face = RIGHT;
}

return face;
