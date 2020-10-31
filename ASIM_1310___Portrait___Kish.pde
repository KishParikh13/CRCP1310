// Portait Assignment due on 2/4 - Kish Parikh  ASIM 1310-801C 

// this is a metaphor for how I view myself and how I interact with the world
  // I am the sun because I am the one consistent observer that is present through all experiences
      // when my eyes are closed
          // i am at peace and the problems (sharks) dissappear
          // meditation - allowing things to happen but remaining unbothered
      // when my eyes are open
          // clouds (thoughts) pass me by, problems (sharks) come and go, and I am pulled around by the mind
   // I like this a lot because it captures my philosphy on life
         // everything outside is always changing, I am the unchanging spark of life that like a string connects all experiences
         // kind of deep i guess but this speaks to me and represents my inner world
// Thanks David for giving me a means of expressing myself.

//vars

  //extra
    float White = 255;
    float Black = 0;

   // eye vars
    float eyePosleft = 100;
    float eyePosright = 200;
    float eyeY = 150;
    float eyeLid = 150;
 
  // left eyeball vers
    float colAOne = 252;
    float colATwo = 197;
    float colAThree = 46;
  
  // right eyeball vars
    float colBOne = 252;
    float colBTwo = 197;
    float colBThree = 46;
  
  // cloud vars
    float cloud1x = 600;
    float cloud2x = 400;
    
  // wave vars
    float wave1x = 400;
    float wave2x = 150;
    float wave3x = 725;
  // wave movement var
    float waveMov = 0;

  // shark vars
    float xPosShark = 0;



//setup
  void setup () {
     
   println ("Wake up the Sun!");
   println ("Click and drag to look around.");
    
    size(1000, 800); 
  }
  
// draw
  void draw () {
      
      background(201, 235, 255);


// sun
  //sun face
    stroke(249, 255, 88);
    strokeWeight(10);
    fill(252,197,46);
  
         ellipse(150, 170, 230, 230);  //primitive 1
  
  
  //sun mouth
      stroke (Black);
      strokeWeight(1);
      noFill();

         arc(150, 200, 100, 80, .2*PI, .8*PI, OPEN);  //primitive 2
  
  //sun eyes
      fill(colBOne, colBTwo, colBThree);
      stroke(0);
   
         ellipse(eyePosleft, eyeY, 70, 50);  //primitive 3
         ellipse(eyePosright, eyeY, 70, 50);  //primitive 4
  
  // sun eyeballs
       fill(colAOne, colATwo, colAThree);
       noStroke();
         
         //eyeball movement
         circle(100+ (0.03*(mouseX)), eyeY+ (.03*(mouseY)) , 15);  //primitive 5
         circle(200+ (0.03*(mouseX)), eyeY+ (.03*(mouseY)) , 15);  //primitive 6
     
     //closed eyes
     if (mousePressed == false) {
        fill(252,197,46);
        
          rect(60, 110, 180, 30);  //primitive 7
     }
 
  //nose
      noFill();
      stroke(Black);
        
        arc(150, 190, 20, 30, .2*PI, .8*PI, OPEN);  //primitive 8
  
  
  
 // background
   
  //clouds
  
    //cloud 1
        noStroke();
        fill(White);
  
          ellipse(cloud1x, 150, 100, 50);  //primitive 9
          ellipse(cloud1x+20, 130, 100, 50);  //primitive 10
          ellipse(cloud1x-20, 130, 50, 50);  //primitive 11
          ellipse(cloud1x+30, 150, 50, 50);  //primitive 12
      
      //cloud movement
      if (cloud1x < 1000) {
         cloud1x = cloud1x+1;
      } else cloud1x = 0;
  
     //cloud 2
         noStroke();
         fill(White);
           
            ellipse(cloud2x, 300, 100, 50);  //primitive 13
            ellipse(cloud2x-20, 280, 100, 50);  //primitive 14
            ellipse(cloud2x+20, 280, 50, 50);  //primitive 15
            ellipse(cloud2x-30, 300, 50, 50);  //primitive 16
  
      if (cloud2x < 1000) {
        cloud2x = cloud2x+2;
      } else cloud2x = 0;
  
  
  //ocean
     fill(65, 81, 255);
     noStroke();
       
       rect(0, 500, 1000, 500);  //primitive 17
  
  //waves
     noFill();
     stroke(Black);
  
        arc(wave1x, 590, 500, 10, 1.3*PI, 1.7*PI, OPEN);  //primitive 18
        arc(wave2x, 790, 500, 10, 1.3*PI, 1.7*PI, OPEN);  //primitive 19
        arc(wave3x, 700, 500, 10, 1.3*PI, 1.7*PI, OPEN);  //primitive 20

    //wave movement
      if (wave1x < 1000) {
        wave1x = wave1x+ 1;
      } else wave1x = -50;
  
      if (wave2x < 1000) {
         wave2x = wave2x+ 1;
      } else wave2x = -50;
  
       if (wave3x < 1000) {
          wave3x = wave3x+ 1;
      } else wave3x = -50;
 
 
 //animals
 

  //sharks
      //shark 1
        stroke(Black);
        fill(126, 134, 128);
  
          arc(220+xPosShark, 650, 70, 70, PI, 1.5*PI, OPEN);  //primitive 21
          
        noStroke();

          triangle(185+xPosShark,650, 218+xPosShark, 616, 218+xPosShark, 650);  //primitive 22
          
      fill(65, 81, 255);
      noStroke();

          circle(238+xPosShark,633,50);  //primitive 23

      //shark2
        stroke(Black);
        fill(126, 134, 128);
  
            arc(980+xPosShark, 750, 70, 70, PI, 1.5*PI, OPEN);  //primitive 24
            
        noStroke();

            triangle(945+xPosShark,750, 978+xPosShark, 716, 980+xPosShark, 750);  //primitive 25

        fill(65, 81, 255);
       noStroke();
            
            circle(998+xPosShark,733,50);  //primitive 25+

 }

//mouse

// sun looking, mouth moving, shark swimming

void mouseDragged() {
  
  //color changes so eyes can open cleanly
 
  colBOne = White;
  colBTwo = White;
  colBThree = White;

  colAOne = Black;
  colATwo = Black;
  colAThree = Black;
  
  
//mouth movement -- this kind of just worked and ended up looking great, I wan't even trying to do this
  noStroke();
  fill(Black);
  
      arc(150, 210, 100, 40, .2*PI, .8*PI, OPEN);  //primitive 25+
  
//shark movement only when sun is looking (mouse is dragged)  
  xPosShark = xPosShark-1;

  }
  
  
  
 //reset after sun looks, reset shark

void mouseReleased () {

  colAOne = 252;
  colATwo = 197;
  colAThree = 45;

  colBOne = 252;
  colBTwo = 197;
  colBThree = 45;
  
  //reset shark position
    xPosShark = 1000;

}
