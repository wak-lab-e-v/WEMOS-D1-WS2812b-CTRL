Detailgrad = Detailgrad ? Detailgrad : 10;
function defined(a) = (a != undef);

module PANASONIC_D(Name="",Value="",Library="") {  color("DarkSlateGray") translate([0,0,1/2]) cube([6.6,6.6,1], center = true); color("silver") Phased_cylinder(5.8,6.3/2,6.3/2);}
module C1206(Name="",Value="",Library="") {C_SMD([3.2,1.6,0.8]);}
// Generic
module SOT353(Name="",Value="",Library="")
{
  dim = [2,1.25,1];
  rotate([0,0,180]){
  color("DarkSlateGray") cubepart(dim); 
  rotate([0,0,180])  SMD_PIN(size=dim, pinnumber = 1, pitch=0.65, pinlength=0.425, pinheight = 0.4 );
  rotate([0,0,180])  SMD_PIN(size=dim, pinnumber = 2, pitch=0.65, pinlength=0.425, pinheight = 0.4 );
  rotate([0,0,180])  SMD_PIN(size=dim, pinnumber = 3, pitch=0.65, pinlength=0.425, pinheight = 0.4 );
  SMD_PIN(size=dim, pinnumber = 1, pitch=0.65, pinlength=0.425, pinheight = 0.4 );
  SMD_PIN(size=dim, pinnumber = 3, pitch=0.65, pinlength=0.425, pinheight = 0.4 );
  }
}

