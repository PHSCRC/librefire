$fn = 50;

module shortestir(){

        union(){
            cube([21.59, 8.89, 1.57], center = true);
            translate([0,0,5.205]){
            cube([21.59, 8.89, 8.84], center = true);
            }
        }
        translate([8.25,0,0]){
            cylinder(10,d=2.2,center = true);    
        }
        
    
}
shortestir();