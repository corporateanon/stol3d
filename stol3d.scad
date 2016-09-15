figureHeight = 1000;
numSegments = 18;
baseRadius = 100;
twistAngle = 30;

cylinderHeight = figureHeight / cos(twistAngle);

color("silver")
for(a = [0 : numSegments]) {
  rotate(a * 360 / numSegments) {
    translate([baseRadius, 0, 0]) {
      rotate([twistAngle, 0, 0]) {
        translate([0, 0, -cylinderHeight / 2]) {
          cylinder(h = cylinderHeight, d = 20);
        }
      }
    }
  }
}