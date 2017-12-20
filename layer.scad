
include <config.scad>;
use <bottom.scad>;
use <puzzle.scad>;

module layer()
{
    difference()
    {
        bottom();

        translate([
            -puzzle_nose_height()/2,
            puzzle_nose_height()/2,
            0
            ])
        cylinder(r=hole_radius, h=3*material_z, center=true);
    }
}

layer();
