
include <config.scad>;
use <bottom.scad>;
use <layer.scad>;

module model()
{
    translate([0, 0, material_z/2])
    {
        color("magenta")
        bottom();

        color("blue")
        for (i=[1:layer_count])
        {
            translate([
                0,
                0,
                i*material_z + nothing
                ])
            layer();
        }
    }
}

model();
