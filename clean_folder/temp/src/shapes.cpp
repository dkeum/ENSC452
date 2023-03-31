#include <iostream>
#include "math.h"

#include "shape_params.hpp"



using namespace std;


// GLOBAL VARIABLE
int bin_height_limit = 922;

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


void Square::draw_Square(int x1,int y1, int size, int color){

	int length;
	if(size==1){
		length = 8;
	}
	else if(size==2){
		length = 10;
		}
	else if(size==3){
		length = 14;
			}
	else if(size==4){
		length = 18;
			}
	else if(size==5){
		length = 23;
			}
	else if(size==6){
		length = 26;
			}
	else if(size==7){
		length = 29;
			}
	else if(size==8){
		length = 31;
			}



	int * image_buffer_pointer = (int *)0x00900000;

				for(int y = y1; y<=y1+length; y++){
					for(int x=x1; x<=x1+length+5; x++){

							if(x >= x1+10){
							image_buffer_pointer[(y)+(x<<10)+(x<<8)]=color;
							}
							else{
								image_buffer_pointer[(y)+(x<<10)+(x<<8)]=(int)0x00000000;
							}
					}
				}




}


void Square::draw_Square_rotation(int x1,int y1, int size, int color, double rotation){

	int length;
	double angle; // used for rotation
	int adjustment =15;
		if(size==1){
			length = 10+adjustment;
		}
		else if(size==2){
			length = 12+adjustment;
			}
		else if(size==3){
			length = 16+adjustment;
				}
		else if(size==4){
			length = 20+adjustment;
				}
		else if(size==5){
			length = 26+adjustment;
				}
		else if(size==6){
			length = 29+adjustment;
				}
		else if(size==7){
			length = 32+adjustment;
				}
		else if(size==8){
			length = 41+adjustment;
		}

		angle = rotation;

		int * image_buffer_pointer = (int *)0x00900000;

					for(int y = y1; y<=y1+length; y++){
						for(int x=x1; x<=x1+length+5; x++){

								int x_pivot = x1+ (length+5)/2 +1 ;
								int y_pivot = y1+(length)/2 +1;
								int x_shifted= x-x_pivot;
								int y_shifted= y-y_pivot;
								int temp_x = x;
								int temp_y = y;
								temp_x = x_pivot + (x_shifted*cos(angle)-y_shifted*sin(angle));
								temp_y = y_pivot + (x_shifted*sin(angle)+y_shifted*cos(angle));

								if(x > x1+10 && x < x1+length-10 && y > y1+10 && y < y1+length-10){
									image_buffer_pointer[(temp_y)+(temp_x<<10)+(temp_x<<8)]=color;
								}
								else{
									image_buffer_pointer[(temp_y)+(temp_x<<10)+(temp_x<<8)]=0x00000000;
								}
						}
					}

					for (int ii =0 ; ii < 10; ii++){
						draw_line(y1-10,y1+55,x1-ii,x1-ii, (int)0x00000000);
//						draw_line(x1,x1+length+5+40,y1-ii,y1-ii, (int)0xFFFFFFFF);
					}

}


//encompasses all changes from last 3 implementations
//makes sure that colliding is in effect
//shapes do not disrupt bin look
// flexibly choose between rotation, standard
//flexibly choose light pattern_mode background color
int Square::draw_Square_flexible_version(int x1,int y1, int size, int color, double rotation, int background_color, int elongate_on){
	int length;
		double angle; // used for rotation


		int rv = 0;
		angle = rotation;
		int * image_buffer_pointer = (int *)0x00900000;
		int adjustment =10;
			if(size<=1){
				length = 20+adjustment;
			}
			else if(size==2){
				length = 22+adjustment;
				}
			else if(size==3){
				length = 24+adjustment;
					}
			else if(size==4){
				length = 26+adjustment;
					}
			else if(size==5){
				length = 28+adjustment;
					}
			else if(size==6){
				length = 30+adjustment;
					}
			else if(size==7){
				length = 32+adjustment;
					}
			else if(size>=8){
				length = 34+adjustment;
			}



			for(int y = y1; y<=y1+length; y++){
				for(int x=x1; x<=x1+length+5; x++){
					if(rotation != 0){
						int x_pivot = x1+ (length+5)/2 +1 ;
						int y_pivot = y1+(length)/2 +1;
						int x_shifted= x-x_pivot;
						int y_shifted= y-y_pivot;
						int temp_x;
						int temp_y;
						temp_x = x_pivot + (x_shifted*cos(angle)-y_shifted*sin(angle));
						temp_y = y_pivot + (x_shifted*sin(angle)+y_shifted*cos(angle));

						int temp_x2= temp_x;
						int temp_y2= temp_y;
//						usleep(1000);

						// set pixels
						if (temp_x2 <= bin_height_limit){
							if(x > x1+9 && x < x1+length-9 && y > y1+9 && y < y1+length-9){
							image_buffer_pointer[(temp_y2)+(temp_x2<<10)+(temp_x2<<8)]=color;
//								rv =1;
							}
							else{
								if(elongate_on ==0){
									image_buffer_pointer[(temp_y2)+(temp_x2<<10)+(temp_x2<<8)]=background_color;
								}
							}
						}
						if(temp_x2-9 > bin_height_limit){
							rv=1;
						}

					} //rotation != 0
					else{
						if (x <= bin_height_limit){ // setting it below the predefined height of bins
							if(x >= x1+10){
								image_buffer_pointer[(y)+(x<<10)+(x<<8)]=color;
							}
							else{
								if(elongate_on==0){
									image_buffer_pointer[(y)+(x<<10)+(x<<8)]=(int)background_color;
								}
							}
						}
						else if (x >= bin_height_limit){
							rv=1;
						}
					}
				}
			}
			for (int ii =0 ; ii < 20; ii++){
					if(x1-ii <= bin_height_limit){
						if(elongate_on ==0){
							draw_line(y1-10,y1+60,x1-ii,x1-ii, (int)background_color);
						}
					}
			}

			if(rotation != 0){
				for(int ii = y1-20; ii< y1+length+20;ii++){
					fill_method_v2(x1-20, ii ,x1+length+20,color,background_color); //0xFF00FF00 green
				}
			}

			if(x1 >=1100){
				return 0;
			}
			return rv;

}








/// SQUARE FUNCTION IMPLEMENTATION #2 ///
void Square::draw_Square_v2(int x1,int y1, int size, int color){

	int length;
		if(size==1){
			length = 8;
		}
		else if(size==2){
			length = 10;
			}
		else if(size==3){
			length = 14;
				}
		else if(size==4){
			length = 18;
				}
		else if(size==5){
			length = 23;
				}
		else if(size==6){
			length = 26;
				}
		else if(size==7){
			length = 29;
				}
		else if(size==8){
			length = 31;
				}


		int * image_buffer_pointer = (int *)0x00900000;

					for(int y = y1; y<=y1+length; y++){
						for(int x=x1; x<=x1+length+5; x++){
							if(x == x1 || x == x1+length+5 ||y== y1|| y==y1+length){
								image_buffer_pointer[(y)+(x<<10)+(x<<8)]=(int)0x00000000;
							}

							if(x == x1+1 || x == x1+length+5-1 ||y== y1+1|| y==y1+length-1){
								image_buffer_pointer[(y)+(x<<10)+(x<<8)]=color;
							}
						}
					}

		// fill method
		for(int ii = y1-20; ii< y1+length+20;ii++){
			fill_method(x1-20, ii ,x1+length+20,color,0x00000000); //0xFF00FF00 green
		}

	}



void Square::draw_Square_flexible_version_v2(int x1,int y1, int size, int color, double rotation, int background_color){
	int length;
		double angle; // used for rotation
		angle = rotation;
		int * image_buffer_pointer = (int *)0x00900000;
		int adjustment =15;
			if(size==1){
				length = 10+adjustment;
			}
			else if(size==2){
				length = 12+adjustment;
				}
			else if(size==3){
				length = 16+adjustment;
					}
			else if(size==4){
				length = 20+adjustment;
					}
			else if(size==5){
				length = 26+adjustment;
					}
			else if(size==6){
				length = 29+adjustment;
					}
			else if(size==7){
				length = 32+adjustment;
					}
			else if(size==8){
				length = 41+adjustment;
			}



			for(int y = y1; y<=y1+length; y++){
				for(int x=x1; x<=x1+length+5; x++){
					if(rotation != 0){

						if(x == x1 || x == x1+length+5 ||y== y1|| y==y1+length){
							int x_pivot = x1+ (length+5)/2 +1 ;
							int y_pivot = y1+(length)/2 +1;
							int x_shifted= x-x_pivot;
							int y_shifted= y-y_pivot;
							int temp_x = x;
							int temp_y = y;
							temp_x = x_pivot + (x_shifted*cos(angle)-y_shifted*sin(angle));
							temp_y = y_pivot + (x_shifted*sin(angle)+y_shifted*cos(angle));
							// set pixels
							if (temp_x <= bin_height_limit){
								if(x == x1 || x == x1+length+5 || y == y1 || y == y1+length){
									image_buffer_pointer[(temp_y)+(temp_x<<10)+(temp_x<<8)]=color;
								}
								if(x == x1-1 || x == x1+length+5-1 || y == y1-1 || y == y1+length-1){
									image_buffer_pointer[(temp_y)+(temp_x<<10)+(temp_x<<8)]=color;
								}
							}
						}


					} //rotation != 0
					else{
						if (x <= bin_height_limit){ // setting it below the predefined height of bins
							if(x == x1 || x == x1+length+5 ||y== y1|| y==y1+length){
								image_buffer_pointer[(y)+(x<<10)+(x<<8)]=color;
							}


						}
					}
				}
			}


			sleep(5);
			// fill method
			for(int ii = y1-20; ii< y1+length+20;ii++){
				fill_method(x1-20, ii ,x1+length+20,color,0xFF00FF00); //0xFF00FF00 green
			}


}









