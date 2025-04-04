$fn = 100;


module sensor_place() {
  translate([-6, 0, 0]) {
    cube([12, 6, 12]);
    translate([4, 0, 12]) cube([4, 3, 8]);
  }
}


//color("lightblue") cylinder(h=20, d=20);
difference() {
  cylinder(h=20, d=36);

  translate([0, 0, 16]) cylinder(h=4, d=18.5);
  
  translate([-6, -6, 0]) cube([12, 12, 12]);

  translate([0, 9, 0]) sensor_place();
  rotate([0, 0, 90]) translate([0, 9, 0]) sensor_place();
  rotate([0, 0, 180]) translate([0, 9, 0]) sensor_place();
  rotate([0, 0, 270]) translate([0, 9, 0]) sensor_place();
}
