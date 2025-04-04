
$fn=100;

module halfsphere() {
  difference() {
    difference() {
      sphere(d=40);
      sphere(d=38);
    }
    translate([-20, -20, -20])
      cube([40, 40, 20]);
  }
}

translate([20, 20, 0]) {
translate([0, 0, 1])
  halfsphere();
    difference() {
      cylinder(h=2, d=38);
      cylinder(h=2, d=36);
    }
}

translate([65, 20, 0]) halfsphere();