// Circle function implementation
/*
 * x1 and y1 control location on the screen
 * size is a param that is from 1-8, 1 is the smallest size and 8 is the largest value
 * */
void Circle::draw_Circle(int x1, int y1,int size,int color){

int radius;

if(size == 1){
	radius = 10;
}
else if(size==2){
	radius = 14;
}
else if(size==3){
	radius = 18;
}
else if(size==4){
	radius = 23;
}
else if(size==5){
	radius = 27;
}
else if(size==6){
	radius = 29;
}
else if(size==7){
	radius = 32;
}
else if(size==8){
	radius = 35;
}

		  // create a filled in circle
		  for(int y=-radius; y<=radius; y++)
		      for(int x=-radius; x<=radius; x++)
		          if(x*x+y*y <= (radius-9)*(radius-9)){
		        	  image_buffer_pointer[(x1<<10)+(x1<<8)+(x<<10)+(x<<8)+y+y1] = color;
		          }
		          else if (x*x+y*y > (radius-9)*(radius-9)){
		        	  image_buffer_pointer[(x1<<10)+(x1<<8)+(x<<10)+(x<<8)+y+y1] = (int)0x00000000;
		          }


//			//draw the black semi-circle above the circle to clear screen
//		  int counter = 0;
//		  while(counter <=16){
//				float n=0,invradius=1/(float)radius;
//				int dx=0,dy=radius-1;
//				int dxoffset,dyoffset,offset=(x1<<10)+(x1<<8)+y1;
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
//				 counter++;
//		  }

}


int Circle::draw_Circle_flexible_version(int x1, int y1,int size,int color,int background_color,int elongate_on){


	int radius;
	int rv =0;

	if(size <= 1){
		radius = 14;
	}
	else if(size==2){
		radius = 16;
	}
	else if(size==3){
		radius = 18;
	}
	else if(size==4){
		radius = 20;
	}
	else if(size==5){
		radius = 24;
	}
	else if(size==6){
		radius = 26;
	}
	else if(size==7){
		radius = 29;
	}
	else if(size>=8){
		radius = 31;
	}

	// create a filled in circle
	for(int y=-radius; y<=radius; y++){
		for(int x=-radius; x<=radius; x++){

			int lefthand_side = x*x+y*y;
			int radius_limit = (radius-9)*(radius-9);

			if( (x+x1) <= bin_height_limit){
				if(lefthand_side <= radius_limit){
					image_buffer_pointer[(x1<<10)+(x1<<8)+(x<<10)+(x<<8)+y+y1] = color;
				}
				else if(lefthand_side > radius_limit){
					if(elongate_on ==0){
						image_buffer_pointer[(x1<<10)+(x1<<8)+(x<<10)+(x<<8)+y+y1] = background_color;
					}
				}
			}
			if ((x+x1)-9 >= bin_height_limit){
				rv =1;
			}
		}
	}

	if(x1+radius >=1100){
		return 0;
	}
	return rv;
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

//	  image_buffer_pointer[(py<<10)+(py<<8)+px]=color;
	  if(py <= bin_height_limit){
	 	    	  image_buffer_pointer[(py<<10)+(py<<8)+px]=color;
	 	}

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
	      if(py <= bin_height_limit){
	    	  image_buffer_pointer[(py<<10)+(py<<8)+px]=color;
	      }
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
//	      image_buffer_pointer[(py<<10)+(py<<8)+px]=color;
	      if(py <= bin_height_limit){
	      	   image_buffer_pointer[(py<<10)+(py<<8)+px]=color;
	      }
	    }
	  }
}


// should be called after the outlines of a shape has been rendered on the screen
void Shape::fill_method(int x1,int y1,int length,int color,int background_color){


	int first_pixel = -1;
	int latest_pixel_found = 0;


	//if we find the color
	// keep filling until we find the last color pixel for that row
	//

	for(int jj = x1+20; jj< length;jj++){
		// find the first and last instance of the pixel color
		int color_to_check = image_buffer_pointer[(jj<<8)+(jj<<10)+y1];

		if(color_to_check == color && first_pixel == -1){
			first_pixel = jj;
		}
		else if(color_to_check== color && first_pixel != -1){
			latest_pixel_found = jj;
		}
		//fill everything in between
	}

	// now we have the first and last pixel
	for(int jj = x1; jj< length;jj++){
			// find the first and last instance of the pixel color
			if (jj >= first_pixel && jj <= latest_pixel_found){
				image_buffer_pointer[(jj<<8)+(jj<<10)+y1]= color;
			}
			else{
				image_buffer_pointer[(jj<<8)+(jj<<10)+y1]= background_color;// background_color
			}
		}





}


// should be called after the outlines of a shape has been rendered on the screen
void Shape::fill_method_v2(int x1,int y1,int length,int color,int background_color){





	//check grid around the pixel

	for(int jj = x1+20; jj< length;jj++){
		// find the first and last instance of the pixel color


		int color_to_check_Tleft = image_buffer_pointer[((jj-1)<<8)+((jj-1)<<10)+(y1-1)];
		int color_to_check_Tcenter = image_buffer_pointer[((jj)<<8)+((jj)<<10)+(y1-1)];
		int color_to_check_Tright = image_buffer_pointer[((jj+1)<<8)+((jj+1)<<10)+(y1-1)];

		int color_to_check_Rcenter = image_buffer_pointer[((jj+1)<<8)+((jj+1)<<10)+y1];
		int color_to_check_Lcenter = image_buffer_pointer[((jj-1)<<8)+((jj-1)<<10)+y1];
		int color_to_check_center = image_buffer_pointer[(jj<<8)+(jj<<10)+y1];

		int color_to_check_Bleft = image_buffer_pointer[((jj-1)<<8)+((jj-1)<<10)+y1+1];
		int color_to_check_Bcenter = image_buffer_pointer[(jj<<8)+(jj<<10)+y1+1];
		int color_to_check_Bright = image_buffer_pointer[((jj+1)<<8)+((jj+1)<<10)+y1+1];


		if(color_to_check_center  != color){
			if(color_to_check_Tleft == color && color_to_check_Tcenter == color &&  color_to_check_Tright == color && color_to_check_Rcenter == color && color_to_check_Lcenter== color && color_to_check_Bleft== color && color_to_check_Bcenter == color && color_to_check_Bright ==color){
				if(y1<= bin_height_limit){
				image_buffer_pointer[(jj<<8)+(jj<<10)+y1] = color;
				}
			}
		}
		else{
			if(color_to_check_Tleft != color && color_to_check_Tcenter != color &&  color_to_check_Tright != color && color_to_check_Rcenter != color && color_to_check_Lcenter!= color && color_to_check_Bleft!= color && color_to_check_Bcenter != color && color_to_check_Bright !=color){
				if(y1<= bin_height_limit){
					image_buffer_pointer[(jj<<8)+(jj<<10)+y1] = background_color;
				}
			}

		}




	}



}



