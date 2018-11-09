rainbows rain;

float r = 0;
float b = 0;
float g = 0;
int phase = 0; 
float speed = 4;
float max = 120;

void setup()   {
  size (600,300);
  smooth();
  fill(250,20,60);
  rain = new rainbows();
}

void draw(){
  rain.display();
 
}

class rainbows{
 float r = 0;
 float b = 0;
 float g = 0;
 int phase = 0; 
 float speed = 4;
 float max = 120;
  
  void display (){
     background(r,g,b);
    //phases
     if (phase == 0){
     b = 0;
     r = 255;
     g = g+speed;
     }
     if (phase == 1){
     b = 0;
     g = 255;
     r = r-speed;
     }
     if (phase == 2){
     r = 0;  
     g = 255;
     b = b+speed;
     }
     if (phase == 3){
     r = 0;
     b = 255;
     g = g-speed;
     }
     if (phase == 4){
     g = 0;
     b = 255;
     r = r+speed;
     }
     if (phase == 5){
     g = 0;
     r = 255;
     b = b-speed;
     }
     
     
     //changes
     if (phase == 0 && g >= 255){
     phase = 1;
     }
     if (phase == 1 && r <= 0){
     phase = 2;
     }
     if (phase == 2 && b >= 255){
     phase = 3;
     }
     if (phase == 3 && g <= 0){
     phase = 4;
     }
     if (phase == 4 && r >= 255){
     phase = 5;
     }
     if (phase == 5 && b <= 0){
     phase = 0;
     }
  }



}