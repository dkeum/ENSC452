#include <iostream>
#include "math.h"

#include "shape_params.h"
//#include "shape_param.h"
using namespace std;






// Square function implementatinos
void Square::draw_Square(int x1,int x2, int y1, int y2, int color){
		int * image_buffer_pointer = (int *)0x00900000;

			for(int y = y1; y<=y2; y++){
				for(int x=x1; x<=x2; x++){

						if(x >= x1+10){
						image_buffer_pointer[(y)+(x<<10)+(x<<8)]=color;
						}
						else{
							image_buffer_pointer[(y)+(x<<10)+(x<<8)]=(int)0x00000000;
						}
				}
			}


	}





// Circle function implementation
void Circle::draw_Circle(int x1, int y1,int radius,int color){

//	int temp_radius = radius;
//	//x^2+y^2=1
//	//if the point is within the circumference then fill the circle
//
//	while(radius>=1){
//		if(radius>=temp_radius-20){
//			 float n=0,invradius=1/(float)radius;
//				  int dx=0,dy=radius-1;
//				  int dxoffset,dyoffset,offset=(x1<<10)+(x1<<8)+y1;
//
//				  while (dx<=dy)
//				  {
//				    dxoffset = (dx<<10) + (dx<<8);
//				    dyoffset = (dy<<10) + (dy<<8);
//				    image_buffer_pointer[offset+dy-dxoffset] = (int)0x00000000;  /* octant 0 */
//				    image_buffer_pointer[offset+dx-dyoffset] = (int)0x00000000;  /* octant 1 */
//				    image_buffer_pointer[offset-dx-dyoffset] = (int)0x00000000;  /* octant 2 */
//				    image_buffer_pointer[offset-dy-dxoffset] = (int)0x00000000;  /* octant 3 */
//				    dx++;
//				    n+=invradius;
//				    dy=radius * sin(acos(n));
//				  }
//		}
//		else{
//				float n=0,invradius=1/(float)radius;
//					int dx=0,dy=radius-1;
//					int dxoffset,dyoffset,offset=(x1<<10)+(x1<<8)+y1;
//
//	  while (dx<=dy)
//	  {
//	    dxoffset = (dx<<10) + (dx<<8);
//	    dyoffset = (dy<<10) + (dy<<8);
//	    image_buffer_pointer[offset+dy-dxoffset] = color;  /* octant 0 */
//	    image_buffer_pointer[offset+dx-dyoffset] = color;  /* octant 1 */
//	    image_buffer_pointer[offset-dx-dyoffset] = color;  /* octant 2 */
//	    image_buffer_pointer[offset-dy-dxoffset] = color;  /* octant 3 */
//	    image_buffer_pointer[offset-dy+dxoffset] = color;  /* octant 4 */
//	    image_buffer_pointer[offset-dx+dyoffset] = color;  /* octant 5 */
//	    image_buffer_pointer[offset+dx+dyoffset] = color;  /* octant 6 */
//	    image_buffer_pointer[offset+dy+dxoffset] = color;  /* octant 7 */
//	    dx++;
//	    n+=invradius;
//	    dy=radius * sin(acos(n));
//	  }
//		}
//	  radius--;
//	}

// implementatino #2



		  // create a filled in circle
		  for(int y=-radius; y<=radius; y++)
		      for(int x=-radius; x<=radius; x++)
		          if(x*x+y*y <= (radius-7)*(radius-7)){
		        	  image_buffer_pointer[(x1<<10)+(x1<<8)+(x<<10)+(x<<8)+y+y1] = color;
		          }
		          else if (x*x+y*y > (radius-7)*(radius-7)){
		        	  image_buffer_pointer[(x1<<10)+(x1<<8)+(x<<10)+(x<<8)+y+y1] = (int)0x00000000;
		          }


			//draw the black semi-circle above the circle to clear screen
		  int counter = 0;
		  while(counter <=15){
				float n=0,invradius=1/(float)radius;
				int dx=0,dy=radius-1;
				int dxoffset,dyoffset,offset=(x1<<10)+(x1<<8)+y1;
				  while (dx<=dy)
				  {
				    dxoffset = (dx<<10) + (dx<<8);
				    dyoffset = (dy<<10) + (dy<<8);
				    image_buffer_pointer[offset+dy-dxoffset] = (int)0x00000000;  /* octant 0 */
				    image_buffer_pointer[offset+dx-dyoffset] = (int)0x00000000;  /* octant 1 */
				    image_buffer_pointer[offset-dx-dyoffset] = (int)0x00000000;  /* octant 2 */
				    image_buffer_pointer[offset-dy-dxoffset] = (int)0x00000000;  /* octant 3 */
				    dx++;
				    n+=invradius;
				    dy=radius * sin(acos(n));
				  }
				 counter++;
		  }

}






