$fn = 100;

module sensor_places() {
  linear_extrude(7)
    difference() {
      for(angle = [0 : 45 : 135]) {
        rotate([0, 0, angle]) square([4.2, 20], center=true); 
      }
      circle(d=16.8);
    }
}


module sensor_places_2() {
  difference() {
    translate([0, 0, 2.5])
      for(angle = [0 : 45 : 135]) {
        rotate([0, 0, angle]) cube([4.2, 20, 5], center=true);
      }
    cylinder(h=5, d=16.8);
  }
}


module extracted_core() {
  translate([0, 0, 4]) sensor_places();
  translate([0, 0, 3+4]) cylinder(h=4, d=12);
  cylinder(h=4, d=22);
}


difference() {
  union() {
    cylinder(h=5, d=24);
    translate([0, 0, 4]) cylinder(h=5, d=20);
  }
  extracted_core();
}
