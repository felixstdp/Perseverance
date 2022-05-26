rotate([0,90,0])
{
rotate([0,0,15])front();
translate([75,30.5,17])rotate([-90,0,180])rear();

translate([79,-87,-14])rotate([0,0,-90])wheelbracket();
translate([79,141,-14])rotate([0,0,-90])wheelbracket();

translate([79,-87,33])rotate([180,0,0])wheel();
translate([79,141,33])rotate([180,0,0])wheel();
translate([79,26,51])rotate([180,0,0])wheel();

translate([-12.5,0,-2])rotate([0,180,-90])chassis();

translate([0,0,-124])mirror([0,0,1]){
rotate([0,0,15])front();
translate([75,30.5,17])rotate([-90,0,180])rear();

translate([79,-87,-14])rotate([0,0,-90])wheelbracket();
translate([79,141,-14])rotate([0,0,-90])wheelbracket();

translate([79,-87,33])rotate([180,0,0])wheel();
translate([79,141,33])rotate([180,0,0])wheel();
translate([79,26,51])rotate([180,0,0])wheel();

translate([-12.5,0,-2])rotate([0,180,-90])chassis();
}
}

module front(){
$fn=60;

translate([5,-82.5,0])rotate([0,-90,-15])
translate([16.5,-9.5,0])
servo_bracket();

translate([-5,-82.5,0])cube([10,78.5,8]);

difference(){
cylinder(d=20,h=15);
translate([0,0,-1])cylinder(d=5.9,h=17);
}

rotate([0,0,145])
translate([-5,-70,0])cube([10,64.5,8]);

rotate([0,0,145])translate([0,-75,0])
difference(){
cylinder(d=18,h=10);
translate([0,0,-1])cylinder(d=5.9,h=12);
}

rotate([0,0,75]) translate([0,6,0])
linear_extrude(height=8)
polygon([[-4,0],[4,0],[3,17.5],[-3,17.5]]);

rotate([0,0,75]) translate([-3,19,0])
cube([6,7,1.5]);

translate([-1,0.25,5])rotate([0,0,75]) 
translate([0,25,0])rotate([0,90,0])
difference(){
cylinder(d=10,h=6,center=true);
cylinder(d=3,h=7,center=true);
}
}

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
module wheelbracket(){
difference(){
translate([-8,-11,0])cube([16,22,15]);
difference(){
    translate([0,0,-1])cylinder(d=12.2,h=25,$fn=60);
    translate([6.1,0,-1])cube([2,16,40],center=true);
    translate([-6.1,0,-1])cube([2,16,40],center=true);
}
translate([0,14,-15])rotate([45,0,0])cube(30,center=true);
translate([-1,0,-1])cube([2,22,25]);
translate([-9,8,7.5])rotate([0,90,0])
cylinder(d=2.2,h=21,$fn=12);
translate([-9,8,7.5])rotate([0,90,0])
cylinder(d=2.8,h=10,$fn=12);
}

difference(){
union(){
translate([-8,-38,0])cube([16,31,6]);
translate([-8,-38,0])cube([16,6,37]);
translate([0,-32,37])rotate([90,0,0])
cylinder(d=16,h=6,$fn=120);
}
translate([0,-56,0])rotate([45,0,0])cube(30,center=true);
translate([0,-31,28])rotate([90,0,0])
cylinder(d=6.8,h=8,$fn=40);
translate([0,-31,38])rotate([90,0,0])
cylinder(d=1.2,h=8,$fn=40);
translate([0,-31,18])rotate([90,0,0])
cylinder(d=1.2,h=8,$fn=40);
translate([0,-36,28])rotate([90,0,0])
hull(){
cylinder(d=5.5,h=7,$fn=40);
translate([0,13.7,0])cylinder(d=4,h=7,$fn=40);
translate([0,-13.7,0])cylinder(d=4,h=7,$fn=40);
}  
}
}

module wheel(){
$fn=120;
difference(){
cylinder(d=48,h=38);
translate([0,0,-1])cylinder(d=46,h=40);
}
difference(){
union()
{
for(i=[0:60:300])
{
    rotate([0,0,i])translate([3,-0.75,0])
    cube(size=[20,1.5,15]);
} 
cylinder(d=16,h=22);
}
translate([0,0,-1])cylinder(d=3,h=24);
}
rotate([0,0,30])translate([1,-2,0])
cube(size=[2,4,22]);
h=38/8;
d_ext=51.5;
giro=[0,0,-6,6,0,-6,6,0];
helice=[0,6,-12,6,6,-12,6,0];

difference(){
union(){
for (i=[0:15:105])
{
rotate([0,0,i])
for (j=[0:1:7])
{
translate([0,0,h*j])
rotate([0,0,giro[j]])
linear_extrude(height=h,twist=helice[j])
circle(d=d_ext,$fn=3);
}
}
cylinder(d=49,h=38);
}
translate([0,0,-1])cylinder(d=47,h=40);
}
}

module chassis(){
difference(){
union(){
translate([-50,0,0])cube([140,25,8]);
translate([0,12.5,0])cylinder(d=20,h=15,$fn=60);
}    
translate([0,12.5,0])cylinder(d=5.8,h=15,$fn=20);
translate([-25,-1,4])rotate([-90,0,0])
    cylinder(d=2.4,h=50,$fn=20);
translate([25,-1,4])rotate([-90,0,0])
    cylinder(d=2.4,h=50,$fn=20);
translate([75,-1,4])rotate([-90,0,0])
    cylinder(d=2.4,h=50,$fn=20);
translate([11,7,-1])cube([72,11,12]);
translate([-43,7,-1])cube([32,11,12]);
}
}