// Triangle function implementation
void Shape::draw_line(int x1,int x2,int y1,int y2, int color){

	  int i,dx,dy,sdx,sdy,dxabs,dyabs,x,y,px,py;

	  dx=x2-x1;      /* the horizontal distance of the line */
	  dy=y2-y1;      /* the vertical distance of the line */
	  dxabs=abs(dx);
	  dyabs=abs(dy);
	  // helper functions below

	  if (dx > 0) sdx = 1;
	  if (dx < 0) sdx= -1;
	  if (dy > 0) sdy = 1;
	  if (dy < 0) sdy= -1;

	  x=dyabs>>1;
	  y=dxabs>>1;
	  px=x1;
	  py=y1;

	  image_buffer_pointer[(py<<10)+(py<<8)+px]=color;

	  if (dxabs>=dyabs) /* the line is more horizontal than vertical */
	  {
	    for(i=0;i<dxabs;i++)
	    {
	      y+=dyabs;
	      if (y>=dxabs)
	      {
	        y-=dxabs;
	        py+=sdy;
	      }
	      px+=sdx;
//	      plot_pixel(px,py,color);
	      image_buffer_pointer[(py<<10)+(py<<8)+px]=color;
	    }
	  }
	  else /* the line is more vertical than horizontal */
	  {
	    for(i=0;i<dyabs;i++)
	    {
	      x+=dxabs;
	      if (x>=dyabs)
	      {
	        x-=dyabs;
	        px+=sdx;
	      }
	      py+=sdy;
	      image_buffer_pointer[(py<<10)+(py<<8)+px]=color;
	    }
	  }
}
//this will be a equilateral triangle with x1,y1 describing the midpoint of the triangle
void Triangle::draw_Triangle(int x1, int y1,int color){

//	draw_line(400, 450, 500, 400, color);
//	draw_line(450, 500, 400, 500, color);
//	draw_line(400, 500, 500, 500, color);

//		draw_line(x1-50, x1   , y1+50, y1-50, color);
//		draw_line(x1   , x1+50, y1-50, y1+50, color);
//		draw_line(x1-50, x1+50, y1+50, y1+50, color);

		for(int ii=0;ii<=50;ii++){

			if(ii<=25){
				// we need the background color here so that it's easier
				draw_line(x1-50+ii, x1   , y1+50-ii, y1-50+ii, (int)0x00000000); //left side
				draw_line(x1   , x1+50-ii, y1-50+ii, y1+50-ii, (int)0x00000000); //right side
				draw_line(x1-50+ii, x1+50-ii, y1+50-ii, y1+50-ii, (int)0x00000000); //middle side
			}
			else{
				draw_line(x1-50+ii, x1   , y1+50-ii, y1-50+ii, color); //left side
				draw_line(x1   , x1+50-ii, y1-50+ii, y1+50-ii, color); //right side
				draw_line(x1-50+ii, x1+50-ii, y1+50-ii, y1+50-ii, color); //middle side
			}

		}
}





