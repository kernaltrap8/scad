// GH logo keychain CAD file Copyright (C) 2024 kernaltrap8
// Code licensed under GNU GPLv3
// The license document can be viewed at
// https://www.gnu.org/licenses/gpl-3.0.en.html

$fn = 100;
ornament_xyz = [7.6, 10.7, 0];

module keychain_p1() {
    translate([0, 0, 0]) {
        linear_extrude(1) {
            text("G", size = 13, font = "Nightmare Hero");
        }
    }
}

module keychain_p2() {
    translate([6.8, -3, 0]) {
        linear_extrude(1) {
            text("H", size = 13, font = "Nightmare Hero");
        }
    }
}

module ornament() {
	difference() {
    	translate(ornament_xyz) {
            linear_extrude(1) {
                circle(r = 1.7);
            }
        }
        translate(ornament_xyz) {
            cylinder(h = 1);
        }
    }
}

keychain_p1();
keychain_p2();
ornament();