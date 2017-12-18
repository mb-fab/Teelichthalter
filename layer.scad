
include <config.scad>;
use <bottom.scad>;

module layer()
{
    difference()
    {
        bottom();

        offset_x = -body_x/2;
        for (i = [1:hole_count])
        {
            translate([
                offset_x + i*spacing_x + (2*i-1)*hole_radius,
                0,
                material_z/2
                ])
            cylinder(r=hole_radius, h=2*material_z, center=true);
        }
    }
}

layer();