//this functions requires the midpoint of the pentagon
//pentagon with a sidelength of 80 will have an apothem of 55
void Pentagon::draw_Pentagon(int x1, int y1,int color){

//	draw_line(x1-25, x1+25, y1+43, y1+43, color); //bottom
//	draw_line(x1+25, x1+50, y1+43, y1, color); //bottom right
//	draw_line(x1-50, x1-25, y1, y1+43, color); //bottom left
//	draw_line(x1, x1+50, y1-43, y1, color); //top right
//	draw_line(x1-50, x1, y1, y1-43, color); //top left

	// implementation 1

//	for(int ii=0;ii<=25;ii++){
//		if(ii<=10){
//			draw_line(x1-25+ii, x1+25-ii, y1+43-ii, y1+43-ii, int(0x00000000)); //bottom
//			draw_line(x1+25-ii, x1+50-ii, y1+43-ii, y1,  int(0x00000000)); //bottom right
//			draw_line(x1-50+ii, x1-25+ii, y1, y1+43-ii,  int(0x00000000)); //bottom left
//			draw_line(x1, x1+50-ii, y1-43+ii, y1,  int(0x00000000)); //top right
//			draw_line(x1-50+ii, x1, y1, y1-43+ii,  int(0x00000000)); //top left
//		}
//		else{
//			draw_line(x1-25+ii, x1+25-ii, y1+43-ii, y1+43-ii, color); //bottom
//			draw_line(x1+25-ii, x1+50-ii, y1+43-ii, y1, color); //bottom right
//			draw_line(x1-50+ii, x1-25+ii, y1, y1+43-ii, color); //bottom left
//			draw_line(x1, x1+50-ii, y1-43+ii, y1, color); //top right
//			draw_line(x1-50+ii, x1, y1, y1-43+ii, color); //top left
//		}
//	}
//	for(int ii=0;ii<=18;ii++){
//			draw_line(x1, x1, y1+18-ii, y1+18-ii, color); //bottom
//			draw_line(x1, x1+25-ii, y1+18-ii, y1, color); //bottom right
//			draw_line(x1-25+ii, x1, y1, y1+18-ii, color); //bottom left
//			draw_line(x1, x1+25-ii, y1-18+ii, y1, color); //top right
//			draw_line(x1-25+ii, x1, y1, y1-18+ii, color); //top left
//	}

// implementation 2

	// draw the outer sides of the pentagon
	// fill the pentagon with horizontal lines

//	draw_line(x1+ii, x1+10+50+ii, y1-43, y1, (int)0x00000000); //top right
//	draw_line(x1-10-50-ii, x1-ii, y1, y1-43, (int)0x00000000); //top left
//	draw_line(x1-25, x1+25, y1+43, y1+43, color); //bottom
//	draw_line(x1+25, x1+50, y1+43, y1,  color); //bottom right
//	draw_line(x1-50, x1-25, y1, y1+43,  color); //bottom left

	// 12bit color , 8 bit for shape id


		for(int ii=0; ii<=10;ii++){
			draw_line(x1-20, x1+50, y1-70-ii, y1-1-ii, (int)0x00000000); //top right
			draw_line(x1-50, x1+20, y1-1-ii, y1-70-ii, (int)0x00000000); //top left

//			draw_line(x1-20, x1+20, y1-43-ii, y1-43-ii, (int)0x00000000); //top middle

		}

	//	//middle to top of the shape (triangle
	for(int ii=0; ii<=50;ii++){
		draw_line(x1-50+ii, x1+50-ii, y1-ii, y1-ii, color); //
	}
	// middle to bottom (trapezoid shape)
	for(int ii=0; ii<=43;ii++){
		draw_line(x1-25, x1+25, y1+ii, y1+ii, color); //
	}
	for(int ii=0; ii<=23;ii++){
		draw_line(x1+25-ii, x1+50-ii, y1+43, y1,  color); //bottom right
		draw_line(x1-50+ii, x1-25+ii, y1, y1+43,  color); //bottom left
	}



}



// Bin implementation
void Bins::draw_Bin(int x, int y1,int y2, int frequency_range, int color){
	int * image_buffer_pointer = (int *)0x00900000;
	//
	//		for(int jj = 0; jj<2;jj++){ // for making sure there's no image artifacts
	//			for(int y = 500; y<700 ; y++){
	//				for(int x = 0; x< x1 ;x++){
	//					image_buffer_pointer[(y)+(x<<10)]=color;
	//				}
	//			}
	//		}

			for(int jj = 0; jj<2;jj++){
				for(int y= y1; y<=y2; y++){
					for(int x=924; x<=924+700; x++){ // predefined height
						image_buffer_pointer[(y)+(x<<10)+(x<<8)]=color; //image_buffer_pointer[(y)+(x<<10)+(x<<8)]=color;
					}
				}
			}

}





