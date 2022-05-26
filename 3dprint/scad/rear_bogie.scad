translate([75,30,17])rotate([-90,0,180])rear();

module rear(){
rotate([90,-90,0])translate([4,5,-6])wheel_bracket();
$fn=60;

translate([4,-2,-1])cube([21,8,10]);
translate([25,6,5])rotate([90,0,0])
cylinder(d=8,h=8);
translate([20.35,-2,1])rotate([0,60,0])
translate([-1.5,0,0])cube([49,8,10]);
difference(){
translate([50,-6,-40])rotate([-90,0,0])
cylinder(d=18,h=12);
translate([50,-10,-40])rotate([-90,0,0])
cylinder(d=5.9,h=20);
}
translate([47,0,-45])
rotate([0,90,0])
{
    translate([-1,-2,-1])cube([47,8,10]);
    translate([62,-5.5,-1])rotate([0,0,0])
    servo_bracket();
}

module wheel_bracket(){
    difference(){
translate([-8,-11,0])cube([16,22,15]);
difference(){
    translate([0,0,-1])cylinder(d=12.2,h=25,$fn=60);
    translate([6.1,0,-1])cube([2,16,40],center=true);
    translate([-6.1,0,-1])cube([2,16,40],center=true);
}
//translate([0,14,-15])rotate([45,0,0])cube(30,center=true);
translate([-1,0,-1])cube([2,22,25]);
translate([-9,8,7.5])rotate([0,90,0])
cylinder(d=2.2,h=21,$fn=12);
translate([-9,8,7.5])rotate([0,90,0])
cylinder(d=2.8,h=10,$fn=12);
}
}
}

module servo_bracket(){
difference(){
union(){
translate([1,0,2.5])cube([35,23,5],center=true);
translate([0,11.5,3])
rotate([90,0,0])linear_extrude(height=23)
polygon([[-16.5,0],[18.5,2],[18.5,3],[-16.5,8]]);
translate([13.75,0,0])cylinder(d=8,h=2,$fn=60);
}
cube([23.4,12.4,50],center=true);
translate([13.75,0,-1])cylinder(d=2.2,h=50,$fn=30);
translate([-13.75,0,-1])cylinder(d=2.2,h=50,$fn=30);
translate([10,0,0])cylinder(d=6,h=12,$fn=60);
}
}
