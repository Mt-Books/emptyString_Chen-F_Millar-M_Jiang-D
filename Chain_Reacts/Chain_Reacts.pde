// Team emptyString -- Frank Chen, Max Millar, Daniel Jiang
// APCS2 pd2
// HW54 -- Ain't Even From the A-Town
// 2018-05-26

Ball[] balls = new Ball[ 31 ];
int value = -1;

  void setup() 
  {
    background( 0 );
    size( 600, 600 );
    for( int i = 0; i < 31; i++ )
    {
      balls[ i ] = new Ball();
      if( i == 30 ) // The Ball To Be Grown Via Mouse Click
      {
        balls[ i ].state = 3;
        balls[ i ].rad = 0;
      }
    }
  }
  
  void draw()
  {
    background( 0 );
    for( int x = 0; x < 30; x++ )
    {
      for( int y = x + 1; y < 31; y++ )
      {
        balls[ x ].collision( balls[ y ] );
      }
    }
    for( int i = 0; i < 31; i++ )
    {
      if( value == 0 ) // Centers Ball
      {
        balls[ 30 ].state = 1;
        balls[ 30 ].xCor = mouseX;
        balls[ 30 ].yCor = mouseY;
        value = -2;
      }
      balls[ i ].initiate();
      balls[ i ].draw();
    }
  }
  
  void mouseClicked()
  {
    if( value == -1 )
    {
      value = 0;
    }
  }
