
$fn=100;


module spinning_top() {
  difference() {
    union() {
      intersection() {
        cube([40, 40, 14], center=true);
        scale([1, 1, 0.7]) sphere(d=40);
      }
      translate([0, 0, 6.9]) cylinder(h=22, d1=34.4, d2=6);
    }
    translate([0, 0, 21]) cylinder(h=8, d=1.4);
  }
}

spinning_top();

