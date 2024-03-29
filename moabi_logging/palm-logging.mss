@timber: @wood_brown; //@d_green;

#timber_concessions {
  polygon-opacity:0.5;
  polygon-fill:@timber;
  //comp-op: multiply;
  line-color:@admin_dark;
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
    line-color: @timber;
    //line-comp-op: multiply;
    line-opacity:0.4;
    line-cap: butt;
    line-join: miter;
    [zoom <= 4]{ line-width: 0.2; }
    [zoom = 5]{ line-width: 0.5; line-offset: -0.25; }
    [zoom = 6]{ line-width: 1.0; line-offset: -0.5; }
    [zoom = 7]{ line-width: 2.0; line-offset: -1.0; }
    [zoom = 8]{ line-width: 3.0; line-offset: -1.5; }
    [zoom = 9]{ line-width: 4.0; line-offset: -2.0; }
    [zoom >= 10]{ line-width: 6.0; line-offset: -3.0; }
  }
}
