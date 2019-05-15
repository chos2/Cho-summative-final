class ball
{
  PVector pos = new PVector(width/2, height/2);
  PVector speed = new PVector(5, 8);

  void Draw()
  {
    fill(255);
    ellipse(pos.x, pos.y, 20, 20);
  }

  void update()
  {
    pos.x= pos.x+speed.x;
    pos.y= pos.y+speed.y;
  }


  void bound()
  {
    if (pos.y < 0 || pos.y > height)
    {
      speed.y*= -1;
    }

    if (pos.x > width)
    {
      lscore++;
      resetpos();
    }

    if (pos.x<0) { 
      resetpos();
      rscore++;
    }


    if (pos.y>right.y-50)
    {
      if (pos.y<right.y+50)
      {
        if (pos.x>right.x-5)
        {
          if (pos.x<right.x+5)
          { 
            speed.x*=-1;
          }
        }
      }
    }
    if (pos.y>left.y-50)
    {
      if (pos.y<left.y+50)
      {
        if (pos.x<left.x+5)
        {
         if (pos.x>left.x-5)
         {
            speed.x*=-1;
          }
        }
      }
    }
  }






  void resetpos()
  {
    pos.x = width/2;
    pos.y = height/2;
    
    
    //speed = new PVector(random(-5,5), random(-5,5));
  }
}
