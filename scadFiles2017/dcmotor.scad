$fn = 50;
module dcmotor(){
    
  bottomplate();
  translate([24.6,0,0]){ 
   topplate();
  }
}
module bottomplate(){
    cube([49.2, 37.6, 2], center = true);
    for(i=[0:6]){
        translate([16.2-(6.4*i),15.6,-25]){
            cylinder(50, d=3.2, center = true);
        }
    }
    for(i=[0:6]){
        translate([16.2-(6.4*i),-15.6,-25]){
            cylinder(50, d=3.2, center = true);
        }
    }   
}
module topplate(){

        translate([0,0,10.4]){
            cube([12,40,20.8], center = true);
            
        }
        translate([0,0,20.8]){
            rotate([0,90,0]){
                cylinder(12,d=40,center = true);
            }
        }
    
   
}
dcmotor();