// Frank Chen
// APCS2 pd2
// HW53 -- All That Bouncin'
// 2018-05-23

Ball[] balls = new Ball[ 30 ];

  void setup() 
  {
    background( 0 );
    size( 600, 600 );
    for( int i = 0; i < 30; i++ )
    {
      balls[ i ] = new Ball();
    }
  }
  
  void draw()
  {
    background( 0 );
    for( Ball ball : balls )
    {
      ball.initiate();
      ball.draw();
    }
  }
  
  void mouseClicked()
  {
    Ball a = new Ball();
  }