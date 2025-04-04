$fn=100;

module one_leg() {
  translate([-32.5, 5, 0]) rotate([90, 0, 0])
    linear_extrude(10) {
      polygon(points=[[0, 0], [80, 0], [80, 3], [40, 8], [25, 8], [0, 3]]);
    }
}

module basement() {
  rotate([0, 0, 60]) one_leg();
  rotate([0, 0, -60]) one_leg();
  translate([-8, -8, 0]) cube([16, 16, 12]);
}

module spine() {
  translate([2, 2, 0]) cube([12, 12, 8]);
  translate([0, 0, 8]) cube([16, 16, 80]);
}


/*
translate([0, 0, 0]) cylinder(h=3, d=8);
translate([50, 30, 0]) cylinder(h=3, d=8);
translate([50, 0, 0]) cylinder(h=3, d=8);
translate([0, 30, 0]) cylinder(h=3, d=8);
translate([0, 0, 0]) cube([50, 30, 3]);
*/

/*
difference() {
  basement();
  rotate([0, -3, 0]) translate([-7.4, -8, 3.4]) spine();
}
*/

  basement();
  rotate([0, -3, 0]) translate([-7.4, -8, 3.4]) spine();

