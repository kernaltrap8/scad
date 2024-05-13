// GH logo keychain CAD file Copyright (C) 2024 kernaltrap8
// Code licensed under GNU GPLv3
// The license document can be viewed at
// https://www.gnu.org/licenses/gpl-3.0.en.html

$fn = 100;

module keychain_p1() {
    translate([0, 0, 0]) {
        linear_extrude(1) {
            text("G", size = 10, font = "Nightmare Hero");
        }
    }
}

module keychain_p2() {
    translate([5, -3, 0]) {
        linear_extrude(1) {
            text("H", size = 10, font = "Nightmare Hero");
        }
    }
}

module keychain_ornament() {
    difference() {
        translate([6, 8, 0]) {
            cylinder(r = 1);
        }
        translate([6, 8, 0]) {
            cylinder(h = 1);
        }
    }
}

keychain_p1();
keychain_p2();
keychain_ornament();