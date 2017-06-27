void setup() {
  size(720, 480); // Deteremines the dimensions of the bacground size
}

void draw() {
  background(102);
  
  pushMatrix(); //pushMatrix(): Remembers the current coordinate system (in the "matrix stack"). 
  //An array is a container object that holds a fixed number of values of a single type. The length of an array is established when the array is created.
  //pushMatrix   Pushes the current transformation matrix onto the matrix stack.
  //A stack is a data structure that is similar to an ArrayList but only supports the functions push(), pop(), 
  // A matrix is a two-dminesonal array in which all elements of this "Array" correspond to the shape and allow for the follwoing functions to be applied on each shape
  translate(width*0.2, height*0.5); //translate() moves the origin of the polygon about the plane of the background
  rotate(frameCount / 10.0); //rotate() rotates the coordinate system around the origin (framcount accounts for the speed of the rotating object)
  polygon(0, 25, 82, 3);  // Triangle; the functions I used creates any polygon. The first two dimensions controls the X and Y coordinates and the position of the shape about the origin of the shape.
  // The third dimension allows the change in size of the the polygon and the last dimension configures the amount of sides the polygon will have
  fill(255,0,0);//Changes the RGB settings of the of the shape, as of now the shape is blue
  popMatrix();
  
  pushMatrix();
  translate(width*0.5, height*0.5);
  rotate(frameCount / 20.0);
  polygon(0, 50, 80, 6);  // Hexagon
  fill(0,255,0);
  popMatrix();
  
  pushMatrix();
  translate(width*0.8, height*0.5);
  rotate(frameCount / 40.0);
  polygon(0, 100, 70, 12);  // Dodecegon
  fill(0,0,255);
  popMatrix();
}

//Hopefully the comments above allow for a better understanding of the functions in the following lines  of code for the ret of the shapes, since the follow the same structure
void polygon(float x, float y, float radius, int npoints) { //These lines of code functions call the shapes and  allows them to perform rotations. 
  float angle = TWO_PI / npoints;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}