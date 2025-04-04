
$fn=100;


module spinning_top_body() {
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

module spinning_top_pin() {
  cylinder(h=7, d=1.4);
  translate([0, 0, 7]) cylinder(h=5, d1=7, d2=1.4);
}


color([0, 1, 0]) spinning_top_body();
translate([0, 0, 30]) spinning_top_pin();


