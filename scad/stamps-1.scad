$fn=100;

cube([55, 50, 1]);
translate([0, 0, 1]) difference() {
  cube([55, 50, 0.4]);
  translate([1, 1, 0]) cube([53, 48, 0.4]);
}
translate([27.5, 25, 1]) cylinder(h=6, d=8);
translate([27.5, 25, 7]) cylinder(h=5, d1=8, d2=12);
translate([27.5, 25, 12]) cylinder(h=1, d=12);
