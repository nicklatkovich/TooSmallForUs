/// hex_dx(xx, yy, d)

var xx = argument0;
var yy = argument1;
var d = argument2;

if (yy % 2) {
    switch (abs(d) % 6) {
    case 0: return 1; break;
    case 1: return 1; break;
    case 2: return 0; break;
    case 3: return -1; break;
    case 4: return 0; break;
    case 5: return 1; break;
    }
} else {
    switch (abs(d) % 6) {
    case 0: return 1; break;
    case 1: return 0; break;
    case 2: return -1; break;
    case 3: return -1; break;
    case 4: return -1; break;
    case 5: return 0; break;
    }
}

