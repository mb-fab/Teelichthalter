
$fn = 100;
nothing = 0.01;
material_z = 3;

body_x = 300;
body_y = 80;

candle_diameter = 40;
candle_height = 15;

hole_radius = candle_diameter / 2;
hole_count = 5;
//hole_layer_count = candle_height / material_z;
hole_layer_count = 3;

all_holes_x = hole_count*hole_radius*2;
spacing_count = hole_count + 1;
spacing_x = (body_x - all_holes_x) / spacing_count;
