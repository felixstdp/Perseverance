difference(){
union(){
translate([-50,0,0])cube([140,25,8]);
translate([0,12.5,0])cylinder(d=20,h=15,$fn=60);
}    
translate([0,12.5,0])cylinder(d=6,h=15,$fn=20);
translate([-25,-1,4])rotate([-90,0,0])
    cylinder(d=2.4,h=50,$fn=20);
translate([25,-1,4])rotate([-90,0,0])
    cylinder(d=2.4,h=50,$fn=20);
translate([75,-1,4])rotate([-90,0,0])
    cylinder(d=2.4,h=50,$fn=20);
translate([11,7,-1])cube([72,11,12]);
translate([-43,7,-1])cube([32,11,12]);
}
