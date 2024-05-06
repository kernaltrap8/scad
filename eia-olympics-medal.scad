// EIA olympics CAD file Copyright (C) 2024 kernaltrap8
// Code licensed under GNU GPLv3
// The license document can be viewed at
// https://www.gnu.org/licenses/gpl-3.0.en.html

$fn = 100; // shape resolution
c_diameter = 100;
ornament_t = [-50, 0, -0.5];
ornament_d = 5;
ornament_hole = [-52, 0, -1];
decoration_t = "EIA";
decoration_t2 = "Olympics";
decoration_t3 = "1st";
decoration_t4 = "Place";
decoration_s = 19;
decoration_s2 = 10;

module _text() {
    translate([-10, -21, 0]) {
        rotate([0, 0, 90]) {
            linear_extrude(1) {
                text(decoration_t, size = decoration_s);
            }
        }
    }
}

module text_bottom() {
    translate([5, -26, 0]) {
        rotate([0, 0, 90]) {
            linear_extrude(1) {
                text(decoration_t2, size = decoration_s2);
            }
        }
    }
}

module text_number() {
    translate([25, -10, 0]) {
        rotate([0, 0, 90]) {
            linear_extrude(1) {
                text(decoration_t3, size = decoration_s2);
            }
        }
    }
}

module text2() {
    translate([37, -17, 0]) {
        rotate([0, 0, 90]) {
            linear_extrude(1) {
                text(decoration_t4, size = decoration_s2);
            }
        }
    }
}

module base() {
    difference() {
        circle(d = c_diameter);
    }
    difference() {
        translate(ornament_t) {
            cylinder(r = ornament_d);
        }
        translate(ornament_hole) {
            cylinder(h = 2);
        }
    }
}

base();
_text();
text_bottom();
text_number();
text2();