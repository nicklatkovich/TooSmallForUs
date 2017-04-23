/// VisibleMaterials(xx, yy)

var xx = argument0;
var yy = argument1;

var key = xx * Height + yy;
if (ds_map_exists(Materials, key)) {
    var num = Materials[?key];
    for (var i = 0; i < num; i++) {
        var c = instance_create(0, 0, obj_material);
        c.xx = xx;
        c.yy = yy;
    }
}