module ESP_12(Name="",Value="",Library=""){ // Eagle Adafruit
	board_thicknessA = 1.000000;
	eta = 0.2;
  $fn = Detailgrad;
	rotate([0,0,90]) translate([-12.065+1,-8.09625,0]) union(){   // PCB whith parts and text
		color("DarkSlateGray")linear_extrude(height=board_thicknessA,center=false, convexity=10)
		polygon(points = [[0,16.192500],[24.13,16.1925],[24.13,0],[0,0]]); //Board
    
    color("Goldenrod",0.7) translate([0,0,board_thicknessA-0.017]) linear_extrude(height=0.035,center=false, convexity=10) difference()  { 
	  union() { 
					translate([17.463,3.004]) rotate([0,0,270.000]) square([1.092,1.397], center = true); //LED0805 A
			translate([17.463,1.124]) rotate([0,0,270.000]) square([1.092,1.397], center = true); //LED0805 K
			translate([1.558,1.318])square([1.270,2.540], center = true); //SMD1,27-2,54 1
			translate([3.558,1.318])square([1.270,2.540], center = true); //SMD1,27-2,54 1
			translate([5.558,1.318])square([1.270,2.540], center = true); //SMD1,27-2,54 1
			translate([7.558,1.318])square([1.270,2.540], center = true); //SMD1,27-2,54 1
			translate([9.558,1.318])square([1.270,2.540], center = true); //SMD1,27-2,54 1
			translate([11.558,1.318])square([1.270,2.540], center = true); //SMD1,27-2,54 1
			translate([13.558,1.318])square([1.270,2.540], center = true); //SMD1,27-2,54 1
			translate([15.558,1.318])square([1.270,2.540], center = true); //SMD1,27-2,54 1
			translate([15.558,14.953])square([1.270,2.540], center = true); //SMD1,27-2,54 1
			translate([13.558,14.953])square([1.270,2.540], center = true); //SMD1,27-2,54 1
			translate([11.558,14.953])square([1.270,2.540], center = true); //SMD1,27-2,54 1
			translate([9.558,14.953])square([1.270,2.540], center = true); //SMD1,27-2,54 1
			translate([7.558,14.953])square([1.270,2.540], center = true); //SMD1,27-2,54 1
			translate([5.558,14.953])square([1.270,2.540], center = true); //SMD1,27-2,54 1
			translate([3.558,14.953])square([1.270,2.540], center = true); //SMD1,27-2,54 1
			translate([1.558,14.953])square([1.270,2.540], center = true); //SMD1,27-2,54 1
		EagleWire([18.891,0.635],[23.336,0.635],width=0.610,$fn=8);
		EagleWire([23.336,0.635],[23.336,3.334],width=0.610,$fn=8);
		EagleWire([23.336,3.334],[20.320,3.334],width=0.610,$fn=8);
		EagleWire([20.320,3.334],[20.320,6.033],width=0.610,$fn=8);
		EagleWire([20.320,6.033],[23.336,6.033],width=0.610,$fn=8);
		EagleWire([23.336,6.033],[23.336,8.731],width=0.610,$fn=8);
		EagleWire([23.336,8.731],[20.320,8.731],width=0.610,$fn=8);
		EagleWire([20.320,8.731],[20.320,11.430],width=0.610,$fn=8);
		EagleWire([20.320,11.430],[23.336,11.430],width=0.610,$fn=8);
		EagleWire([23.336,11.430],[23.336,13.494],width=0.610,$fn=8);
		EagleWire([23.336,13.494],[23.336,15.558],width=0.610,$fn=8);
		EagleWire([23.336,15.558],[18.574,15.558],width=0.610,$fn=8);
		EagleWire([23.336,13.494],[18.574,13.494],width=0.610,$fn=8);
			translate([1.510,15.000]) circle(r=0.453,$fn=Detailgrad);
			translate([3.510,15.000]) circle(r=0.453,$fn=Detailgrad);
			translate([5.510,15.000]) circle(r=0.453,$fn=Detailgrad);
			translate([7.510,15.000]) circle(r=0.453,$fn=Detailgrad);
			translate([9.510,15.000]) circle(r=0.453,$fn=Detailgrad);
			translate([11.510,15.000]) circle(r=0.453,$fn=Detailgrad);
			translate([13.510,15.000]) circle(r=0.453,$fn=Detailgrad);
			translate([15.510,15.000]) circle(r=0.453,$fn=Detailgrad);
			translate([1.525,1.143]) circle(r=0.453,$fn=Detailgrad);
			translate([3.525,1.143]) circle(r=0.453,$fn=Detailgrad);
			translate([5.525,1.143]) circle(r=0.453,$fn=Detailgrad);
			translate([7.525,1.143]) circle(r=0.453,$fn=Detailgrad);
			translate([9.525,1.143]) circle(r=0.453,$fn=Detailgrad);
			translate([11.525,1.143]) circle(r=0.453,$fn=Detailgrad);
			translate([13.525,1.143]) circle(r=0.453,$fn=Detailgrad);
			translate([15.525,1.143]) circle(r=0.453,$fn=Detailgrad);
		}

		}
color("Goldenrod",0.7) translate([0,0,-0.017]) linear_extrude(height=0.035,center=false, convexity=10) difference()  { 
	  union() { 
					translate([1.510,15.000]) circle(r=0.453,$fn=Detailgrad);
			translate([3.510,15.000]) circle(r=0.453,$fn=Detailgrad);
			translate([5.510,15.000]) circle(r=0.453,$fn=Detailgrad);
			translate([7.510,15.000]) circle(r=0.453,$fn=Detailgrad);
			translate([9.510,15.000]) circle(r=0.453,$fn=Detailgrad);
			translate([11.510,15.000]) circle(r=0.453,$fn=Detailgrad);
			translate([13.510,15.000]) circle(r=0.453,$fn=Detailgrad);
			translate([15.510,15.000]) circle(r=0.453,$fn=Detailgrad);
			translate([1.525,1.143]) circle(r=0.453,$fn=Detailgrad);
			translate([3.525,1.143]) circle(r=0.453,$fn=Detailgrad);
			translate([5.525,1.143]) circle(r=0.453,$fn=Detailgrad);
			translate([7.525,1.143]) circle(r=0.453,$fn=Detailgrad);
			translate([9.525,1.143]) circle(r=0.453,$fn=Detailgrad);
			translate([11.525,1.143]) circle(r=0.453,$fn=Detailgrad);
			translate([13.525,1.143]) circle(r=0.453,$fn=Detailgrad);
			translate([15.525,1.143]) circle(r=0.453,$fn=Detailgrad);
    }
    }
		union(){  // parts 
		translate([8.731,8.096,board_thicknessA])rotate([0,0,90])SHIELD12X15();  //CA1 SHIELD12X15
		translate([17.463,2.064,board_thicknessA])rotate([0,0,270])LED0805();  //LED1 LED0805
		}
	} //endunion() 
   module SHIELD12X15() //CA1 SHIELD12X15
	{
	  rotate([0,0,270])
    {
      color ("silver") 
      linear_extrude(2.3) translate([-7.500000,-6.000000,0]) square([  15.000000,12.000000]); //Board
      
      
    }
  }  
  module LED0805(Enable = false)
  {
    rotate([0,0,90]) 
    {  
        color("gray") translate([0,0,0.125/2]) cube([1.2,2,0.125], center = true);
        if (!Enable)
        {    
          color("green") linear_extrude(0.65,scale = 0.9) square([1.2,1.8],center = true);
        }
        else 
        {    
          color("lightgreen") linear_extrude(0.65,scale = 0.9) square([1.2,1.8],center = true);
        } 
    }    
  }


} // end ESP12