// should be called after the outlines of a shape has been rendered on the screen
void Shape::fill_method_v2_triange_pentagon(int x1,int y1,int length,int color,int background_color){


	int counter =0;


	//check grid around the pixel

	for(int jj = x1+20; jj< length;jj++){
		// find the first and last instance of the pixel color


		int color_to_check_Tleft = image_buffer_pointer[((jj-1)<<8)+((jj-1)<<10)+(y1-1)];
		int color_to_check_Tcenter = image_buffer_pointer[((jj)<<8)+((jj)<<10)+(y1-1)];
		int color_to_check_Tright = image_buffer_pointer[((jj+1)<<8)+((jj+1)<<10)+(y1-1)];

		int color_to_check_Rcenter = image_buffer_pointer[((jj+1)<<8)+((jj+1)<<10)+y1];
		int color_to_check_Lcenter = image_buffer_pointer[((jj-1)<<8)+((jj-1)<<10)+y1];
		int color_to_check_center = image_buffer_pointer[(jj<<8)+(jj<<10)+y1];

		int color_to_check_Bleft = image_buffer_pointer[((jj-1)<<8)+((jj-1)<<10)+y1+1];
		int color_to_check_Bcenter = image_buffer_pointer[(jj<<8)+(jj<<10)+y1+1];
		int color_to_check_Bright = image_buffer_pointer[((jj+1)<<8)+((jj+1)<<10)+y1+1];

		if(color_to_check_Tleft == color ){
			counter++;
		}
		if(color_to_check_Tcenter == color ){
					counter++;
		}
		if(color_to_check_Tright == color ){
					counter++;
				}
		if(color_to_check_Rcenter == color ){
					counter++;
				}
		if(color_to_check_Lcenter == color ){
					counter++;
				}
		if(color_to_check_Bleft == color ){
					counter++;
				}
		if(color_to_check_Bcenter == color ){
					counter++;
				}
		if(color_to_check_Bright == color ){
					counter++;
				}


		if(color_to_check_center  != color){
			if(counter == 8 || counter == 7){
				if(jj <= bin_height_limit){
					image_buffer_pointer[(jj<<8)+(jj<<10)+y1] = background_color;//color;
				}
			}
		}
		else{
			if(counter <=8){
				if(jj <= bin_height_limit){
					image_buffer_pointer[(jj<<8)+(jj<<10)+y1] = background_color; //background_color;
				}

			}
		}
	}
	return;
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


void Triangle::draw_Triangle(int x1, int y1,int size,int color){

	int radius;

	if(size == 1){
		radius = 10;
	}
	else if(size==2){
		radius = 12;
	}
	else if(size==3){
		radius = 16;
	}
	else if(size==4){
		radius = 20;
	}
	else if(size==5){
		radius = 25;
	}
	else if(size==6){
		radius = 28;
	}
	else if(size==7){
		radius = 31;
	}
	else if(size==8){
		radius = 33;
	}


	for(int ii=0;ii<=radius;ii++){
		if(ii<=8){
			// we need the background color here so that it's easier
			draw_line(x1-radius+ii, x1   , y1+radius-ii, y1-radius+ii, (int)0x00000000); //left side
			draw_line(x1   , x1+radius-ii, y1-radius+ii, y1+radius-ii, (int)0x00000000); //right side
			draw_line(x1-radius+ii, x1+radius-ii, y1+radius-ii, y1+radius-ii, (int)0x00000000); //middle side
		}
		else{
			draw_line(x1-radius+ii, x1   , y1+radius-ii, y1-radius+ii, color); //left side
			draw_line(x1   , x1+radius-ii, y1-radius+ii, y1+radius-ii, color); //right side
			draw_line(x1-radius+ii, x1+radius-ii, y1+radius-ii, y1+radius-ii, color); //middle side
		}

	}
}



void Triangle::draw_Triangle(int x1, int y1,int size,int color, double rotation){
	int radius;
	double angle;
	int adjustment = 5;
	if(size == 1){
		radius = 14+adjustment;
	}
	else if(size==2){
		radius = 16+adjustment;
	}
	else if(size==3){
		radius = 18+adjustment;
	}
	else if(size==4){
		radius = 20+adjustment;
	}
	else if(size==5){
		radius = 22+adjustment;
	}
	else if(size==6){
		radius = 24+adjustment;
	}
	else if(size==7){
		radius = 26+adjustment;
	}
	else if(size==8){
		radius = 30+adjustment;
	}


	angle = rotation;


// IMPLEMENTATIon #1
//	for(int ii=0; ii<=radius;ii++){
//		int x_pivot = x1;
//		int y_pivot = y1;
//		int x1_param = x1-radius+ii;
//		int x2_param = x1+radius-ii;
//		int y1_param = y1-ii;
//		int y2_param = y1-ii;
//		int x_shifted_param1= x1_param-x_pivot;
//		int y_shifted_param1= y1_param-y_pivot;
//		int x_shifted_param2= x2_param-x_pivot;
//		int y_shifted_param2= y2_param-y_pivot;
//		int temp_x1 = x_pivot + (x_shifted_param1*cos(angle)-y_shifted_param1*sin(angle));
//		int temp_y1 = y_pivot + (x_shifted_param1*sin(angle)+y_shifted_param1*cos(angle));
//		int temp_x2 = x_pivot + (x_shifted_param2*cos(angle)-y_shifted_param2*sin(angle));
//		int temp_y2 = y_pivot + (x_shifted_param2*sin(angle)+y_shifted_param2*cos(angle));
//
//		if(ii > 10){
//			draw_line(temp_x1, temp_x2, temp_y1, temp_y2, color); //
//		}
//		else{
//			draw_line(temp_x1, temp_x2, temp_y1, temp_y2, 0x00000000); //
//		}
//	}


//// // IMPLEMENTATION #2
//	for(int ii=0;ii<=radius;ii++){
//		int x_pivot = x1;
//		int y_pivot = y1;
//
//		int x1_param = x1-radius+ii;
//		int x2_param =  x1;
//		int x4_param = x1+radius-ii;
//		int x5_param =  x1-radius+ii;
//		int x6_param = x1+radius-ii;
//
//		int y1_param = y1+radius-ii;
//		int y2_param = y1-radius+ii;
//		int y4_param = y1+radius-ii;
//		int y5_param = y1+radius-ii;
//		int y6_param = y1+radius-ii;
//
//		int x_shifted_param1= x1_param-x_pivot;
//		int y_shifted_param1= y1_param-y_pivot;
//
//		int x_shifted_param2= x2_param-x_pivot;
//		int y_shifted_param2= y2_param-y_pivot;
//
//		int x_shifted_param4= x4_param-x_pivot;
//		int y_shifted_param4= y4_param-y_pivot;
//
//		int x_shifted_param5= x5_param-x_pivot;
//		int y_shifted_param5= y5_param-y_pivot;
//
//		int x_shifted_param6= x6_param-x_pivot;
//		int y_shifted_param6= y6_param-y_pivot;
//
//		int temp_x1 = x_pivot + (x_shifted_param1*cos(angle)-y_shifted_param1*sin(angle));
//		int temp_y1 = y_pivot + (x_shifted_param1*sin(angle)+y_shifted_param1*cos(angle));
//
//		int temp_x2 = x_pivot + (x_shifted_param2*cos(angle)-y_shifted_param2*sin(angle));
//		int temp_y2 = y_pivot + (x_shifted_param2*sin(angle)+y_shifted_param2*cos(angle));
//
//		int temp_x3 = temp_x2;
//		int temp_y3 = temp_y2;
//
//		int temp_x4 = x_pivot + (x_shifted_param4*cos(angle)-y_shifted_param4*sin(angle));
//		int temp_y4 = y_pivot + (x_shifted_param4*sin(angle)+y_shifted_param4*cos(angle));
//
//		int temp_x5 = x_pivot + (x_shifted_param5*cos(angle)-y_shifted_param5*sin(angle));
//		int temp_y5 = y_pivot + (x_shifted_param5*sin(angle)+y_shifted_param5*cos(angle));
//
//		int temp_x6 = x_pivot + (x_shifted_param6*cos(angle)-y_shifted_param6*sin(angle));
//		int temp_y6 = y_pivot + (x_shifted_param6*sin(angle)+y_shifted_param6*cos(angle));
//
//
//		if(ii<=adjustment){
//			// we need the background color here so that it's easier
//			draw_line(temp_x1, temp_x2, temp_y1, temp_y2, (int)0x00000000); //left side
//			draw_line(temp_x3    , temp_x4 , temp_y3 , temp_y4 , (int)0x00000000); //right side
//			draw_line(temp_x5 , temp_x6 , temp_y5, temp_y6, (int)0x00000000); //middle side
//		}
//		else{
//			draw_line(temp_x1, temp_x2, temp_y1, temp_y2, color); //left side
//			draw_line(temp_x3    , temp_x4 , temp_y3 , temp_y4 ,  color); //right side
//			draw_line(temp_x5 , temp_x6 , temp_y5, temp_y6,  color); //middle side
//		}
//
//	}




	// // IMPLEMENTATION #2
		for(int ii=0;ii<=radius;ii++){
			int x_pivot = x1;
			int y_pivot = y1;
			int x1_param = x1-radius+ii;
			int x2_param =  x1;
			int x3_param =  x1;
			int x4_param = x1+radius-ii;
			int x5_param =  x1-radius+ii;
			int x6_param = x1+radius-ii;
			int y1_param = y1+radius-ii;
			int y2_param = y1-radius+ii;
			int y3_param = y1-radius+ii;
			int y4_param = y1+radius-ii;
			int y5_param = y1+radius-ii;
			int y6_param = y1+radius-ii;
			int x_shifted_param1= x1_param-x_pivot;
			int y_shifted_param1= y1_param-y_pivot;
			int x_shifted_param2= x2_param-x_pivot;
			int y_shifted_param2= y2_param-y_pivot;
			int x_shifted_param3= x3_param-x_pivot;
			int y_shifted_param3= y3_param-y_pivot;
			int x_shifted_param4= x4_param-x_pivot;
			int y_shifted_param4= y4_param-y_pivot;
			int x_shifted_param5= x5_param-x_pivot;
			int y_shifted_param5= y5_param-y_pivot;
			int x_shifted_param6= x6_param-x_pivot;
			int y_shifted_param6= y6_param-y_pivot;
			int temp_x1 = x_pivot + (x_shifted_param1*cos(angle)-y_shifted_param1*sin(angle));
			int temp_y1 = y_pivot + (x_shifted_param1*sin(angle)+y_shifted_param1*cos(angle));
			int temp_x2 = x_pivot + (x_shifted_param2*cos(angle)-y_shifted_param2*sin(angle));
			int temp_y2 = y_pivot + (x_shifted_param2*sin(angle)+y_shifted_param2*cos(angle));
			int temp_x3 = x_pivot + (x_shifted_param3*cos(angle)-y_shifted_param3*sin(angle));
			int temp_y3 = y_pivot + (x_shifted_param3*sin(angle)+y_shifted_param3*cos(angle));
			int temp_x4 = x_pivot + (x_shifted_param4*cos(angle)-y_shifted_param4*sin(angle));
			int temp_y4 = y_pivot + (x_shifted_param4*sin(angle)+y_shifted_param4*cos(angle));
			int temp_x5 = x_pivot + (x_shifted_param5*cos(angle)-y_shifted_param5*sin(angle));
			int temp_y5 = y_pivot + (x_shifted_param5*sin(angle)+y_shifted_param5*cos(angle));
			int temp_x6 = x_pivot + (x_shifted_param6*cos(angle)-y_shifted_param6*sin(angle));
			int temp_y6 = y_pivot + (x_shifted_param6*sin(angle)+y_shifted_param6*cos(angle));


			// we need the background color here so that it's easier
			draw_line(temp_x1, temp_x2, temp_y1, temp_y2, (int)0xFFFFFFFF); //left side
			draw_line(temp_x3, temp_x4 , temp_y3 , temp_y4 , (int)0xFFFFFFFF); //right side
			draw_line(temp_x5 , temp_x6 , temp_y5, temp_y6, (int)0xFFFFFFFF); //middle side

//				draw_line(temp_x1, temp_x2, temp_y1, temp_y2, (int)0x00000000); //left side 0x00F00F00
//				draw_line(temp_x3, temp_x4 , temp_y3 , temp_y4 , (int)0x00000000); //right side
//				draw_line(temp_x5 , temp_x6 , temp_y5, temp_y6, (int)0x00000000); //middle side


		}








// Clearing the image
		for(int ii =1; ii < 40;ii ++ ){

						int x_pivot = x1;
						int y_pivot = y1;
						int x1_param = x1-radius-ii-7;
						int x2_param =  x1-ii+6;
						int x3_param =  x1+ii-5;
						int x4_param = x1+radius+ii+5;
						int x5_param =  x1-radius-5;
						int x6_param = x1+radius+5;
						int y1_param = y1+radius-5+15;
						int y2_param = y1-radius-11;
						int y3_param = y1-radius-5;
						int y4_param = y1+radius+5;
						int y5_param = y1+radius+ii-5;
						int y6_param = y1+radius+ii-5;
						int x_shifted_param1= x1_param-x_pivot;
						int y_shifted_param1= y1_param-y_pivot;
						int x_shifted_param2= x2_param-x_pivot;
						int y_shifted_param2= y2_param-y_pivot;
						int x_shifted_param3= x3_param-x_pivot;
						int y_shifted_param3= y3_param-y_pivot;
						int x_shifted_param4= x4_param-x_pivot;
						int y_shifted_param4= y4_param-y_pivot;
						int x_shifted_param5= x5_param-x_pivot;
						int y_shifted_param5= y5_param-y_pivot;
						int x_shifted_param6= x6_param-x_pivot;
						int y_shifted_param6= y6_param-y_pivot;
						int temp_x1 = x_pivot + (x_shifted_param1*cos(angle)-y_shifted_param1*sin(angle));
						int temp_y1 = y_pivot + (x_shifted_param1*sin(angle)+y_shifted_param1*cos(angle));
						int temp_x2 = x_pivot + (x_shifted_param2*cos(angle)-y_shifted_param2*sin(angle));
						int temp_y2 = y_pivot + (x_shifted_param2*sin(angle)+y_shifted_param2*cos(angle));
						int temp_x3 = x_pivot + (x_shifted_param3*cos(angle)-y_shifted_param3*sin(angle));
						int temp_y3 = y_pivot + (x_shifted_param3*sin(angle)+y_shifted_param3*cos(angle));
						int temp_x4 = x_pivot + (x_shifted_param4*cos(angle)-y_shifted_param4*sin(angle));
						int temp_y4 = y_pivot + (x_shifted_param4*sin(angle)+y_shifted_param4*cos(angle));
						int temp_x5 = x_pivot + (x_shifted_param5*cos(angle)-y_shifted_param5*sin(angle));
						int temp_y5 = y_pivot + (x_shifted_param5*sin(angle)+y_shifted_param5*cos(angle));
						int temp_x6 = x_pivot + (x_shifted_param6*cos(angle)-y_shifted_param6*sin(angle));
						int temp_y6 = y_pivot + (x_shifted_param6*sin(angle)+y_shifted_param6*cos(angle));

						draw_line(temp_x1, temp_x2, temp_y1, temp_y2, (int)0x00000000 ); //left side 0x00F00F00
						draw_line(temp_x3, temp_x4 , temp_y3 , temp_y4 , (int)0x00000000 ); //right side 0x00000000
						draw_line(temp_x5 , temp_x6 , temp_y5, temp_y6, (int)0x00000000); //middle side

//						draw_line(temp_x1, temp_x2, temp_y1, temp_y2, (int)0x00F00F00 ); //left side 0x00F00F00
//						draw_line(temp_x3, temp_x4 , temp_y3 , temp_y4 , (int)0x00F00F00 ); //right side 0x00000000
//						draw_line(temp_x5 , temp_x6 , temp_y5, temp_y6, (int)0x00F00F00); //middle side

		}


	// clear any pixel residue
	for (int ii =0 ; ii < 10; ii++){
		draw_line(x1-60,x1+60,y1-50-ii,y1-50-ii, (int)0x00000000); //(int)0xF0FF0FFF); purple
		}


}



int Triangle::draw_Triangle_flexible_version(int x1, int y1,int size,int color, double rotation,int background_color,int elongate_on){
	int radius;
		double angle;
		int adjustment = 3;
		int rv =0;
		if(size <= 1){
			radius = 14+adjustment;
		}
		else if(size==2){
			radius = 16+adjustment;
		}
		else if(size==3){
			radius = 18+adjustment;
		}
		else if(size==4){
			radius = 20+adjustment;
		}
		else if(size==5){
			radius = 22+adjustment;
		}
		else if(size==6){
			radius = 24+adjustment;
		}
		else if(size==7){
			radius = 26+adjustment;
		}
		else if(size>=8){
			radius = 30+adjustment;
		}


		angle = rotation;

		if(rotation != 0){
		// // IMPLEMENTATION #2
			for(int ii=0;ii<=radius;ii++){
				int x_pivot = x1;
				int y_pivot = y1;
				int x1_param = x1-radius+ii;
				int x2_param =  x1;
				int x3_param =  x1;
				int x4_param = x1+radius-ii;
				int x5_param =  x1-radius+ii;
				int x6_param = x1+radius-ii;
				int y1_param = y1+radius-ii;
				int y2_param = y1-radius+ii;
				int y3_param = y1-radius+ii;
				int y4_param = y1+radius-ii;
				int y5_param = y1+radius-ii;
				int y6_param = y1+radius-ii;
				int x_shifted_param1= x1_param-x_pivot;
				int y_shifted_param1= y1_param-y_pivot;
				int x_shifted_param2= x2_param-x_pivot;
				int y_shifted_param2= y2_param-y_pivot;
				int x_shifted_param3= x3_param-x_pivot;
				int y_shifted_param3= y3_param-y_pivot;
				int x_shifted_param4= x4_param-x_pivot;
				int y_shifted_param4= y4_param-y_pivot;
				int x_shifted_param5= x5_param-x_pivot;
				int y_shifted_param5= y5_param-y_pivot;
				int x_shifted_param6= x6_param-x_pivot;
				int y_shifted_param6= y6_param-y_pivot;
				int temp_x1 = x_pivot + (x_shifted_param1*cos(angle)-y_shifted_param1*sin(angle));
				int temp_y1 = y_pivot + (x_shifted_param1*sin(angle)+y_shifted_param1*cos(angle));
				int temp_x2 = x_pivot + (x_shifted_param2*cos(angle)-y_shifted_param2*sin(angle));
				int temp_y2 = y_pivot + (x_shifted_param2*sin(angle)+y_shifted_param2*cos(angle));
				int temp_x3 = x_pivot + (x_shifted_param3*cos(angle)-y_shifted_param3*sin(angle));
				int temp_y3 = y_pivot + (x_shifted_param3*sin(angle)+y_shifted_param3*cos(angle));
				int temp_x4 = x_pivot + (x_shifted_param4*cos(angle)-y_shifted_param4*sin(angle));
				int temp_y4 = y_pivot + (x_shifted_param4*sin(angle)+y_shifted_param4*cos(angle));
				int temp_x5 = x_pivot + (x_shifted_param5*cos(angle)-y_shifted_param5*sin(angle));
				int temp_y5 = y_pivot + (x_shifted_param5*sin(angle)+y_shifted_param5*cos(angle));
				int temp_x6 = x_pivot + (x_shifted_param6*cos(angle)-y_shifted_param6*sin(angle));
				int temp_y6 = y_pivot + (x_shifted_param6*sin(angle)+y_shifted_param6*cos(angle));



				if(temp_y1 >= bin_height_limit || temp_y2 >= bin_height_limit || temp_y3 >= bin_height_limit || temp_y4 >= bin_height_limit ||temp_y5 >= bin_height_limit|| temp_y6 >= bin_height_limit){
					rv =1;
				}
				draw_line(temp_x1, temp_x2, temp_y1, temp_y2, color); //left side 0x00F00F00
				draw_line(temp_x3, temp_x4, temp_y3, temp_y4, color); //left side 0x00F00F00
				draw_line(temp_x5, temp_x6, temp_y5, temp_y6, color); //left side 0x00F00F00

			}

			// Clearing the image
			for(int ii =1; ii < 20;ii ++ ){
				int x_pivot = x1;
								int y_pivot = y1;
								int x1_param = x1-radius-ii-7;
								int x2_param =  x1-ii+6;
								int x3_param =  x1+ii-5;
								int x4_param = x1+radius+ii+5;
								int x5_param =  x1-radius-5;
								int x6_param = x1+radius+5;
								int y1_param = y1+radius-5+15;
								int y2_param = y1-radius-11;
								int y3_param = y1-radius-5;
								int y4_param = y1+radius+5;
								int y5_param = y1+radius+ii-5;
								int y6_param = y1+radius+ii-5;
								int x_shifted_param1= x1_param-x_pivot;
								int y_shifted_param1= y1_param-y_pivot;
								int x_shifted_param2= x2_param-x_pivot;
								int y_shifted_param2= y2_param-y_pivot;
								int x_shifted_param3= x3_param-x_pivot;
								int y_shifted_param3= y3_param-y_pivot;
								int x_shifted_param4= x4_param-x_pivot;
								int y_shifted_param4= y4_param-y_pivot;
								int x_shifted_param5= x5_param-x_pivot;
								int y_shifted_param5= y5_param-y_pivot;
								int x_shifted_param6= x6_param-x_pivot;
								int y_shifted_param6= y6_param-y_pivot;
								int temp_x1 = x_pivot + (x_shifted_param1*cos(angle)-y_shifted_param1*sin(angle));
								int temp_y1 = y_pivot + (x_shifted_param1*sin(angle)+y_shifted_param1*cos(angle));
								int temp_x2 = x_pivot + (x_shifted_param2*cos(angle)-y_shifted_param2*sin(angle));
								int temp_y2 = y_pivot + (x_shifted_param2*sin(angle)+y_shifted_param2*cos(angle));
								int temp_x3 = x_pivot + (x_shifted_param3*cos(angle)-y_shifted_param3*sin(angle));
								int temp_y3 = y_pivot + (x_shifted_param3*sin(angle)+y_shifted_param3*cos(angle));
								int temp_x4 = x_pivot + (x_shifted_param4*cos(angle)-y_shifted_param4*sin(angle));
								int temp_y4 = y_pivot + (x_shifted_param4*sin(angle)+y_shifted_param4*cos(angle));
								int temp_x5 = x_pivot + (x_shifted_param5*cos(angle)-y_shifted_param5*sin(angle));
								int temp_y5 = y_pivot + (x_shifted_param5*sin(angle)+y_shifted_param5*cos(angle));
								int temp_x6 = x_pivot + (x_shifted_param6*cos(angle)-y_shifted_param6*sin(angle));
								int temp_y6 = y_pivot + (x_shifted_param6*sin(angle)+y_shifted_param6*cos(angle));

								if(elongate_on==0){
									draw_line(temp_x1, temp_x2, temp_y1, temp_y2, background_color); //left side 0x00F00F00
									draw_line(temp_x3, temp_x4, temp_y3, temp_y4, background_color); //left side 0x00F00F00
									draw_line(temp_x5, temp_x6, temp_y5, temp_y6, background_color); //left side 0x00F00F00
								}
			}
		}// rotation != 0
		else{
			for(int ii=0;ii<=radius;ii++){
				if(ii<=8){

					// we need the background color here so that it's easier
					if(elongate_on==0){
					draw_line(x1-radius+ii, x1   , y1+radius-ii, y1-radius+ii, background_color); //left side
					draw_line(x1   , x1+radius-ii, y1-radius+ii, y1+radius-ii, background_color); //right side
					draw_line(x1-radius+ii, x1+radius-ii, y1+radius-ii, y1+radius-ii, background_color); //middle side
					}
				}
				else{
					// we need the background color here so that it's easier
					draw_line(x1-radius+ii, x1   , y1+radius-ii, y1-radius+ii, color); //left side
					draw_line(x1   , x1+radius-ii, y1-radius+ii, y1+radius-ii,color); //right side
					draw_line(x1-radius+ii, x1+radius-ii, y1+radius-ii, y1+radius-ii, color); //middle side


					if(y1+radius-ii >= bin_height_limit){
						rv =1;
					}
				}
			}
		}

		// clear any pixel residue
		for (int ii =0 ; ii < 20; ii++){
			if(y1-50-ii <= bin_height_limit){
				if(elongate_on==0){
					draw_line(x1-60,x1+60,y1-50-ii,y1-50-ii, background_color); //(int)0xF0FF0FFF); purple
				}
			}
		}


		if(rotation != 0){
			for(int ii = x1-radius-10; ii< x1+radius+20;ii++){
				fill_method_v2_triange_pentagon(y1-radius-40, ii ,y1+radius+40,color,background_color); //0xFF00FF00 green
			}
		}

		if(y1>=1100){
			return 0;
		}
		return rv;
}

//this functions requires the midpoint of the pentagon
//pentagon with a sidelength of 80 will have an apothem of 55
void Pentagon::draw_Pentagon(int x1, int y1,int color){



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


void Pentagon::draw_Pentagon(int x1, int y1,int size,int color){

	int radius;

	if(size == 1){
		radius = 26;
	}
	else if(size==2){
		radius = 32;
	}
	else if(size==3){
		radius = 35;
	}
	else if(size==4){
		radius = 38;
	}
	else if(size==5){
		radius = 42;
	}
	else if(size==6){
		radius = 46;
	}
	else if(size==7){
		radius = 48;
	}
	else if(size==8){
		radius = 50;
	}

	radius = radius-10;
	for(int ii=0; ii<=10;ii++){
		draw_line(x1-(radius/4), x1+radius, y1-(radius*1.2)-ii, y1-1-ii, (int)0x00000000); //top right
		draw_line(x1-(radius), x1+(radius/4), y1-1-ii, y1-(radius*1.2)-ii, (int)0x00000000); //top left

	}


	if(size!=1){

		//	//middle to top of the shape (triangle
		for(int ii=0; ii<=radius;ii++){
			draw_line(x1-radius+ii, x1+radius-ii, y1-ii, y1-ii, color); //
		}
		// middle to bottom (trapezoid shape)
		for(int ii=0; ii<=radius-7;ii++){
			draw_line(x1-(radius/2), x1+(radius/2), y1+ii, y1+ii, color); //
		}
		for(int ii=0; ii<=23;ii++){
			draw_line(x1+(radius/2)-ii, x1+(radius)-ii, y1+(radius-7), y1,  color); //bottom right
			draw_line(x1-radius+ii, x1-(radius/2)+ii, y1, y1+(radius-7),  color); //bottom left
		}
	}
	else{
		//	//middle to top of the shape (triangle
		for(int ii=0; ii<=radius;ii++){
			draw_line(x1-radius+ii, x1+radius-ii, y1-ii, y1-ii, color); //
		}
		// middle to bottom (trapezoid shape)
		for(int ii=0; ii<=radius-7;ii++){
			draw_line(x1-(radius/2), x1+(radius/2), y1+ii, y1+ii, color); //
		}
		for(int ii=0; ii<=8;ii++){
			draw_line(x1+(radius/2)-ii, x1+(radius)-ii, y1+(radius-7), y1,  color); //bottom right
			draw_line(x1-radius+ii, x1-(radius/2)+ii, y1, y1+(radius-7),  color); //bottom left
		}
	}


}



void Pentagon::draw_Pentagon(int x1, int y1,int size,int color,double rotation){


	int radius;
	int adjustment = -10;

		if(size == 1){
			radius = 33+adjustment;
		}
		else if(size==2){
			radius = 34+adjustment;
		}
		else if(size==3){
			radius = 36+adjustment;
		}
		else if(size==4){
			radius = 38+adjustment;
		}
		else if(size==5){
			radius = 42+adjustment;
		}
		else if(size==6){
			radius = 46+adjustment;
		}
		else if(size==7){
			radius = 48+adjustment;
		}
		else if(size==8){
			radius = 50+adjustment;
		}

		double angle = rotation;

		int x_pivot = x1;
		int y_pivot = y1;


		//	//middle to top of the shape (triangle
		for(int ii=0; ii<=radius;ii++){

			int x1_param = x1-radius+ii;
			int x2_param =  x1+radius-ii;
			int y1_param = y1-ii;
			int y2_param = y1-ii;

			int x_shifted_param1= x1_param-x_pivot;
			int y_shifted_param1= y1_param-y_pivot;
			int x_shifted_param2= x2_param-x_pivot;
			int y_shifted_param2= y2_param-y_pivot;

			int temp_x1 = x_pivot + (x_shifted_param1*cos(angle)-y_shifted_param1*sin(angle));
			int temp_y1 = y_pivot + (x_shifted_param1*sin(angle)+y_shifted_param1*cos(angle));
			int temp_x2 = x_pivot + (x_shifted_param2*cos(angle)-y_shifted_param2*sin(angle));
			int temp_y2 = y_pivot + (x_shifted_param2*sin(angle)+y_shifted_param2*cos(angle));

			draw_line(temp_x1, temp_x2, temp_y1, temp_y2, color);
		}

		// middle to bottom (trapezoid shape)
		for(int ii=0; ii<=radius-7;ii++){
			int x1_param = x1-(radius/2);
			int x2_param =  x1+(radius/2);
			int y1_param = y1+ii;
			int y2_param = y1+ii;

			int x_shifted_param1= x1_param-x_pivot;
			int y_shifted_param1= y1_param-y_pivot;
			int x_shifted_param2= x2_param-x_pivot;
			int y_shifted_param2= y2_param-y_pivot;

			int temp_x1 = x_pivot + (x_shifted_param1*cos(angle)-y_shifted_param1*sin(angle));
			int temp_y1 = y_pivot + (x_shifted_param1*sin(angle)+y_shifted_param1*cos(angle));
			int temp_x2 = x_pivot + (x_shifted_param2*cos(angle)-y_shifted_param2*sin(angle));
			int temp_y2 = y_pivot + (x_shifted_param2*sin(angle)+y_shifted_param2*cos(angle));
			draw_line(temp_x1, temp_x2, temp_y1, temp_y2, color);
		}

		if(size ==1 || size ==2 ){
			for(int ii=0; ii<=8;ii++){
						int x1_param = x1+(radius/2)-ii;
						int x2_param = x1+(radius)-ii;
						int x3_param =  x1-radius+ii;
						int x4_param = x1-(radius/2)+ii;
						int y1_param = y1+(radius-7);
						int y2_param =y1;
						int y3_param =  y1;
						int y4_param = y1+(radius-7);
						int x_shifted_param1= x1_param-x_pivot;
						int y_shifted_param1= y1_param-y_pivot;
						int x_shifted_param2= x2_param-x_pivot;
						int y_shifted_param2= y2_param-y_pivot;
						int x_shifted_param3= x3_param-x_pivot;
						int y_shifted_param3= y3_param-y_pivot;
						int x_shifted_param4= x4_param-x_pivot;
						int y_shifted_param4= y4_param-y_pivot;

						int temp_x1 = x_pivot + (x_shifted_param1*cos(angle)-y_shifted_param1*sin(angle));
						int temp_y1 = y_pivot + (x_shifted_param1*sin(angle)+y_shifted_param1*cos(angle));
						int temp_x2 = x_pivot + (x_shifted_param2*cos(angle)-y_shifted_param2*sin(angle));
						int temp_y2 = y_pivot + (x_shifted_param2*sin(angle)+y_shifted_param2*cos(angle));
						int temp_x3 = x_pivot + (x_shifted_param3*cos(angle)-y_shifted_param3*sin(angle));
						int temp_y3 = y_pivot + (x_shifted_param3*sin(angle)+y_shifted_param3*cos(angle));
						int temp_x4 = x_pivot + (x_shifted_param4*cos(angle)-y_shifted_param4*sin(angle));
						int temp_y4 = y_pivot + (x_shifted_param4*sin(angle)+y_shifted_param4*cos(angle));


						draw_line(temp_x1, temp_x2, temp_y1, temp_y2, color); //bottom right
						draw_line(temp_x3, temp_x4, temp_y3, temp_y4, color);//bottom left
					}

		}else{
		for(int ii=0; ii<=23;ii++){
			int x1_param = x1+(radius/2)-ii;
			int x2_param = x1+(radius)-ii;
			int x3_param =  x1-radius+ii;
			int x4_param = x1-(radius/2)+ii;
			int y1_param = y1+(radius-7);
			int y2_param =y1;
			int y3_param =  y1;
			int y4_param = y1+(radius-7);
			int x_shifted_param1= x1_param-x_pivot;
			int y_shifted_param1= y1_param-y_pivot;
			int x_shifted_param2= x2_param-x_pivot;
			int y_shifted_param2= y2_param-y_pivot;
			int x_shifted_param3= x3_param-x_pivot;
			int y_shifted_param3= y3_param-y_pivot;
			int x_shifted_param4= x4_param-x_pivot;
			int y_shifted_param4= y4_param-y_pivot;

			int temp_x1 = x_pivot + (x_shifted_param1*cos(angle)-y_shifted_param1*sin(angle));
			int temp_y1 = y_pivot + (x_shifted_param1*sin(angle)+y_shifted_param1*cos(angle));
			int temp_x2 = x_pivot + (x_shifted_param2*cos(angle)-y_shifted_param2*sin(angle));
			int temp_y2 = y_pivot + (x_shifted_param2*sin(angle)+y_shifted_param2*cos(angle));
			int temp_x3 = x_pivot + (x_shifted_param3*cos(angle)-y_shifted_param3*sin(angle));
			int temp_y3 = y_pivot + (x_shifted_param3*sin(angle)+y_shifted_param3*cos(angle));
			int temp_x4 = x_pivot + (x_shifted_param4*cos(angle)-y_shifted_param4*sin(angle));
			int temp_y4 = y_pivot + (x_shifted_param4*sin(angle)+y_shifted_param4*cos(angle));


			draw_line(temp_x1, temp_x2, temp_y1, temp_y2, color); //bottom right
			draw_line(temp_x3, temp_x4, temp_y3, temp_y4, color);//bottom left
		}
		}


		// Clearing the image
				for(int ii =1; ii < 20;ii ++ ){

								int x_pivot = x1;
								int y_pivot = y1;
								int x1_param = x1-radius-ii-(radius/2 + radius/3);
								int x2_param = x1-ii;
								int x3_param = x1+ii;
								int x4_param = x1+radius+ii+(radius/2 + radius/3);

								int x5_param =  x1-radius-ii; //bottom left
								int x6_param = x1-(radius/2)-ii;
								int x7_param =  x1+radius+ii; //bottom right
								int x8_param = x1+(radius/2)+ii;
								int x9_param = x1-(radius/2); 	// middle
								int x10_param =x1+(radius/2);



								int y1_param = y1+radius-(radius/4);
								int y2_param = y1-radius;
								int y3_param = y1-radius;
								int y4_param = y1+radius-(radius/4);

								int y5_param = y1;
								int y6_param = y1+radius-7;
								int y7_param = y1;
								int y8_param = y1+radius-7;
								int y9_param = y1+radius-7+ii;
								int y10_param =y1+radius-7+ii;

								int x_shifted_param1= x1_param-x_pivot;
								int y_shifted_param1= y1_param-y_pivot;
								int x_shifted_param2= x2_param-x_pivot;
								int y_shifted_param2= y2_param-y_pivot;
								int x_shifted_param3= x3_param-x_pivot;
								int y_shifted_param3= y3_param-y_pivot;
								int x_shifted_param4= x4_param-x_pivot;
								int y_shifted_param4= y4_param-y_pivot;

								int x_shifted_param5= x5_param-x_pivot;
								int y_shifted_param5= y5_param-y_pivot;
								int x_shifted_param6= x6_param-x_pivot;
								int y_shifted_param6= y6_param-y_pivot;
								int x_shifted_param7= x7_param-x_pivot;
								int y_shifted_param7= y7_param-y_pivot;
								int x_shifted_param8= x8_param-x_pivot;
								int y_shifted_param8= y8_param-y_pivot;
								int x_shifted_param9= x9_param-x_pivot;
								int y_shifted_param9= y9_param-y_pivot;
								int x_shifted_param10= x10_param-x_pivot;
								int y_shifted_param10= y10_param-y_pivot;

								int temp_x1 = x_pivot + (x_shifted_param1*cos(angle)-y_shifted_param1*sin(angle));
								int temp_y1 = y_pivot + (x_shifted_param1*sin(angle)+y_shifted_param1*cos(angle));
								int temp_x2 = x_pivot + (x_shifted_param2*cos(angle)-y_shifted_param2*sin(angle));
								int temp_y2 = y_pivot + (x_shifted_param2*sin(angle)+y_shifted_param2*cos(angle));
								int temp_x3 = x_pivot + (x_shifted_param3*cos(angle)-y_shifted_param3*sin(angle));
								int temp_y3 = y_pivot + (x_shifted_param3*sin(angle)+y_shifted_param3*cos(angle));
								int temp_x4 = x_pivot + (x_shifted_param4*cos(angle)-y_shifted_param4*sin(angle));
								int temp_y4 = y_pivot + (x_shifted_param4*sin(angle)+y_shifted_param4*cos(angle));

								int temp_x5 = x_pivot + (x_shifted_param5*cos(angle)-y_shifted_param5*sin(angle));
								int temp_y5 = y_pivot + (x_shifted_param5*sin(angle)+y_shifted_param5*cos(angle));
								int temp_x6 = x_pivot + (x_shifted_param6*cos(angle)-y_shifted_param6*sin(angle));
								int temp_y6 = y_pivot + (x_shifted_param6*sin(angle)+y_shifted_param6*cos(angle));
								int temp_x7 = x_pivot + (x_shifted_param7*cos(angle)-y_shifted_param7*sin(angle));
								int temp_y7 = y_pivot + (x_shifted_param7*sin(angle)+y_shifted_param7*cos(angle));
								int temp_x8 = x_pivot + (x_shifted_param8*cos(angle)-y_shifted_param8*sin(angle));
								int temp_y8 = y_pivot + (x_shifted_param8*sin(angle)+y_shifted_param8*cos(angle));
								int temp_x9 = x_pivot + (x_shifted_param9*cos(angle)-y_shifted_param9*sin(angle));
								int temp_y9 = y_pivot + (x_shifted_param9*sin(angle)+y_shifted_param9*cos(angle));
								int temp_x10 = x_pivot + (x_shifted_param10*cos(angle)-y_shifted_param10*sin(angle));
								int temp_y10 = y_pivot + (x_shifted_param10*sin(angle)+y_shifted_param10*cos(angle));



								draw_line(temp_x1, temp_x2, temp_y1, temp_y2, 0x00000000); //top left side 0x00F00F00
								draw_line(temp_x3, temp_x4 , temp_y3 , temp_y4 , 0x00000000); //top right side 0x00000000
								draw_line(temp_x5, temp_x6 , temp_y5 , temp_y6 ,  0x00000000); // bot left
								draw_line(temp_x7, temp_x8 , temp_y7 , temp_y8 ,  0x00000000 ); // bot right
								draw_line(temp_x9, temp_x10 , temp_y9 , temp_y10 , 0x00000000 ); //bot


				}

		// clear any pixel residue
		for (int ii =0 ; ii < 10; ii++){
			draw_line(x1-60,x1+60,y1-50-ii,y1-50-ii, (int)0x00000000); //(int)0xF0FF0FFF); purple
			}
}





int Pentagon::draw_Pentagon_flexible_version(int x1, int y1,int size,int color,double rotation,int background_color,int elongate_on){

	int rv =0;
	int radius;
	int adjustment = -10;

		if(size <= 1){
			radius = 33+adjustment;
		}
		else if(size==2){
			radius = 34+adjustment;
		}
		else if(size==3){
			radius = 36+adjustment;
		}
		else if(size==4){
			radius = 38+adjustment;
		}
		else if(size==5){
			radius = 42+adjustment;
		}
		else if(size==6){
			radius = 46+adjustment;
		}
		else if(size==7){
			radius = 48+adjustment;
		}
		else if(size>=8){
			radius = 50+adjustment;
		}

		double angle = rotation;

		int x_pivot = x1;
		int y_pivot = y1;

		if(angle != 0){

		//	//middle to top of the shape (triangle
		for(int ii=0; ii<=radius;ii++){

			int x1_param = x1-radius+ii;
			int x2_param =  x1+radius-ii;
			int y1_param = y1-ii;
			int y2_param = y1-ii;

			int x_shifted_param1= x1_param-x_pivot;
			int y_shifted_param1= y1_param-y_pivot;
			int x_shifted_param2= x2_param-x_pivot;
			int y_shifted_param2= y2_param-y_pivot;

			int temp_x1 = x_pivot + (x_shifted_param1*cos(angle)-y_shifted_param1*sin(angle));
			int temp_y1 = y_pivot + (x_shifted_param1*sin(angle)+y_shifted_param1*cos(angle));
			int temp_x2 = x_pivot + (x_shifted_param2*cos(angle)-y_shifted_param2*sin(angle));
			int temp_y2 = y_pivot + (x_shifted_param2*sin(angle)+y_shifted_param2*cos(angle));


			if(temp_y1>=bin_height_limit || temp_y2>=bin_height_limit ){
				rv=1;
			}

			draw_line(temp_x1, temp_x2, temp_y1, temp_y2, color);
		}

		// middle to bottom (trapezoid shape)
		for(int ii=0; ii<=radius-7;ii++){
			int x1_param = x1-(radius/2);
			int x2_param =  x1+(radius/2);
			int y1_param = y1+ii;
			int y2_param = y1+ii;

			int x_shifted_param1= x1_param-x_pivot;
			int y_shifted_param1= y1_param-y_pivot;
			int x_shifted_param2= x2_param-x_pivot;
			int y_shifted_param2= y2_param-y_pivot;

			int temp_x1 = x_pivot + (x_shifted_param1*cos(angle)-y_shifted_param1*sin(angle));
			int temp_y1 = y_pivot + (x_shifted_param1*sin(angle)+y_shifted_param1*cos(angle));
			int temp_x2 = x_pivot + (x_shifted_param2*cos(angle)-y_shifted_param2*sin(angle));
			int temp_y2 = y_pivot + (x_shifted_param2*sin(angle)+y_shifted_param2*cos(angle));

			if(temp_y1>=bin_height_limit || temp_y2>=bin_height_limit ){
							rv=1;
			}
			draw_line(temp_x1, temp_x2, temp_y1, temp_y2, color);
		}

		if(size ==1 || size ==2 ){
			for(int ii=0; ii<=8;ii++){
						int x1_param = x1+(radius/2)-ii;
						int x2_param = x1+(radius)-ii;
						int x3_param =  x1-radius+ii;
						int x4_param = x1-(radius/2)+ii;
						int y1_param = y1+(radius-7);
						int y2_param =y1;
						int y3_param =  y1;
						int y4_param = y1+(radius-7);
						int x_shifted_param1= x1_param-x_pivot;
						int y_shifted_param1= y1_param-y_pivot;
						int x_shifted_param2= x2_param-x_pivot;
						int y_shifted_param2= y2_param-y_pivot;
						int x_shifted_param3= x3_param-x_pivot;
						int y_shifted_param3= y3_param-y_pivot;
						int x_shifted_param4= x4_param-x_pivot;
						int y_shifted_param4= y4_param-y_pivot;

						int temp_x1 = x_pivot + (x_shifted_param1*cos(angle)-y_shifted_param1*sin(angle));
						int temp_y1 = y_pivot + (x_shifted_param1*sin(angle)+y_shifted_param1*cos(angle));
						int temp_x2 = x_pivot + (x_shifted_param2*cos(angle)-y_shifted_param2*sin(angle));
						int temp_y2 = y_pivot + (x_shifted_param2*sin(angle)+y_shifted_param2*cos(angle));
						int temp_x3 = x_pivot + (x_shifted_param3*cos(angle)-y_shifted_param3*sin(angle));
						int temp_y3 = y_pivot + (x_shifted_param3*sin(angle)+y_shifted_param3*cos(angle));
						int temp_x4 = x_pivot + (x_shifted_param4*cos(angle)-y_shifted_param4*sin(angle));
						int temp_y4 = y_pivot + (x_shifted_param4*sin(angle)+y_shifted_param4*cos(angle));


						if(temp_y1>=bin_height_limit || temp_y2>=bin_height_limit  || temp_y3>=bin_height_limit || temp_y4>=bin_height_limit ){
										rv=1;
						}
						draw_line(temp_x1, temp_x2, temp_y1, temp_y2, color); //bottom right
						draw_line(temp_x3, temp_x4, temp_y3, temp_y4, color);//bottom left
					}

		}else{
		for(int ii=0; ii<=23;ii++){
			int x1_param = x1+(radius/2)-ii;
			int x2_param = x1+(radius)-ii;
			int x3_param =  x1-radius+ii;
			int x4_param = x1-(radius/2)+ii;
			int y1_param = y1+(radius-7);
			int y2_param =y1;
			int y3_param =  y1;
			int y4_param = y1+(radius-7);
			int x_shifted_param1= x1_param-x_pivot;
			int y_shifted_param1= y1_param-y_pivot;
			int x_shifted_param2= x2_param-x_pivot;
			int y_shifted_param2= y2_param-y_pivot;
			int x_shifted_param3= x3_param-x_pivot;
			int y_shifted_param3= y3_param-y_pivot;
			int x_shifted_param4= x4_param-x_pivot;
			int y_shifted_param4= y4_param-y_pivot;

			int temp_x1 = x_pivot + (x_shifted_param1*cos(angle)-y_shifted_param1*sin(angle));
			int temp_y1 = y_pivot + (x_shifted_param1*sin(angle)+y_shifted_param1*cos(angle));
			int temp_x2 = x_pivot + (x_shifted_param2*cos(angle)-y_shifted_param2*sin(angle));
			int temp_y2 = y_pivot + (x_shifted_param2*sin(angle)+y_shifted_param2*cos(angle));
			int temp_x3 = x_pivot + (x_shifted_param3*cos(angle)-y_shifted_param3*sin(angle));
			int temp_y3 = y_pivot + (x_shifted_param3*sin(angle)+y_shifted_param3*cos(angle));
			int temp_x4 = x_pivot + (x_shifted_param4*cos(angle)-y_shifted_param4*sin(angle));
			int temp_y4 = y_pivot + (x_shifted_param4*sin(angle)+y_shifted_param4*cos(angle));

			if(temp_y1>=bin_height_limit || temp_y2>=bin_height_limit  || temp_y3>=bin_height_limit || temp_y4>=bin_height_limit ){
													rv=1;
									}
			draw_line(temp_x1, temp_x2, temp_y1, temp_y2, color); //bottom right
			draw_line(temp_x3, temp_x4, temp_y3, temp_y4, color);//bottom left
		}
		}

			// Clearing the image
				for(int ii =0; ii < 14;ii ++ ){

					int x_pivot = x1;
													int y_pivot = y1;
													int x1_param = x1-radius-ii-(radius/5); //top left
													int x2_param = x1-ii;
													int x3_param = x1+ii;				// top right
													int x4_param = x1+radius+ii+(radius/5);

													int x5_param =  x1-radius-ii; //bottom left
													int x6_param = x1-(radius/2)-ii;
													int x7_param =  x1+radius+ii; //bottom right
													int x8_param = x1+(radius/2)+ii;
													int x9_param = x1-(radius/2); 	// middle
													int x10_param =x1+(radius/2);

													int x11_param = x1-(radius/2); 	// middle
													int x12_param =x1+(radius/2);



													int y1_param = y1+(radius/5);
													int y2_param = y1-radius;
													int y3_param = y1-radius;
													int y4_param = y1+(radius/5);

													int y5_param = y1;				///bottom left
													int y6_param = y1+radius-3;
													int y7_param = y1;		//bottom right
													int y8_param = y1+radius-3;
													int y9_param = y1+radius-5+ii; // middle
													int y10_param =y1+radius-5+ii;

													int y11_param = y1-radius-ii; // middle
													int y12_param =y1-radius-ii;

													int x_shifted_param1= x1_param-x_pivot;
													int y_shifted_param1= y1_param-y_pivot;
													int x_shifted_param2= x2_param-x_pivot;
													int y_shifted_param2= y2_param-y_pivot;
													int x_shifted_param3= x3_param-x_pivot;
													int y_shifted_param3= y3_param-y_pivot;
													int x_shifted_param4= x4_param-x_pivot;
													int y_shifted_param4= y4_param-y_pivot;

													int x_shifted_param5= x5_param-x_pivot;
													int y_shifted_param5= y5_param-y_pivot;
													int x_shifted_param6= x6_param-x_pivot;
													int y_shifted_param6= y6_param-y_pivot;
													int x_shifted_param7= x7_param-x_pivot;
													int y_shifted_param7= y7_param-y_pivot;
													int x_shifted_param8= x8_param-x_pivot;
													int y_shifted_param8= y8_param-y_pivot;
													int x_shifted_param9= x9_param-x_pivot;
													int y_shifted_param9= y9_param-y_pivot;
													int x_shifted_param10= x10_param-x_pivot;
													int y_shifted_param10= y10_param-y_pivot;

													int x_shifted_param11= x11_param-x_pivot;
													int y_shifted_param11= y11_param-y_pivot;
													int x_shifted_param12= x12_param-x_pivot;
													int y_shifted_param12= y12_param-y_pivot;

													int temp_x1 = x_pivot + (x_shifted_param1*cos(angle)-y_shifted_param1*sin(angle));
													int temp_y1 = y_pivot + (x_shifted_param1*sin(angle)+y_shifted_param1*cos(angle));
													int temp_x2 = x_pivot + (x_shifted_param2*cos(angle)-y_shifted_param2*sin(angle));
													int temp_y2 = y_pivot + (x_shifted_param2*sin(angle)+y_shifted_param2*cos(angle));
													int temp_x3 = x_pivot + (x_shifted_param3*cos(angle)-y_shifted_param3*sin(angle));
													int temp_y3 = y_pivot + (x_shifted_param3*sin(angle)+y_shifted_param3*cos(angle));
													int temp_x4 = x_pivot + (x_shifted_param4*cos(angle)-y_shifted_param4*sin(angle));
													int temp_y4 = y_pivot + (x_shifted_param4*sin(angle)+y_shifted_param4*cos(angle));

													int temp_x5 = x_pivot + (x_shifted_param5*cos(angle)-y_shifted_param5*sin(angle));
													int temp_y5 = y_pivot + (x_shifted_param5*sin(angle)+y_shifted_param5*cos(angle));
													int temp_x6 = x_pivot + (x_shifted_param6*cos(angle)-y_shifted_param6*sin(angle));
													int temp_y6 = y_pivot + (x_shifted_param6*sin(angle)+y_shifted_param6*cos(angle));
													int temp_x7 = x_pivot + (x_shifted_param7*cos(angle)-y_shifted_param7*sin(angle));
													int temp_y7 = y_pivot + (x_shifted_param7*sin(angle)+y_shifted_param7*cos(angle));
													int temp_x8 = x_pivot + (x_shifted_param8*cos(angle)-y_shifted_param8*sin(angle));
													int temp_y8 = y_pivot + (x_shifted_param8*sin(angle)+y_shifted_param8*cos(angle));
													int temp_x9 = x_pivot + (x_shifted_param9*cos(angle)-y_shifted_param9*sin(angle));
													int temp_y9 = y_pivot + (x_shifted_param9*sin(angle)+y_shifted_param9*cos(angle));
													int temp_x10 = x_pivot + (x_shifted_param10*cos(angle)-y_shifted_param10*sin(angle));
													int temp_y10 = y_pivot + (x_shifted_param10*sin(angle)+y_shifted_param10*cos(angle));
													int temp_x11 = x_pivot + (x_shifted_param11*cos(angle)-y_shifted_param11*sin(angle));
													int temp_y11 = y_pivot + (x_shifted_param11*sin(angle)+y_shifted_param11*cos(angle));
													int temp_x12 = x_pivot + (x_shifted_param12*cos(angle)-y_shifted_param12*sin(angle));
													int temp_y12 = y_pivot + (x_shifted_param12*sin(angle)+y_shifted_param12*cos(angle));



													if(elongate_on==0){
//													draw_line(temp_x1, temp_x2, temp_y1, temp_y2, background_color); //top left side 0x00F00F00
//													draw_line(temp_x3, temp_x4 , temp_y3 , temp_y4 , background_color); //top right side 0x00000000
//													draw_line(temp_x5, temp_x6 , temp_y5 , temp_y6 , background_color); // bot left
//													draw_line(temp_x7, temp_x8 , temp_y7 , temp_y8 , background_color ); // bot right
//													draw_line(temp_x9, temp_x10 , temp_y9 , temp_y10 ,background_color ); //bot


														draw_line(temp_x1, temp_x2, temp_y1, temp_y2, background_color); //top left side 0x00F00F00
														draw_line(temp_x3, temp_x4 , temp_y3 , temp_y4 ,background_color); //top right side 0x00000000
														draw_line(temp_x5, temp_x6 , temp_y5 , temp_y6 , background_color); // bot left
														draw_line(temp_x7, temp_x8 , temp_y7 , temp_y8 , background_color ); // bot right
														draw_line(temp_x9, temp_x10 , temp_y9 , temp_y10 ,background_color ); //bot
														draw_line(temp_x11, temp_x12 , temp_y11 , temp_y12 ,background_color ); //bot
													}
				}
		}// if(angle != 0)
		else{

			for(int ii=0; ii<=10;ii++){
				if(elongate_on==0){
				draw_line(x1-(radius/4), x1+radius, y1-(radius*1.2)-ii, y1-1-ii, background_color); //top right
				draw_line(x1-(radius), x1+(radius/4), y1-1-ii, y1-(radius*1.2)-ii, background_color); //top left
				}
			}
			if(size!=1){

					//	//middle to top of the shape (triangle
					for(int ii=0; ii<=radius;ii++){
						draw_line(x1-radius+ii, x1+radius-ii, y1-ii, y1-ii, color); //
					}
					// middle to bottom (trapezoid shape)
					for(int ii=0; ii<=radius-7;ii++){
						draw_line(x1-(radius/2), x1+(radius/2), y1+ii, y1+ii, color); //

						if(y1+ii >= bin_height_limit){
							rv =1;
						}
					}
					for(int ii=0; ii<=23;ii++){
						draw_line(x1+(radius/2)-ii, x1+(radius)-ii, y1+(radius-7), y1,  color); //bottom right
						draw_line(x1-radius+ii, x1-(radius/2)+ii, y1, y1+(radius-7),  color); //bottom left
					}



				}
				else{
					//	//middle to top of the shape (triangle
					for(int ii=0; ii<=radius;ii++){
						draw_line(x1-radius+ii, x1+radius-ii, y1-ii, y1-ii, color); //
					}
					// middle to bottom (trapezoid shape)
					for(int ii=0; ii<=radius-7;ii++){
						draw_line(x1-(radius/2), x1+(radius/2), y1+ii, y1+ii, color); //
						if(y1+ii >= bin_height_limit){
							rv =1;
						}
					}
					for(int ii=0; ii<=8;ii++){
						draw_line(x1+(radius/2)-ii, x1+(radius)-ii, y1+(radius-7), y1,  color); //bottom right
						draw_line(x1-radius+ii, x1-(radius/2)+ii, y1, y1+(radius-7),  color); //bottom left
					}
				}
		}
		// clear any pixel residue
		for (int ii =0 ; ii < 20; ii++){
			if(elongate_on==0){
				draw_line(x1-60,x1+60,y1-50-ii,y1-50-ii, background_color); //(int)0xF0FF0FFF); purple
			}
		}

		if(rotation != 0){
			for(int ii = x1-radius-10; ii< x1+radius+20;ii++){
				fill_method_v2_triange_pentagon(y1-radius-40, ii ,y1+radius+40,color,background_color); //0xFF00FF00 green
			}
		}



		if(y1>=1100){
			return 0;
		}
		return rv;
}











// Bin implementation
void Bins::draw_Bin(int x, int y1,int y2, int frequency_range, int color){
	int * image_buffer_pointer = (int *)0x00900000;


	for(int y= y1; y<=y2; y++){
		for(int x=924; x<=924+(1280-924); x++){ // predefined height
			image_buffer_pointer[(y)+(x<<10)+(x<<8)]=color; //image_buffer_pointer[(y)+(x<<10)+(x<<8)]=color;
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

		draw_line(1045, 1065, 50, 100, (int)0xFFFFFFFF);   // V
		draw_line(1065, 1085, 100, 50, (int)0xFFFFFFFF);

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

		draw_line(1090, 1090, 240, 290, (int)0xFFFFFFFF); //N
		draw_line(1090, 1110,240, 290, (int)0xFFFFFFFF);
		draw_line(1110, 1110, 240, 290, (int)0xFFFFFFFF);

		int adjustment = 30;
		draw_line(1090+adjustment, 1110+adjustment, 240, 240 , (int)0xFFFFFFFF);	// G
		draw_line(1090+adjustment, 1090+adjustment, 240, 290 , (int)0xFFFFFFFF);
		draw_line(1090+adjustment, 1110+adjustment, 290, 290 , (int)0xFFFFFFFF);
		draw_line(1110+adjustment, 1110+adjustment, 270, 290 , (int)0xFFFFFFFF);
		draw_line(1100+adjustment, 1110+adjustment, 270, 270 , (int)0xFFFFFFFF);

		draw_line(1120+adjustment, 1130+adjustment, 290, 240, (int)0xFFFFFFFF); //A
		draw_line(1130+adjustment, 1140+adjustment, 240, 290, (int)0xFFFFFFFF);
		draw_line(1125+adjustment, 1135 +adjustment, 265, 265, (int)0xFFFFFFFF);

		draw_line(1070+75+10+adjustment, 1070+75+10+adjustment,  240 , 290 , (int)0xFFFFFFFF);// T
		draw_line(1060+75+10+adjustment, 1080+75+10+adjustment, 240, 240, (int)0xFFFFFFFF);

		draw_line(1000+175+adjustment, 1000+175+adjustment, 240, 290 , (int)0xFFFFFFFF);//E
		draw_line(1000+175+adjustment, 1020+175+adjustment, 240, 240, (int)0xFFFFFFFF);
		draw_line(1000+175+adjustment, 1020+175+adjustment, 265, 265, (int)0xFFFFFFFF);
		draw_line(1000+175+adjustment, 1020+175+adjustment, 290, 290, (int)0xFFFFFFFF);

		}

}




// background_mode = 1 standard mode  = black
// background_mode = 2 rotation mode  = blue
// background_mode= 3 random mode     = orange and pink
// background_mode = 4 elongated mode = purple
int Background::set_background(int background_mode){

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
		return  color;
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
		return  color;
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
		return  color;
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
				return  color;
	}

}
