// Sound effect name implement
void Sound_effects_name::draw_sound_effects_name(int x, int y){


	// Invert
		draw_line(1000, 1000,  50 , 100 , (int)0xFFFFFFFF); // I

		draw_line(1020, 1020, 50, 100, (int)0xFFFFFFFF);     //N
		draw_line(1020, 1040, 50, 100, (int)0xFFFFFFFF);
		draw_line(1040, 1040, 50, 100, (int)0xFFFFFFFF);

		draw_line(1050, 1070, 60, 100, (int)0xFFFFFFFF);   // V
		draw_line(1070, 1090, 100, 60, (int)0xFFFFFFFF);

		draw_line(1090, 1090,  50 , 100 , (int)0xFFFFFFFF); // E
		draw_line(1090, 1100, 50, 50, (int)0xFFFFFFFF);
		draw_line(1090, 1100, 75, 75, (int)0xFFFFFFFF);
		draw_line(1090, 1100, 100, 100, (int)0xFFFFFFFF);

		draw_line(1110, 1110,  50 , 100 , (int)0xFFFFFFFF); // R
		draw_line(1110, 1130, 50, 50, (int)0xFFFFFFFF);
		draw_line(1130, 1130, 50, 75, (int)0xFFFFFFFF);
		draw_line(1110, 1130, 75, 75, (int)0xFFFFFFFF);
		draw_line(1110, 1130, 75, 100, (int)0xFFFFFFFF);


		draw_line(1150, 1150,  50 , 100 , (int)0xFFFFFFFF);// T
		draw_line(1140, 1160, 50, 50, (int)0xFFFFFFFF);


		//pulse
		draw_line(1000, 1000,  120 , 170 , (int)0xFFFFFFFF); // P
		draw_line(1000, 1020, 120, 120, (int)0xFFFFFFFF);
		draw_line(1020, 1020, 120, 145, (int)0xFFFFFFFF);
		draw_line(1020, 1000, 145, 145, (int)0xFFFFFFFF);

		draw_line(1030, 1030,  120 , 170 , (int)0xFFFFFFFF);// U
		draw_line(1030, 1050, 170, 170, (int)0xFFFFFFFF);
		draw_line(1050, 1050,  120 , 170 , (int)0xFFFFFFFF);

		draw_line(1060, 1060,  120 , 170 , (int)0xFFFFFFFF);// L
		draw_line(1060, 1080,  170 , 170 , (int)0xFFFFFFFF);

		draw_line(1090, 1110,  120 , 120 , (int)0xFFFFFFFF);//S
		draw_line(1090, 1090, 120, 145, (int)0xFFFFFFFF);
		draw_line(1090, 1110, 145, 145, (int)0xFFFFFFFF);
		draw_line(1110, 1110, 145, 170, (int)0xFFFFFFFF);
		draw_line(1090, 1110, 170, 170, (int)0xFFFFFFFF);

		draw_line(1090+40, 1090+40,  50+70, 100+70 , (int)0xFFFFFFFF);//E
		draw_line(1090+40, 1100+40, 50+70, 50+70, (int)0xFFFFFFFF);
		draw_line(1090+40, 1100+40, 75+70, 75+70, (int)0xFFFFFFFF);
		draw_line(1090+40, 1100+40, 100+70, 100+70, (int)0xFFFFFFFF);


		//noise
		draw_line(1020-20, 1020-20, 50+130, 100+130, (int)0xFFFFFFFF);     //N
		draw_line(1020-20, 1040-20, 50+130, 100+130, (int)0xFFFFFFFF);
		draw_line(1040-20, 1040-20, 50+130, 100+130, (int)0xFFFFFFFF);

		draw_line(1030, 1050,  120+60 , 120+60 , (int)0xFFFFFFFF); // O
		draw_line(1030, 1030,  120+60 , 170+60 , (int)0xFFFFFFFF);
		draw_line(1030, 1050, 170+60, 170+60, (int)0xFFFFFFFF);
		draw_line(1050, 1050,  120 +60, 170+60 , (int)0xFFFFFFFF);

		draw_line(1080, 1080,  180 , 230 , (int)0xFFFFFFFF); // I

		draw_line(1090, 1110,  120+60 , 120+60 , (int)0xFFFFFFFF);//S
		draw_line(1090, 1090, 120+60, 145+60, (int)0xFFFFFFFF);
		draw_line(1090, 1110, 145+60, 145+60, (int)0xFFFFFFFF);
		draw_line(1110, 1110, 145+60, 170+60, (int)0xFFFFFFFF);
		draw_line(1090, 1110, 170+60, 170+60, (int)0xFFFFFFFF);


		draw_line(1090+40, 1090+40,  50+70+60, 100+70+60 , (int)0xFFFFFFFF);//E
		draw_line(1090+40, 1100+40, 50+70+60, 50+70+60, (int)0xFFFFFFFF);
		draw_line(1090+40, 1100+40, 75+70+60, 75+70+60, (int)0xFFFFFFFF);
		draw_line(1090+40, 1100+40, 100+70+60, 100+70+60, (int)0xFFFFFFFF);



		// Light pattern modes

		//Standard
		//

}


