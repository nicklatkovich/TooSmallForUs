/// getPosX(x, y)

var xx = argument0;
var yy = argument1;

//return xx * CellW + CellSize * (yy % 2) + CellSize;
return (xx * obj_map.CellW + obj_map.CellSize * (yy % 2) + obj_map.CellSize - obj_map.PosX) * obj_map.Scale + AppSurf.Width / 2;
//return xx * CellW + CellSize;