module WEMOS_D1_MINI(Name="",Value="",Library=""){
    $fn = Detailgrad;
	board_thickness = 1.600;
	eta = 0.2;
	board_size = [25.400,34.290];
	board_origin = [0,0];
	board_polygons = [[[-10.795,-17.145],[-10.795,-10.160],[-12.700,-10.160],[-12.700,13.970],[-12.587,14.813],[-12.254,15.595],[-11.725,16.261],[-11.039,16.763],[-10.244,17.065],[-9.398,17.145],[9.525,17.145],[10.368,17.032],[11.150,16.699],[11.816,16.170],[12.318,15.484],[12.620,14.689],[12.700,13.843],[12.700,-17.145],[3.810,-17.145],[3.810,-15.621],[-5.080,-15.621],[-5.080,-17.145]]];
	translate([0,0,0]) union()   // PCB whith parts and text
	{
		color("#265004")linear_extrude(height=board_thickness,center=false, convexity=10)
		union()  // PCB 
		{
			difference() // PCB and holes 
			{
				translate(board_origin)  polygon(points = board_polygons[0]); //Board
				if (Detailgrad > 9) // Drill part holes 
				{
					translate([2.965,-13.725])circle(r=0.750,$fn=$fn); //ZX62D-B-5PA8 S1
					translate([-4.235,-13.725])circle(r=0.750,$fn=$fn); //ZX62D-B-5PA8 S2
					translate([-3.060,-10.825])circle(r=0.350,$fn=$fn); //ZX62D-B-5PA8 S3
					translate([1.790,-10.825])circle(r=0.350,$fn=$fn); //ZX62D-B-5PA8 S4
					if (EnableVias && (Detailgrad > 12)) 
 					union() // Vias 
					{
						translate([-11.430,9.525])circle(r=0.500,$fn=$fn); //via
						translate([-11.430,6.985])circle(r=0.500,$fn=$fn); //via
						translate([-11.430,4.445])circle(r=0.500,$fn=$fn); //via
						translate([-11.430,1.905])circle(r=0.500,$fn=$fn); //via
						translate([-11.430,-0.635])circle(r=0.500,$fn=$fn); //via
						translate([-11.430,-3.175])circle(r=0.500,$fn=$fn); //via
						translate([-11.430,-5.715])circle(r=0.500,$fn=$fn); //via
						translate([-11.430,-8.255])circle(r=0.500,$fn=$fn); //via
						translate([11.430,9.525])circle(r=0.500,$fn=$fn); //via
						translate([11.430,6.985])circle(r=0.500,$fn=$fn); //via
						translate([11.430,4.445])circle(r=0.500,$fn=$fn); //via
						translate([11.430,2.032])circle(r=0.500,$fn=$fn); //via
						translate([11.430,-0.635])circle(r=0.500,$fn=$fn); //via
						translate([11.430,-3.175])circle(r=0.500,$fn=$fn); //via
						translate([11.430,-5.715])circle(r=0.500,$fn=$fn); //via
						translate([11.430,-8.255])circle(r=0.500,$fn=$fn); //via
					} // End Vias
				} // end Drill part holes
			} //end difference() PCB and holes 
			if (holewithorigin) 
			{
				//Print a little cross in the PCB holes 
			}
		} //end union() // PCB 
		if (Detailgrad > 10) color("#DFDDE0",1) translate([0,0,board_thickness-0.017]) linear_extrude(height=0.040,center=false, convexity=10) difference()  { 
	  union() { 
					translate([-7.500,8.945]) square([2.000,1.200], center = true); //ESP-12 1
			translate([-7.500,6.945]) square([2.000,1.200], center = true); //ESP-12 2
			translate([-7.500,4.945]) square([2.000,1.200], center = true); //ESP-12 3
			translate([-7.500,2.945]) square([2.000,1.200], center = true); //ESP-12 4
			translate([-7.500,0.945]) square([2.000,1.200], center = true); //ESP-12 5
			translate([-7.500,-1.055]) square([2.000,1.200], center = true); //ESP-12 6
			translate([-7.500,-3.055]) square([2.000,1.200], center = true); //ESP-12 7
			translate([-7.500,-5.055]) square([2.000,1.200], center = true); //ESP-12 8
			translate([7.500,-5.055]) square([2.000,1.200], center = true); //ESP-12 9
			translate([7.500,-3.055]) square([2.000,1.200], center = true); //ESP-12 10
			translate([7.500,-1.055]) square([2.000,1.200], center = true); //ESP-12 11
			translate([7.500,0.945]) square([2.000,1.200], center = true); //ESP-12 12
			translate([7.500,2.945]) square([2.000,1.200], center = true); //ESP-12 13
			translate([7.500,4.945]) square([2.000,1.200], center = true); //ESP-12 14
			translate([7.500,6.945]) square([2.000,1.200], center = true); //ESP-12 15
			translate([7.500,8.945]) square([2.000,1.200], center = true); //ESP-12 16
			translate([-1.935,-11.050]) rotate([0,0,90.000]) square([1.350,0.400], center = true); //ZX62D-B-5PA8 1
			translate([-1.285,-11.050]) rotate([0,0,90.000]) square([1.350,0.400], center = true); //ZX62D-B-5PA8 2
			translate([-0.635,-11.050]) rotate([0,0,90.000]) square([1.350,0.400], center = true); //ZX62D-B-5PA8 3
			translate([0.015,-11.050]) rotate([0,0,90.000]) square([1.350,0.400], center = true); //ZX62D-B-5PA8 4
			translate([0.665,-11.050]) rotate([0,0,90.000]) square([1.350,0.400], center = true); //ZX62D-B-5PA8 5
			translate([2.965,-13.725]) circle(r=1.125,$fn=$fn);
			translate([-4.235,-13.725]) circle(r=1.125,$fn=$fn);
			translate([-3.060,-10.825]) rotate([0,0,180.000]) EaglePad([1.208,2.416], 100); //ZX62D-B-5PA8 S3
			translate([1.790,-10.825]) rotate([0,0,180.000]) EaglePad([1.208,2.416], 100); //ZX62D-B-5PA8 S4
		}
			translate([2.965,-13.725]) circle(r=0.750,$fn=$fn);
			translate([-4.235,-13.725]) circle(r=0.750,$fn=$fn);
			translate([-3.060,-10.825]) circle(r=0.350,$fn=$fn);
			translate([1.790,-10.825]) circle(r=0.350,$fn=$fn);

		}
		if (EnableWires && (Detailgrad > 12)) color("#7C770F",1) translate([0,0,board_thickness-0.017]) linear_extrude(height=0.035,center=false, convexity=10) difference()  { 
	  union() { 
					translate([-11.430,9.525]) circle(r=0.750,$fn=$fn);
			translate([-11.430,6.985]) circle(r=0.750,$fn=$fn);
			translate([-11.430,4.445]) circle(r=0.750,$fn=$fn);
			translate([-11.430,1.905]) circle(r=0.750,$fn=$fn);
			translate([-11.430,-0.635]) circle(r=0.750,$fn=$fn);
			translate([-11.430,-3.175]) circle(r=0.750,$fn=$fn);
			translate([-11.430,-5.715]) circle(r=0.750,$fn=$fn);
			translate([-11.430,-8.255]) circle(r=0.750,$fn=$fn);
			translate([11.430,9.525]) circle(r=0.750,$fn=$fn);
			translate([11.430,6.985]) circle(r=0.750,$fn=$fn);
			translate([11.430,4.445]) circle(r=0.750,$fn=$fn);
			translate([11.430,2.032]) circle(r=0.750,$fn=$fn);
			translate([11.430,-0.635]) circle(r=0.750,$fn=$fn);
			translate([11.430,-3.175]) circle(r=0.750,$fn=$fn);
			translate([11.430,-5.715]) circle(r=0.750,$fn=$fn);
			translate([11.430,-8.255]) circle(r=0.750,$fn=$fn);
		}
					if (EnableVias && (Detailgrad > 12)) 
 					union() // Vias 
					{
				translate([-11.430,9.525]) circle(r=0.500,$fn=$fn);
				translate([-11.430,6.985]) circle(r=0.500,$fn=$fn);
				translate([-11.430,4.445]) circle(r=0.500,$fn=$fn);
				translate([-11.430,1.905]) circle(r=0.500,$fn=$fn);
				translate([-11.430,-0.635]) circle(r=0.500,$fn=$fn);
				translate([-11.430,-3.175]) circle(r=0.500,$fn=$fn);
				translate([-11.430,-5.715]) circle(r=0.500,$fn=$fn);
				translate([-11.430,-8.255]) circle(r=0.500,$fn=$fn);
				translate([11.430,9.525]) circle(r=0.500,$fn=$fn);
				translate([11.430,6.985]) circle(r=0.500,$fn=$fn);
				translate([11.430,4.445]) circle(r=0.500,$fn=$fn);
				translate([11.430,2.032]) circle(r=0.500,$fn=$fn);
				translate([11.430,-0.635]) circle(r=0.500,$fn=$fn);
				translate([11.430,-3.175]) circle(r=0.500,$fn=$fn);
				translate([11.430,-5.715]) circle(r=0.500,$fn=$fn);
				translate([11.430,-8.255]) circle(r=0.500,$fn=$fn);
		}

		}
			if (EnablePolygones) {
			}
		if (Detailgrad > 10) color("#DFDDE0",1) translate([0,0,-0.022]) linear_extrude(height=0.040,center=false, convexity=10) difference()  { 
	  union() { 
					translate([2.965,-13.725]) circle(r=1.125,$fn=$fn);
			translate([-4.235,-13.725]) circle(r=1.125,$fn=$fn);
			translate([-3.060,-10.825]) rotate([0,0,180.000]) EaglePad([1.208,2.416], 100); //ZX62D-B-5PA8 S3
			translate([1.790,-10.825]) rotate([0,0,180.000]) EaglePad([1.208,2.416], 100); //ZX62D-B-5PA8 S4
		}
			translate([2.965,-13.725]) circle(r=0.750,$fn=$fn);
			translate([-4.235,-13.725]) circle(r=0.750,$fn=$fn);
			translate([-3.060,-10.825]) circle(r=0.350,$fn=$fn);
			translate([1.790,-10.825]) circle(r=0.350,$fn=$fn);

		}
		if (EnableWires && (Detailgrad > 12)) color("#7C770F",1) translate([0,0,-0.017]) linear_extrude(height=0.035,center=false, convexity=10) difference()  { 
	  union() { 
					translate([-11.430,9.525]) circle(r=0.750,$fn=$fn);
			translate([-11.430,6.985]) circle(r=0.750,$fn=$fn);
			translate([-11.430,4.445]) circle(r=0.750,$fn=$fn);
			translate([-11.430,1.905]) circle(r=0.750,$fn=$fn);
			translate([-11.430,-0.635]) circle(r=0.750,$fn=$fn);
			translate([-11.430,-3.175]) circle(r=0.750,$fn=$fn);
			translate([-11.430,-5.715]) circle(r=0.750,$fn=$fn);
			translate([-11.430,-8.255]) circle(r=0.750,$fn=$fn);
			translate([11.430,9.525]) circle(r=0.750,$fn=$fn);
			translate([11.430,6.985]) circle(r=0.750,$fn=$fn);
			translate([11.430,4.445]) circle(r=0.750,$fn=$fn);
			translate([11.430,2.032]) circle(r=0.750,$fn=$fn);
			translate([11.430,-0.635]) circle(r=0.750,$fn=$fn);
			translate([11.430,-3.175]) circle(r=0.750,$fn=$fn);
			translate([11.430,-5.715]) circle(r=0.750,$fn=$fn);
			translate([11.430,-8.255]) circle(r=0.750,$fn=$fn);
		}
					if (EnableVias && (Detailgrad > 12)) 
 					union() // Vias 
					{
				translate([-11.430,9.525]) circle(r=0.500,$fn=$fn);
				translate([-11.430,6.985]) circle(r=0.500,$fn=$fn);
				translate([-11.430,4.445]) circle(r=0.500,$fn=$fn);
				translate([-11.430,1.905]) circle(r=0.500,$fn=$fn);
				translate([-11.430,-0.635]) circle(r=0.500,$fn=$fn);
				translate([-11.430,-3.175]) circle(r=0.500,$fn=$fn);
				translate([-11.430,-5.715]) circle(r=0.500,$fn=$fn);
				translate([-11.430,-8.255]) circle(r=0.500,$fn=$fn);
				translate([11.430,9.525]) circle(r=0.500,$fn=$fn);
				translate([11.430,6.985]) circle(r=0.500,$fn=$fn);
				translate([11.430,4.445]) circle(r=0.500,$fn=$fn);
				translate([11.430,2.032]) circle(r=0.500,$fn=$fn);
				translate([11.430,-0.635]) circle(r=0.500,$fn=$fn);
				translate([11.430,-3.175]) circle(r=0.500,$fn=$fn);
				translate([11.430,-5.715]) circle(r=0.500,$fn=$fn);
				translate([11.430,-8.255]) circle(r=0.500,$fn=$fn);

			}

		}
			if (EnablePolygones) {
			}
		if(EnableParts) union() // parts 
		{
			translate([0.000,4.445,board_thickness])ESP_12(Name="X1",Value="",Library="adafruit"); 
			translate([-0.635,-15.875,board_thickness])rotate([0,0,90])ZX62D_B_5PA8(Name="X2",Value="ZX62D-B-5PA8",Library="zx62d-b-5pa8-oshpark_10"); 
		} //endunion() 
	} // // PCB whith parts and text  


}


