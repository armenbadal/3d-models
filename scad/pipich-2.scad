$fn=100;

difference() {
  union() {
    cylinder(h=9, d=8);
    translate([0, 0, 9]) cylinder(h=32, d1=13, d2=5);
  }
  union() {
    cylinder(h=9, d=5);
    translate([0, 0, 9]) cylinder(h=32, d1=6, d2=3);
  }
}
