$fn = 100;

module ring(h, d, t) {
  difference() {
    cylinder(h=h, d=d);
    cylinder(h=h, d=d-t);
  }
}


ring(1, 94, 4);
ring(1, 24, 4);
//rotate([0, 0, 0 * 72]) translate([-1, 12, 0]) cube([2, 34, 1]);
//rotate([0, 0, 1 * 72]) translate([-1, 12, 0]) cube([2, 34, 1]);
//rotate([0, 0, 2 * 72]) translate([-1, 12, 0]) cube([2, 34, 1]);
//rotate([0, 0, 3 * 72]) translate([-1, 12, 0]) cube([2, 34, 1]);
//rotate([0, 0, 4 * 72]) translate([-1, 12, 0]) cube([2, 34, 1]);
