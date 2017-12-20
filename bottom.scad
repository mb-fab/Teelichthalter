
include <config.scad>
use <puzzle.scad>

module bottom()
{
    difference()
    {
        cube([
            body_x,
            body_y,
            material_z
            ], center=true);

        translate([0, -body_y/2-nothing, 0])
        scale([1.01, 1.01, 1.1])
        puzzle_nose();

        translate([body_x/2+nothing, 0, 0])
        rotate(90)
        scale([1.01, 1.01, 1.1])
        puzzle_nose();
    }

    translate([0, body_y/2, 0])
    puzzle_nose();

    translate([-body_x/2, 0, 0])
    rotate(90)
    puzzle_nose();
}

bottom();