module ZX62D_B_5PA8(Name="",Value="",Library="") // MICRO USB
{
  translate([5,0,0]) rotate([-90,180,90]) union()
  {
    color("silver") union() { difference()
    {
    translate([-3.80,0,0])linear_extrude(5) polygon([[7.6,1.1],[7.6,1.9],[6.9,2.6],[0.7,2.6],[0,1.9],[0,1.1],[1.1,0],[6.5,0]]);
    
    translate([-3.8+0.3,0.3,1]) linear_extrude(4.5)  polygon([[0,0.9],[0,1.5],[0.5,2],[6.5,2],[7,1.5],[7,0.9],[6.1,0],[0.9,0]]);
    }
    translate([-3,2.3,5]) rotate([-30,0,0]) cube([6,0.3,0.6]);
    translate([2.7,0.3,5]) rotate([-30,0,180]) cube([5.4,0.3,0.6]);
    translate([-3.8+0.3,1.1,5]) rotate([-30,0,90]) cube([0.8,0.3,0.6]);
    translate([+3.8-0.3,1.9,5]) rotate([-30,0,-90]) cube([0.8,0.3,0.6]);
    }
    color("DarkSlateGray") translate([-1.9,1.3,0.4])  cube([3.8,0.6,3.8]);
  }  
}
module SMD_PIN(size = [1,1,1], pinnumber = 1, pitch=1, pinlength=0, pinheight= 0, pinwidth = 0, bended = true )
{  
  pinheight  =  pinheight ? pinheight : sqrt(pitch/2) ; 
  pinwidth   =  pinwidth  ? pinwidth  : pitch/2;
  if (Detailgrad > 9)
  {
    pinlength =   pinlength ? pinlength : sqrt(pitch) ;
    pos       =   pinnumber - 1;
    
    pincount  = round(size[0]*0.9 / pitch);
    translate([pitch/2-pinwidth/2-(pincount*pitch)/2,-pinlength-size[1]/2,0]) color("silver") translate([pitch*pos,0,0]) SMD_PIN_DETAIL([pinwidth,pinlength,pinheight],bended = bended); 
  } else {InvisiblePart();}
}

