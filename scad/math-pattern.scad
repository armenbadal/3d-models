$fn = 100;

module grid(rows, columns) {
  size = 5;
  for(i = [0 : columns]) {
    translate([i * size, 0, 0])
      cube([0.2, size*rows, 1.2]);
  }

  for(i = [0 : rows]) {
    translate([0, i*size, 0])
      cube([size*columns, 0.2, 1.2]);
  }
}


grid(rows=6, columns=12);