//input param: mode_num will control which name to display on the background
// this operation will be called once then and then become static background
// mode_num = 1 standard mode
// mode_num = 2 rotation mode
// mode_num = 3 random mode
// mode_num = 4 elongated mode

void Sound_effects_name::display_light_pattern_mode(int mode_num){


	// draw a black rectangle to reset the region of the screen
	// then set the letters

	//Standard
	if(mode_num == 1){

		draw_line(1000, 1020,  120+60+60, 120+60 +60, (int)0xFFFFFFFF);//S
		draw_line(1000, 1000, 120+60+60, 145+60+60, (int)0xFFFFFFFF);
		draw_line(1000, 1020, 145+60+60, 145+60+60, (int)0xFFFFFFFF);
		draw_line(1020, 1020, 145+60+60, 170+60+60, (int)0xFFFFFFFF);
		draw_line(1000, 1020, 170+60+60, 170+60+60, (int)0xFFFFFFFF);

		draw_line(1040, 1040,  240 , 290 , (int)0xFFFFFFFF);// T
		draw_line(1030, 1050, 240, 240, (int)0xFFFFFFFF);

		draw_line(1060, 1070, 290, 240, (int)0xFFFFFFFF); //A
		draw_line(1070, 1080, 240, 290, (int)0xFFFFFFFF);
		draw_line(1065, 1075 , 265, 265, (int)0xFFFFFFFF);

		draw_line(1090, 1090, 240, 290, (int)0xFFFFFFFF);     //N
		draw_line(1090, 1110, 240, 290, (int)0xFFFFFFFF);
		draw_line(1110, 1110, 240, 290, (int)0xFFFFFFFF);

		draw_line(1120, 1120, 240, 290, (int)0xFFFFFFFF);  //D
		draw_line(1120, 1140, 240, 250, (int)0xFFFFFFFF);
		draw_line(1120, 1140, 290, 280, (int)0xFFFFFFFF);
		draw_line(1140, 1140, 250, 280, (int)0xFFFFFFFF);

		draw_line(1060+90, 1070+90, 290, 240, (int)0xFFFFFFFF); //A
		draw_line(1070+90, 1080+90, 240, 290, (int)0xFFFFFFFF);
		draw_line(1065+90, 1075+90 , 265, 265, (int)0xFFFFFFFF);

		draw_line(1170+10, 1170+10,  240 , 290 , (int)0xFFFFFFFF); // R
		draw_line(1170+10, 1190+10, 240, 240, (int)0xFFFFFFFF);
		draw_line(1190+10, 1190+10, 240, 265, (int)0xFFFFFFFF);
		draw_line(1170+10, 1190+10, 265, 265, (int)0xFFFFFFFF);
		draw_line(1170+10, 1190+10, 265, 290, (int)0xFFFFFFFF);

		draw_line(1210, 1210, 240, 290, (int)0xFFFFFFFF);  //D
		draw_line(1210, 1230, 240, 250, (int)0xFFFFFFFF);
		draw_line(1210, 1230, 290, 280, (int)0xFFFFFFFF);
		draw_line(1230, 1230, 250, 280, (int)0xFFFFFFFF);

	}
	//rotation mode
	else if(mode_num == 2){

		draw_line(1000, 1000,  240 , 290 , (int)0xFFFFFFFF); // R
		draw_line(1000, 1020, 240, 240, (int)0xFFFFFFFF);
		draw_line(1020,1020, 240, 265, (int)0xFFFFFFFF);
		draw_line(1000, 1020, 265, 265, (int)0xFFFFFFFF);
		draw_line(1000, 1020, 265, 290, (int)0xFFFFFFFF);

		draw_line(1030, 1050, 240 , 240 , (int)0xFFFFFFFF); // O
		draw_line(1030, 1030,  240 , 290 , (int)0xFFFFFFFF);
		draw_line(1030, 1050, 290, 290, (int)0xFFFFFFFF);
		draw_line(1050, 1050, 240, 290 , (int)0xFFFFFFFF);

		draw_line(1070, 1070,  240 , 290 , (int)0xFFFFFFFF);// T
		draw_line(1060, 1080, 240, 240, (int)0xFFFFFFFF);

		draw_line(1090, 1100, 290, 240, (int)0xFFFFFFFF); //A
		draw_line(1100, 1110, 240, 290, (int)0xFFFFFFFF);
		draw_line(1095, 1105 , 265, 265, (int)0xFFFFFFFF);

		draw_line(1125, 1125,  240 , 290 , (int)0xFFFFFFFF);// T
		draw_line(1115, 1135, 240, 240, (int)0xFFFFFFFF);

		draw_line(1090+40+20, 1090+40+20,  50+70+60+60, 100+70+60+60 , (int)0xFFFFFFFF);//E
		draw_line(1090+40+20, 1100+40+20, 50+70+60+60, 50+70+60+60, (int)0xFFFFFFFF);
		draw_line(1090+40+20, 1100+40+20, 75+70+60+60, 75+70+60+60, (int)0xFFFFFFFF);
		draw_line(1090+40+20, 1100+40+20, 100+70+60+60, 100+70+60+60, (int)0xFFFFFFFF);


	}
	//random mode
	else if(mode_num == 3){
		draw_line(1000, 1000,  240 , 290 , (int)0xFFFFFFFF); // R
		draw_line(1000, 1020, 240, 240, (int)0xFFFFFFFF);
		draw_line(1020,1020, 240, 265, (int)0xFFFFFFFF);
		draw_line(1000, 1020, 265, 265, (int)0xFFFFFFFF);
		draw_line(1000, 1020, 265, 290, (int)0xFFFFFFFF);

		draw_line(1030, 1040, 290, 240, (int)0xFFFFFFFF); //A
		draw_line(1040, 1050, 240, 290, (int)0xFFFFFFFF);
		draw_line(1035, 1045 , 265, 265, (int)0xFFFFFFFF);

		draw_line(1060, 1060, 240, 290, (int)0xFFFFFFFF); //N
		draw_line(1060, 1080, 240, 290, (int)0xFFFFFFFF);
		draw_line(1080, 1080, 240, 290, (int)0xFFFFFFFF);

		draw_line(1090, 1090, 240, 290, (int)0xFFFFFFFF);  //D
		draw_line(1090, 1110, 240, 250, (int)0xFFFFFFFF);
		draw_line(1090, 1110, 290, 280, (int)0xFFFFFFFF);
		draw_line(1110, 1110, 250, 280, (int)0xFFFFFFFF);

		draw_line(1120, 1140, 240 , 240 , (int)0xFFFFFFFF); // O
		draw_line(1120, 1120,  240 , 290 , (int)0xFFFFFFFF);
		draw_line(1120, 1140, 290, 290, (int)0xFFFFFFFF);
		draw_line(1140, 1140, 240, 290 , (int)0xFFFFFFFF);



		// work on this
		draw_line(1150, 1150, 240 , 290 , (int)0xFFFFFFFF); // M
		draw_line(1150, 1160, 240 , 260 , (int)0xFFFFFFFF);
		draw_line(1160, 1170, 260, 240, (int)0xFFFFFFFF);
		draw_line(1170, 1170, 240, 290 , (int)0xFFFFFFFF);


		}
	//elongated shapes mode
	else{
		draw_line(1000, 1000, 240, 290 , (int)0xFFFFFFFF);//E
		draw_line(1000, 1020, 240, 240, (int)0xFFFFFFFF);
		draw_line(1000, 1020, 265, 265, (int)0xFFFFFFFF);
		draw_line(1000, 1020, 290, 290, (int)0xFFFFFFFF);

		draw_line(1030, 1030, 240, 290 , (int)0xFFFFFFFF); //L
		draw_line(1030, 1050, 290, 290 , (int)0xFFFFFFFF);

		draw_line(1060, 1080, 240 , 240 , (int)0xFFFFFFFF); // O
		draw_line(1060, 1060,  240 , 290 , (int)0xFFFFFFFF);
		draw_line(1060, 1080, 290, 290, (int)0xFFFFFFFF);
		draw_line(1080, 1080, 240, 290 , (int)0xFFFFFFFF);

		draw_line(1090, 1110, 240, 240 , (int)0xFFFFFFFF);	// G
		draw_line(1090, 1090, 240, 290 , (int)0xFFFFFFFF);
		draw_line(1090, 1110, 290, 290 , (int)0xFFFFFFFF);
		draw_line(1110, 1110, 270, 290 , (int)0xFFFFFFFF);
		draw_line(1100, 1110, 270, 270 , (int)0xFFFFFFFF);

		draw_line(1120, 1130, 290, 240, (int)0xFFFFFFFF); //A
		draw_line(1130, 1140, 240, 290, (int)0xFFFFFFFF);
		draw_line(1125, 1135 , 265, 265, (int)0xFFFFFFFF);

		draw_line(1070+75+10, 1070+75+10,  240 , 290 , (int)0xFFFFFFFF);// T
		draw_line(1060+75+10, 1080+75+10, 240, 240, (int)0xFFFFFFFF);

		draw_line(1000+175, 1000+175, 240, 290 , (int)0xFFFFFFFF);//E
		draw_line(1000+175, 1020+175, 240, 240, (int)0xFFFFFFFF);
		draw_line(1000+175, 1020+175, 265, 265, (int)0xFFFFFFFF);
		draw_line(1000+175, 1020+175, 290, 290, (int)0xFFFFFFFF);

		}

}




