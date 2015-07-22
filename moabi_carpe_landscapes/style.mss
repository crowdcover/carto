@carpe: #e35e41;

#carpe {
  polygon-opacity:0.05;
  polygon-fill:@carpe;
  //comp-op: multiply;
  line-color:#222222;
  line-opacity:0.8;
  [zoom <= 3]{ line-width: 0.1; }
  [zoom = 4]{ line-width: 0.2; }
  [zoom = 5]{ line-width: 0.3; }
  [zoom = 6]{ line-width: 0.4; }
  [zoom = 7]{ line-width: 0.5; }
  [zoom = 8]{ line-width: 0.6; }
  [zoom = 9]{ line-width: 0.7; }
  [zoom >= 10]{ line-width:0.8; } 
  ::doublestroke{
    line-color: @carpe;
    line-comp-op: multiply;
    line-opacity:0.5;
    line-cap: butt;
    line-join: miter;
    [zoom <= 4]{ line-width: 0.5; }
    [zoom = 5]{ line-width: 1.0; line-offset: -0.5; }
    [zoom = 6]{ line-width: 2.0; line-offset: -1.0; }
    [zoom = 7]{ line-width: 3.0; line-offset: -1.5; }
    [zoom = 8]{ line-width: 4.0; line-offset: -2.0; }
    [zoom = 9]{ line-width: 5.0; line-offset: -2.5; }
    [zoom >= 10]{ line-width: 6.0; line-offset: -3.0; }
  }
}