module SMD_PIN_DETAIL(size = [1,1,1], bended = true)
{
  if ((Detailgrad < 20) || (size[2] > size[1]) || !bended)
  {
    cube(size);
  }  
  else
  {  
  r =  size[2]/2-size[2]/8;
  angle = 90;
  pinwidth = size[0];
  pinheight = size[2] /4;
  translate([pinwidth,(size[1]-size[2]*3/4),size[2]])
  rotate([00,-90,-90]) translate([pinheight/2-size[2],-size[0]/2,0])
  union()
  {
    translate([0,0,-(size[1]-size[2]*3/4 )/2]) cube([pinheight,pinwidth,size[1]-size[2]*3/4], center = true);
    //translate([r,0,0]) rotate([-90,0,00]) rotate_extrude(angle=angle) translate([-r,0]) square([pinheight,pinwidth], center = true);
    translate([r,0,0]) rotate([-90,00,90]) BendedRectangle([pinheight,size[0]], r=r);
    translate([r*(1-cos(angle)),0,(r)*sin(angle)]) rotate([0,angle,0]) rotate([0,0,180]) translate([r,0,0]) rotate([-90,00,90]) BendedRectangle([pinheight,size[0]], r=r);
      
      
    //  translate([r,0,0]) rotate([-90,0,00]) rotate_extrude(angle=angle) translate([-r,0]) square([pinheight,pinwidth], center = true);
    // translate([r*(1-cos(angle)),0,(r)*sin(angle)]) rotate([0,angle,0]) rotate([0,0,180]) translate([r,0,0]) rotate([-90,0,00]) rotate_extrude(angle=angle) translate([-r,0]) square([pinheight,pinwidth], center = true);
  } 
 } 
}


