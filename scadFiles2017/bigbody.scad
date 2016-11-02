use <nema17.scad>
use <liposlide.scad>
use <pislide.scad>
use <handle.scad>
use <longir.scad>
use <shortir.scad>
use <shortestir.scad>



module body(){
    difference(){
       cube([250, 230, 200], center = true);
        translate([0, 0, 15]){
            cube([220, 200, 185.01], center = true);
        }
        translate([113, 0, 20]){
            cube([25,175,165], center = true);
        }
        translate([20, 95, -56]){
            rotate([0, 0, 90]){
                #nema17();
                #shaft();  
            }
        }
        translate([20,-95,-56]){
            rotate([0, 0, -90]){
                #nema17();
                #shaft();  
            }
        }
        translate([0,0,107]){
            #handle();
        }
        translate([-60,0,-90]){
            cylinder(20.1, d = 22.1, center = true);
            translate([0,0,-6]){
                #ballcaster();
            }
        }
        translate([20,0,-90]){
            #cube([20,20,30], center = true);
        }
        translate([120, 110,-50]){
            rotate([-45,90,0]){
                shortestir();
            }
        }
        translate([-120,110,-50]){
            rotate([-45,-90,0]){
                shortestir();
            }
        }        
        translate([120, -110,-50]){
            rotate([45,90,0]){
                shortestir();
            }
        }
        translate([-120, -110,-50]){
            rotate([45,-90,0]){
                shortestir();
            }
        }    
    }

    difference(){
        translate([-100,-0,7.5]){
            cube([30,100,185], center = true);
        }
        translate([-65 , -0, -5]){
            3sliposlide();
        }
        translate([-105, 0, 70.1]){
            rotate([0,0,90]){
                #pilipo();
            }
            
        }

        
    }
    difference(){
        translate([-60,-90, 7.5]){
            cube([100, 20, 185], center = true);
        }

        translate([-60, -90, 70.1]){
            #pilipo();
        }

        
    }
    translate([-65,0,-0]){
        rotate([0,0,0]){
            difference(){
        
                translate([5,90, 7.5]){
                    cube([100, 20, 185], center = true);
                }
                translate([105, 123, 50.1]){
                    #pislide();
                }

            
            }
        }
    }
}

module pilipo(){
    cube([55, 12, 60],center = true);
}
module boxbot(){
    body();


}
module ballcaster(){
    cylinder(15, d=22, center = true);
    translate([0,0,-6]){
        sphere(r=10);       
    }

    
}
boxbot();