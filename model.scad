
include <config.scad>;
use <bottom.scad>;
use <layer.scad>;

module model()
{
    color("magenta")
    bottom();

    color("blue")
    for (i=[1:hole_layer_count])
    {
        translate([
            0,
            0,
            i*material_z + nothing
            ])
        layer();
    }
}

model();