module C_SMD(size = [1,1,1])
{
  if (Detailgrad > 9)
  {
    r = Detailgrad > 19 ? 0.08 : 0;
    color("Khaki")  cubepart([size[0]*0.9,size[1]*0.9,size[2]*0.9]);
    color("silver") translate([size[0]*3/8,0,0]) cubepart([size[0]/4,size[1],size[2]], r=r);
    color("silver") translate([-size[0]*3/8,0,0]) cubepart([size[0]/4,size[1],size[2]], r=r);
  } else {InvisiblePart();} 
}


module Phased_cylinder(l,r1,r2,Roundness = 0.2)
{
  if ((Detailgrad < 21))
  {
    cylinder(l,r1,r2);
  }  
  else
  {  
    round1 = r1*Roundness/2;
    round2 = r2*Roundness/2; 
    cylinder(l,r1-round1,r2-round2);  
    translate([0,0,round1]) cylinder(l-round2-round1,r1,r2);
    rotate_extrude(convexity = 10) translate([r1-round1, round1, 0]) circle(r = round1); 
    rotate_extrude(convexity = 10) translate([r2-round2, l-round2, ]) circle(r = round1); 
  }    
}
module cubepart(size = [1,1,1], phase = 0, r = 0, frustum = 0)
{
   frust = (Detailgrad > 20) ? frustum : 0;
   if (!phase && !frust && !r)
   {
   translate([-size[0]/2,-size[1]/2,0])  cube(size=[size[0],size[1],size[2]]); 
   }
   else
   {
    linear_extrude(size[2], scale = 1-(frust/100)) offset_square(size=[size[0]-(2*phase+2*r),size[1]-(2*phase+2*r)], delta = phase, r=r, chamfer=true, center = true);
   }  
}

