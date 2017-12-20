
include <config.scad>;

/**
 * This module generates a puzzle nose
 */
module puzzle_nose(
            r1=puzzle_r1,
            r2=puzzle_r2,
            width=puzzle_width,
            angle=puzzle_angle
            )
{
    // Upper and lower circle touching point
    px = -width/2 + cos(angle)*r1;
    py = r1 + sin(angle)*r1;

    // Upper circle center coordinates
    x2 = px + cos(angle)*r2;
    y2 = py + sin(angle)*r2;

    // Upper circles
    translate([x2, y2, 0])
    cylinder(r=r2, h=material_z, center=true);
    translate([-x2, y2, 0])
    cylinder(r=r2, h=material_z, center=true);

    // Outer nose edge
    translate([0, y2, 0])
    cube([
        2*abs(x2),
        2*r2,
        material_z
        ], center=true);

    difference()
    {
        // Puzzle body
        translate([0, py/2, 0])
        cube([
            width,
            py,
            material_z
            ], center=true);
        
        // Lower circles
        translate([-width/2, r1, 0])
        cylinder(r=r1, h=material_z+2*nothing, center=true);
        translate([width/2, r1, 0])
        cylinder(r=r1, h=material_z+2*nothing, center=true);
    }
}

function puzzle_nose_height(
            r1=puzzle_r1,
            r2=puzzle_r2,
            angle=puzzle_angle
            )
= r1 + r1*sin(angle) + r2 + r2*sin(angle);

puzzle_nose(r1=3, r2=2, width=12, angle=80);
