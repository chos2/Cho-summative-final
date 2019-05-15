class player
{

  float x;
  float y = height/2;
  float wid = 10;
  float heig = 100;
  float Y;

  player(boolean left) {
    if (left) { 
      x = 10;
    } else { 
      x = width - 10;
    }
    
   
  }

  void show() { 
    fill(255);
    rectMode(CENTER);
    rect(x, y, wid, heig);
    y = constrain(y,50,750);
    
   
  }

  void move(float _y)
  {
    y+= _y;
  }
  
}
