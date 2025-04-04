$fn = 100;


module wing() {
  rotate([90, 0, 180])
    difference() {
      scale([1, 0.7, 1])
        cylinder(h=40, d1=20, d2=0, $fn=4);
      translate([-10, -7, 0])
        cube([20, 7, 40]);
    }
}


module star_body() {
  for(angle = [0: 72: 360])
    rotate([0, 0, angle]) wing();
}


module star(scaled=1) {
  scale([scaled, scaled, scaled])
    difference() {
      star_body();
      scale([0.8, 0.8, 0.8])
        star_body();
    }
}



star();
translate([0, 0, 10]) star(scaled=0.8);
translate([0, 0, 20]) star(scaled=0.6);
translate([0, 0, 30]) star(scaled=0.4);
