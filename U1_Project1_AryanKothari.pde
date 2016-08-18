int x = 50;
int y = 50;
int draw = 1;
int screen = 0;
int xDirection = 0;


void setup ()
{
  fullScreen();
  background(0);
  noStroke();

//borders
  rect(1400,1,50,1500);
  fill(255,255,255);

  rect(0,0,1500,50);
  fill(255,255,255);

  rect(0,0,50,1500);
  fill(255,255,255);

  rect(50,850,1500,50);
  fill(255,255,255);
//end of borders

  fill (255,0,0);
  textSize(50);
  text("Free Draw",550,40);

  fill (0,255,0);
  textSize(20);
  text("Click Enter to Restart",1100,40);

  fill(0,255,255);
  textSize(20);
  text("Use Keys", 400, 40);

  fill (0,0,255);
  textSize(20);
  text(draw,1000,40);


}



void draw () 
{

 
  if (keyCode == RIGHT) //Right Function
{
    fill(255,0,0);
    rect(x,y,10,10);
    x = x + 5;

} 

  else if (keyCode == DOWN) //Down Function
{
    fill(0, 255, 0);
    rect(x,y,10,10);
    y = y + 5; 
} 

  else if (keyCode == LEFT) //Left Function
{
    fill(0, 0, 255);
    rect (x,y,10,10);
    x = x - 5;
} 

  else if (keyCode == UP) //Up Function
{
    fill(255,255,255);
    rect (x,y,10,10);
    y = y - 5;
}


  else if (keyCode== ENTER) //Restart Function
{
    //Resets to 
    x = 50;
    y = 50;
  rect(x,y,10,10);
background(0);
rect(1400,1,50,1500);
  fill(255,255,255);

  rect(0,0,1500,50);
  fill(255,255,255);

  rect(0,0,50,1500);
  fill(255,255,255);

  rect(50,850,1500,50);
  fill(255,255,255);
draw = draw + 1;
fill (255,255,255);
textSize(20);
text(draw,1000,40);
fill (255,255,255);
textSize(40);
text("Use Keys to Free Draw",550,40);
fill (255,255,255);
textSize(20);
text("Click Enter to Restart",550,80);
}
}