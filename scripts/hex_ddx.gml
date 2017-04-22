/// hex_ddx(xx, yy, d)

var xx = argument0;
var yy = argument1;
var d = argument2;

if (yy % 2 == 1) {
    switch (abs(d) % 12) {
    case 0: return 2; break;
    case 1: return 2; break;
    case 2: return 1; break;
    case 3: return 0; break;
    case 4: return -1; break;
    case 5: return -1; break;
    case 6: return -2; break;
    case 7: return -1; break;
    case 8: return -1; break;
    case 9: return 0; break;
    case 10: return 1; break;
    case 11: return 2; break;
    }
} else {
    switch (abs(d) % 12) {
    case 0: return 2; break;
    case 1: return 1; break;
    case 2: return 1; break;
    case 3: return 0; break;
    case 4: return -1; break;
    case 5: return -2; break;
    case 6: return -2; break;
    case 7: return -2; break;
    case 8: return -1; break;
    case 9: return 0; break;
    case 10: return 1; break;
    case 11: return 1; break;
    }
}

