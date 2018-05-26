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
  float rad = 10;
  float xCor = random( 10, 590 );
  float yCor = random( 10, 590 );
  float xSpd = random( 1, 15 );
  float ySpd = random( 1, 15 );
  color c = color( random( 0, 300 ), random( 0, 300 ), random( 0, 300 ) );
  int state = 0;
  
  void draw()
  {
    fill( c );
    ellipse( xCor, yCor, 10, 10 );
  }
  
  void initiate()
  {
    if( state == 0 ) // Moving
    {
      xCor += xSpd;
      yCor += ySpd;
      if( ( xCor > width - 10 || xCor < 10 ) )
      {
        xSpd *= -1;
      }
      if( ( yCor > height - 10 || yCor < 10 ) )
      {
        ySpd *= -1;
      }
      ellipse( xCor, yCor, 10, 10 );
    }
    if( state == 1 ) // Growing
    {
      ellipse( xCor, yCor, rad, rad );
      rad += CHANGE_FACTOR;
      if( rad >= MAX_RADIUS )
      {
        state = 2; // Change to Shrinking State
      }
    }
    if( state == 2 ) // Shrinking
    {
      rad -= CHANGE_FACTOR;
      ellipse( xCor, yCor, rad, rad );
      if( rad <= 0 )
      {
        state = 3; // Change to Dead State
      }
    }
    
  }
  
  void collision( Ball other )
  {
    if( ( sqrt( ( pow( ( xCor - other.xCor ), 2 ) ) + ( pow( ( yCor - other.yCor ), 2 ) ) ) ) 
        <= rad + other.rad )
    {
      if( state == 0 && ( other.state == 1 || other.state == 2 ) )
      {
        state = 1;
      }
      if( ( state == 1 || state == 2 ) && other.state == 0 )
      {
        other.state = 1;
      }
    }
  }

}