module cylinderpart(size = [1,1])
{
   cylinder(size[1],size[0]/2,size[0]/2, $fn = Detailgrad); 
}
module offset_square(size = [1,1], r = 0, delta = 0, chamfer=false, center = false, $fn = Detailgrad)
{
  num = round($fn/4);
  plus = delta*0.41425;
  function bogen(point=[0,0],phase = 0) = [for (i=[0:num], x=i*90/num) [point[0]+r*sin(x+phase),point[1]+r*cos(x+phase)]];
  function poli_round() = concat(bogen([0,0],180),bogen([0,size[1]],-90),bogen([size[0],size[1]],0),bogen([size[0],0],90));
  function poli_phase() = concat([[0-delta,0-plus],[0-delta,size[1]+plus],[0-plus,size[1]+delta],[size[0]+plus,size[1]+delta],[size[0]+delta,size[1]+plus],[size[0]+delta,0-plus],[size[0]+plus,-delta],[0-plus,-delta]]);  
  if (Detailgrad > 15)
  {
      if (r==0)
      {    
        if (chamfer)
        {    
          if (center)
            translate([-size[0]/2,-size[1]/2]) polygon(poli_phase());
          else
            polygon(poli_phase());
        }  
        else
        {    
          if (center) square([size[0]+2*delta,size[1]+2*delta], center = center);
          else  
           translate([-delta,-delta]) square([size[0]+2*delta,size[1]+2*delta], center = center);  
        }  
      }
      else
      {    
        if (center)
          translate([-size[0]/2,-size[1]/2]) polygon(poli_round());
        else
          polygon(poli_round());
      }
  } else
  {
      if (center) square([size[0]+2*(delta+r),size[1]+2*(delta+r)], center = center);
       else  
      translate([-(delta+r),-(delta+r)]) square([size[0]+2*(delta+r),size[1]+2*(delta+r)], center = center); 
  }    
    
}
module BendedRectangle(Dim=[0.6,0.9], r=0.75)
{
  det = (($fn != undef) && ($fn != 0))? $fn : 20;
  function bogen(point=[0,0], r = 1 ,phase = 0, winkel = 90, $fn=det) = [let(num=abs($fn*winkel/360)) for (i=[0:num], x=i*winkel/num) [point[0]+r*cos(x+phase),point[1]+r*sin(x+phase)]]; 
          
  if (Detailgrad > 9) 
  {    
    rotate([180,-90,00 ])translate([0,0,-Dim[1]/2]) linear_extrude(Dim[1]) polygon(concat([[0,r+Dim[0]/2]], bogen([0,0],r=r-Dim[0]/2, phase = 90 ,winkel = -90), [[r-Dim[0]/2, 0]] ,bogen([0,0], r=r+Dim[0]/2))); 
    // rotate([90,0,-90]) translate([0,0,-Dim[1]/2]) rotate_extrude(angle=90, convexity=10, $fn=20) translate([r-(Dim[0]/2), 0]) square(Dim);    
  }   else {InvisiblePart();
 } 
}
   