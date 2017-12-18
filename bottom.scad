
include <config.scad>

module bottom()
{
    translate([
        0,
        0,
        +material_z/2
        ])
    cube([
        body_x,
        body_y,
        material_z
        ], center=true);
}

bottom();
