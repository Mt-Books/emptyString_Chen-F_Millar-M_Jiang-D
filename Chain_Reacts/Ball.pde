// Frank Chen
// APCS2 pd2
// HW53 -- All That Bouncin'
// 2018-05-23

class Ball 
{
  final static int MOVING = 0;
  final static int GROWING = 1;
  final static int SHRINKING = 2;
  final static int DEAD = 3;
  final float CHANGE_FACTOR = .25;
  final float MAX_RADIUS = 50;
  float xCor = random( 15, 585 );
  float yCor = random( 15, 585 );
  float xSpd = random( 1, 15 );
  float ySpd = random( 1, 15 );
  color c = color( random( 0, 300 ), random( 0, 300 ), random( 0, 300 ) );
  
  void draw()
  {
    fill( c );
    ellipse( xCor, yCor, 10, 10 );
  }
  
  void initiate()
  {
    xCor += xSpd;
    yCor += ySpd;
    if( ( xCor > width - 15 || xCor < 15 ) )
    {
      xSpd *= -1;
    }
    if( ( yCor > height - 15 || yCor < 15 ) )
    {
      ySpd *= -1;
    }
    ellipse( xCor, yCor, 10, 10 );
  }

}