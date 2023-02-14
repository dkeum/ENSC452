#ifndef __Shapes__
#define __Shapes__

#include "xuartps.h"
#include "xil_cache.h"
#include "sleep.h"

#define BUTTON_CHANNEL 1
#define SWITCH_CHANNEL 2
#define UART_BASEADDR XPAR_PS7_UART_1_BASEADDR


// Base class
class Shape {
   public:
	  void draw_line(int x1,int x2,int y1,int y2, int color);// http://www.brackeen.com/vga/source/djgpp20/lines.c.html
   protected:
      int width;
      int height;
      int shape_id; // 0 circle, 1 triangle, 2 square, 3 pentagon
      int size; // controlled by volume
      int speedy; // controlled by tempo and can only move faster/slower downwards
      int isrotating; // controlled by rotating light pattern mode;
      int elongated;// controlled by elongated shape light pattern mode.
      int * image_buffer_pointer = (int *)0x00900000; // The address of the image buffer pointer will be here
};

// Derived class
class Square: public Shape {
   public:
	void draw_Square(int x1,int x2, int y1,int y2, int color);

};

// Derived class
class Triangle: public Shape {
   public:
	void draw_Triangle(int x1, int y1,int color);
	//void draw_line(int x1,int x2,int y1,int y2, int color); // http://www.brackeen.com/vga/source/djgpp20/lines.c.html

};

// Derived class

// resources used here: http://www.brackeen.com/vga/source/djgpp20/circle.c.html
class Circle: public Shape {
   public:
	void draw_Circle(int x1, int y1,int radius,int color);

};


// Derived class
class Pentagon: public Shape {
   public:
	void draw_Pentagon(int x1, int y1,int color);
	// void draw_line(int x1,int x2,int y1,int y2, int color); // http://www.brackeen.com/vga/source/djgpp20/lines.c.html
};


// Derived class

/*
1280x1024 screen (widthxheight)
Size of the bin
1) Width 1280-200 = 1080 offset from having the sides clear
2) there will be 5 bins and there will be space in between; 5x+4y = 1080, suppose that the spacing is 50 (y=50) then x=166
3) each bin will have a width of 166.
4) for the bin height, 100
5) The overall structure of the bin should be square with a semi-circle on top
6) each bin should label the frequency range (may need to adjust the width formula to this)
7)

*/
class Bins{
   public:
	void draw_Bin(int x, int y1,int y2, int frequency_range, int color);
	int * image_buffer_pointer = (int *)0x00900000;
};




/////////////////////-------------------------------------------------------------------------------//////////////////////

// Derived class
class Sound_effects_name: public Shape {
   public:
	void draw_sound_effects_name(int x, int y);
	void display_light_pattern_mode(int mode_num);


	int * image_buffer_pointer = (int *)0x00900000;
};


// Derived class
class Background: public Shape {
   public:
	void set_background(int background_mode);

    int NUM_BYTES_BUFFER = 5242880;
	int * image_buffer_pointer = (int *)0x00900000;
};




#endif
