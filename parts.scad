
include <config.scad>;
use <bottom.scad>;
use <layer.scad>;
use <puzzle.scad>;

part_spacing = 0.5;

module parts_single()
{
    bottom();

    for (i=[1:layer_count])
    {
        translate([i*(body_x+puzzle_nose_height()+part_spacing), 0, 0])
        layer();
    }
}

module parts_all()
{
    for (i=[1:copies])
    {
        translate([0, (i-1)*(body_y+puzzle_nose_height()+part_spacing), 0])
        parts_single();
    }
}

parts_all();
