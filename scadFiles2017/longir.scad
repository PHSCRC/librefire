$fn = 50;

module screwholes(){
    translate([18.5,0,0]){
        cylinder(10, d =3.2 ,center = true);
    }
     translate([-18.5,0,0]){
        cylinder(10, d=3.2 ,center = true);
    }

}
module longir(){
    rotate([90,0,0]){

        union(){
            translate([0,0,10.23]){
                cube([30,13,22], center = true);  
            }

            cube([37.5,7, 1.45], center = true);           
             translate([18.5,0,0]){
                    cylinder(1.45, d =7 ,center = true);
                }
                translate([-18.5,0,0]){
                    cylinder(1.45, d=7 ,center = true);
                }   

        }

        screwholes();
    
    }
}
longir();