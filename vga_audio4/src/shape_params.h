#ifndef __Shapes__
#define __Shapes__

#include "xuartps.h"
#include "xil_cache.h"
#include "sleep.h"

#define BUTTON_CHANNEL 1
#define SWITCH_CHANNEL 2
#define UART_BASEADDR XPAR_PS7_UART_1_BASEADDR

#define is_light_pattern_changed (*(volatile unsigned long *)(0xFFFF0000)) //shared memory space for if light pattern mode is changed
#define light_pattern_mode (*(volatile unsigned long *)(0xFFFF0010)) // light pattern mode
#define audio_volume_change (*(volatile unsigned long *)(0xFFFF0020))
#define tempo_speed_change (*(volatile unsigned long *)(0xFFFF0030))

// streaming cannot speed up music
//0, recording we can increase or decrease tempo
//1 streaming we cannot increase tempo (but can decrease the tempo)
//2 music is stopped and so we stop the shapes from moving
//3 music is playing back we can increase or decrease tempo
#define is_music_streaming (*(volatile unsigned long *)(0xFFFF0040))
#define sound_effect_added (*(volatile unsigned long *)(0xFFFF0050))
#define reset_bin_counters (*(volatile unsigned long *)(0xFFFF0060))
#define is_audio_changed (*(volatile unsigned long *)(0xFFFF0070))
#define prng_output        (int*)(0xFFFF0080) // will hold at most 20 int values





// Base class
class Shape {
   public:
	  void draw_line(int x1,int x2,int y1,int y2, int color);// http://www.brackeen.com/vga/source/djgpp20/lines.c.html
	  void fill_method(int x1,int y1,int length, int color, int background_color);
	  void fill_method_v2(int x1,int y1,int length, int color, int background_color);
	  void fill_method_v2_triange_pentagon(int x1,int y1,int length, int color, int background_color);

   protected:
      int * image_buffer_pointer = (int *)0x00900000; // The address of the image buffer pointer will be here
};

// Derived class
class Square: public Shape {
   public:
	void draw_Square(int x1,int x2, int y1,int y2, int color);
	void draw_Square(int x1,int y1, int size, int color);
	void draw_Square_rotation(int x1,int y1, int size, int color, double rotation);
	int draw_Square_flexible_version(int x1,int y1, int size, int color, double rotation, int background_color, int elongate_on);
	void draw_Square_v2(int x1,int y1, int size, int color);
	void draw_Square_flexible_version_v2(int x1,int y1, int size, int color, double rotation, int background_color);

};

// Derived class
class Triangle: public Shape {
   public:
	void draw_Triangle(int x1, int y1,int color);
	void draw_Triangle(int x1, int y1,int size,int color);
	void draw_Triangle(int x1, int y1,int size,int color, double rotation);
	int draw_Triangle_flexible_version(int x1, int y1,int size,int color, double rotation,int background_color, int elongate_on);
	//void draw_line(int x1,int x2,int y1,int y2, int color); // http://www.brackeen.com/vga/source/djgpp20/lines.c.html

};

// Derived class

// resources used here: http://www.brackeen.com/vga/source/djgpp20/circle.c.html
class Circle: public Shape {
   public:
//	void draw_Circle(int x1, int y1,int radius,int color);
	void draw_Circle(int x1, int y1,int size,int color);
	int draw_Circle_flexible_version(int x1, int y1,int size,int color,int background_color, int elongate_on);

};


// Derived class
class Pentagon: public Shape {
   public:
	void draw_Pentagon(int x1, int y1,int color);
	void draw_Pentagon(int x1, int y1,int size,int color);
	void draw_Pentagon(int x1, int y1,int size,int color,double rotation);
	int draw_Pentagon_flexible_version(int x1, int y1,int size,int color, double rotation,int background_color, int elongate_on);

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
	int counter=0;
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
	int set_background(int background_mode);

    int NUM_BYTES_BUFFER = 5242880;
	int * image_buffer_pointer = (int *)0x00900000;
};




#endif
