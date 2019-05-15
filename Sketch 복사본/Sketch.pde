int scene = 0;
PVector buttonX = new PVector(330, 600);
PVector buttonY = new PVector(160, 80);
ball Ball;
player left;
player right;
boolean up,down = false;
boolean up2, down2 = false;
int lscore = 0;
int rscore = 0;

void setup()
{
  size(800, 800);
  left = new player(true);
  right = new player(false);
  Ball = new ball();
}


void draw()
{
  if (scene == 0)
  {
    gamestart();
  }

  if (scene==1)
  {
    game();
  }

  
}



void gamestart()
{
  background(0);
  text("Start game", 330, 650);
  textSize(70);

  text("Pong", 330, 200);
  textSize(30);
  fill(255);

  if (mousePressed)
  {
    if (mouseX>buttonX.x && mouseX <buttonX.x+buttonY.x && mouseY>buttonX.y && mouseY <buttonX.y+buttonY.y)
    { 
      scene = 1;
    }
    rect(buttonX.x, buttonX.y, buttonY.x, buttonY.y);
  }
}


void game()
{ 
  background(0);

  for (int i=10; i< 790; i +=35)
  {
    rect(400, i, 7, 20);
  }


  Ball.update();
  Ball.Draw();
  Ball.bound();
  left.show();
  right.show();

fill(255);
text(lscore,20,40);
text(rscore,760,40);
    
   
    
    
    
if(keyPressed)
      {if(key =='w' || key =='W')
    
      left.move(-8);
     else if (key == 's' || key =='S')
    { 
      left.move(8);
    }

    if (key == 'o' || key =='O')
    {
      right.move(-8);
    } else if (key == 'l' || key =='L')
    {
      right.move(8);
    }
    }



 
}