// background_mode = 1 standard mode  = black
// background_mode = 2 rotation mode  = blue
// background_mode= 3 random mode     = orange and pink
// background_mode = 4 elongated mode = purple
void Background::set_background(int background_mode){

	if (background_mode == 1){
		int color=0x00000000;
		int * image_buffer_pointer = (int *)0x00900000;
		int iterator = 0;
		int counter = 0;
		for(int i = 0; i < 5; i++){
			while(iterator <= NUM_BYTES_BUFFER){
				image_buffer_pointer[counter] = color;
				counter++;
				iterator += 2;
			}
		}

	}
	else if(background_mode == 2){
		int color=0x03333333;
		int * image_buffer_pointer = (int *)0x00900000;
		int iterator = 0;
		int counter = 0;
		for(int i = 0; i < 5; i++){
			while(iterator <= NUM_BYTES_BUFFER){
				image_buffer_pointer[counter] = color;
				counter++;
				iterator += 2;
			}
		}
	}
	else if(background_mode == 3){
		int color=0xAAAAAAAA;
				int * image_buffer_pointer = (int *)0x00900000;
				int iterator = 0;
				int counter = 0;
				for(int i = 0; i < 5; i++){
					while(iterator <= NUM_BYTES_BUFFER){
						image_buffer_pointer[counter] = color;
						counter++;
						iterator += 2;
					}
				}
	}
	else{
		int color=0xA5A5A55A;
				int * image_buffer_pointer = (int *)0x00900000;
				int iterator = 0;
				int counter = 0;
				for(int i = 0; i < 5; i++){
					while(iterator <= NUM_BYTES_BUFFER){
						image_buffer_pointer[counter] = color;
						counter++;
						iterator += 2;
					}
				}
	}

}

















