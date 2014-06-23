@pattern-opacity: 1;

#protected {
  polygon-opacity: 0.6;
  polygon-fill: #d0ffab;
  /*[zoom <= 18]{ 
    //polygon-pattern-file: url('/Users/jamesconkling/Documents/Data/pattern/d_green_stripe/large_stripe_d_green.png');
    //polygon-pattern-file: url('/Users/jamesconkling/Documents/Data/pattern/stripe_black_#000000/small.png');
    polygon-pattern-file: url('../img/stripe_m_gray_#999999/small.png');
    polygon-pattern-opacity: @pattern-opacity;
    polygon-pattern-comp-op: multiply;
    polygon-pattern-alignment: global;
  }
  [zoom <= 7]{ 
    //polygon-pattern-file: url('/Users/jamesconkling/Documents/Data/pattern/d_green_stripe/small_stripe_d_green.png');
    //polygon-pattern-file: url('/Users/jamesconkling/Documents/Data/pattern/stripe_black_#000000/ex_small.png');
    polygon-pattern-file: url('../img/stripe_m_gray_#999999/ex_small.png');
    polygon-pattern-opacity: @pattern-opacity;
    polygon-pattern-comp-op: multiply;
    polygon-pattern-alignment: global;
  }*/
  line-color:black;
  line-opacity:0.8;
  line-dasharray:8,4;
  [zoom <= 3]{ line-width: 0.1; }
  [zoom = 4]{ line-width: 0.1; }
  [zoom = 5]{ line-width: 0.2; }
  [zoom = 6]{ line-width: 0.3; }
  [zoom = 7]{ line-width: 0.4; }
  [zoom = 8]{ line-width: 0.5; }
  [zoom = 9]{ line-width: 0.6; }
  [zoom >= 10]{ line-width:0.8; }
}