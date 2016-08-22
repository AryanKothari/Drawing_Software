/*
Free Draw project by Aryan Kothari

This is my first project of this course. In this interactive drawing app,
One can make the picture that they want to!

*/


int w = 10;
int h = 10;
int draw = 0;
int screen = 0;
int r = 0;
int g = 255;
int b = 0;
int size = 5;


void setup ()
{
  fullScreen();
  background(0);
  noStroke();
  
  fill (255,255,0);
  textSize(100);
  text("Welcome to Free Draw!",180,330);
  
  fill (255,255,0);
  textSize(30);
  text("Created by Aryan Kothari",1050,860);
  
  fill(0,255,0);
  rect(620,400,180,50);
  
  fill(0,255,0);
  rect(620,480,180,50);
  
  fill(0,0,255);
  textSize(35);
  text("Play now!", 635, 440);
  
  fill(0,0,255);
  textSize(30);
  text("Instructions",625, 520);
  
  rect(620,400,50,50);
  
  
  
}

void keyPressed()
{
       
   if (keyCode == ENTER) //Enter Free Draw 
  {
     //Resets to iniial x and y values
     w = 10;
     h = 10;
   
   
   //black background 
    background(0);
    
 
    fill (255,0,0);
    textSize(50);
    text("Free Draw",600,40);
    
    fill(255,0,0);
    textSize(20);
    text("Portrait: #", 1280, 30);
    
    fill(255,0,0);
    textSize(20);
    text(draw,1378,30);
    
    screen = 1; 
    draw = draw + 1;
    
    //border lines
    fill(0,255,0);
    rect(72,75,5,735);
    
    fill(0,255,0);
    rect(1358,75,5,735);
    
    fill(0,255,0);
    rect(72,808,1291,5);
    
    fill(0,255,0);
    rect(72,74,1291,5);
  }
  
    if (keyCode == SHIFT) //Instructions Screen
    {
  screen = 2; 
}
}



void draw () 
{
  
      if (screen == 0)
  {
    if(mousePressed)
    {
      if(mouseX>=300)
      {
       if(mouseX<=500)
       {
         if(mouseY>=300)
         {
           if(mouseY<=500)
           {

       //Resets to iniial x and y values
     w = 10;
     h = 10;
   
   
   //black background 
    background(0);
    
 
    fill (255,0,0);
    textSize(50);
    text("Free Draw",600,40);
    
    fill(255,0,0);
    textSize(20);
    text("Portrait: #", 1280, 30);
    
    fill(255,0,0);
    textSize(20);
    text(draw,1378,30);
    
    screen = 1; 
    draw = draw + 1;
    
    
    //border lines
    fill(0,255,255);
    rect(72,75,5,735);
    
    fill(255,255,255);
    rect(1358,75,5,735);
    
    fill(255,255,255);
    rect(72,808,1291,5);
    
    fill(255,255,255);
    rect(72,74,1291,5);
    }
  }
       }
      }
    }
  }
  
     if (screen == 1) //Free Draw Scene 
  {
    if(mousePressed)
  {
    if (mouseX >= 75)
    {
      if (mouseX <= 1350)
      {
        if (mouseY >= 75)
      {
          if (mouseY <= 800)
          {
                strokeWeight(size);
                stroke(r,g,b);
                fill(r,g,b);
                line(pmouseX,pmouseY,mouseX,mouseY);
                ellipse(mouseX,mouseY,w,h);
                  if (keyPressed) //Make size bigger 
            {
                  if (key == 's' || key == 's') 
        { 
                  size = size + 1;
    }  
  }
             
          }
      }
      }
    }
  }
  }
 

if (screen == 2)
{
  background(0);
  fill(255,0,0);
  textSize(80);
  text("Instructions:",480,90);
}

}
    
  

  
//future goals for project:
//Function to change size of rectangle
//Function to change from rectangle to ellipse
//Include Homepage (give options to go to free draw or instructions)
//Add Song 
//Make mouse movement instead of keys
//function to change color 