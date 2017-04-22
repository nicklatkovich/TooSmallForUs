/// hex_ddy(d)

var d = argument0;

switch (abs(d) % 12) {
case 0: return 0; break;
case 1: return -1; break;
case 2: return -2; break;
case 3: return -2; break;
case 4: return -2; break;
case 5: return -1; break;
case 6: return 0; break;
case 7: return 1; break;
case 8: return 2; break;
case 9: return 2; break;
case 10: return 2; break;
case 11: return 1; break;
}

