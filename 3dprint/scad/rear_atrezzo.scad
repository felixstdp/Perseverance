difference(){
linear_extrude(height=8)
polygon([[25.6,-28],[25.6,14],[28.2,21.8],[39.6,21.8],[39.6,26.8],[25.4,26.8],[11.4,11.8],[0,0],[-4,0],[-4,-28]]);
translate([-10,-15.5,4])rotate([0,90,0])
    cylinder(d=2,h=40,$fn=15);
translate([0,-15.5,4])rotate([0,90,0])
    cylinder(d=5,h=40,$fn=15);
translate([3,-21,-1])cube([16,11,12]);
translate([-6,-3,-1])cube([5,5,12]);
}
