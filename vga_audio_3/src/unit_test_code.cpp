#include "shape_params.h"
#include "unit_test_code.h"

/* UNIT Test Code for Milestone 1 */


//create a red pentagon at (100,200)
void Test_Solution_Shapes::Test_Pentagon(){
	Pentagon pentagon;
	pentagon.draw_Pentagon(200,100,0xFF0000FF);
}

//create a pink circle at (400,600)
void Test_Solution_Shapes::Test_Circle(){
	Circle circle;
	circle.draw_Circle(600,400,30,0x00FF00FF);

}

//create a yellow triangle at (200,700)
void Test_Solution_Shapes::Test_Triangle(){
	Triangle triangle;
	triangle.draw_Triangle(700, 200, (int)0x0000FFFF); //1000
}

//create a purple square at (800,200)
void Test_Solution_Shapes::Test_Square(){
	Square square;
	square.draw_Square(200,300,800,900,(int)0x000FF1493);
}
