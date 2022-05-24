difference(){
union(){
    
hull(){
cylinder(d=25,h=5,$fn=60);
translate([60,-3,0])cube([5,6,5]);
translate([-65,-3,0])cube([5,6,5]);
}
cylinder(d=20,h=8,$fn=60);

translate([65,0,5])rotate([90,0,0])
cylinder(d=10,h=6,center=true);

translate([-65,0,5])rotate([90,0,0])
cylinder(d=10,h=6,center=true);
}

translate([65,0,5])rotate([90,0,0])
cylinder(d=3,h=7,center=true);

translate([-65,0,5])rotate([90,0,0])
cylinder(d=3,h=7,center=true);

cylinder(d=5,h=10);
}
