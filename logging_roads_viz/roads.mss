@road: #f0f;
//@road: #CE0071;
/*
#roads {
  line-color:#ccc;
  line-opacity: 0.5;
  ['eco_hack' = 'yes']{
    line-color: @road;
  }
  ['logging' = 'yes'][zoom >= 9]{
    line-dasharray: 2,2;
  }
  [zoom < 6]{ line-width: 0.2; }
  [zoom = 6]{ line-width: 0.4; }
  [zoom = 7]{ line-width: 0.6; }
  [zoom = 8]{ line-width: 0.8; }
  [zoom = 9]{ line-width: 0.9; }
  [zoom = 10]{ line-width: 1.0; }
  [zoom >= 11]{ line-width: 1.2; }
  ::strong_stroke{
    // thicken for tooltip hover
    line-opacity: 0;
    line-join: round;
    line-cap: round;
  [zoom < 6]{ line-width: 0.6; }
  [zoom = 6]{ line-width: 0.8; }
  [zoom = 7]{ line-width: 2.0; }
  [zoom = 8]{ line-width: 4.0; }
  [zoom = 9]{ line-width: 7.0; }
  [zoom = 10]{ line-width: 10.0; }
  [zoom >= 11]{ line-width: 16.0; }
  }
}
*/
@none: spin(@road, -80);
@2000: spin(@road, 0);
@2005: spin(@road, 40);
@2010: spin(@road, 80);
@2012: spin(@road, 90);
@2013: spin(@road, 100);

#roads {
  line-color: rgba(255,255,255,0.4);
  [zoom < 6]{ line-width: 0.2; }
  [zoom = 6]{ line-width: 0.4; }
  [zoom = 7]{ line-width: 0.6; }
  [zoom = 8]{ line-width: 0.8; }
  [zoom = 9]{ line-width: 0.9; }
  [zoom = 10]{ line-width: 1.0; }
  [zoom >= 11]{ line-width: 1.2; }
  ['logging' = 'yes'][zoom >= 9]{
    line-dasharray: 2,2;
  }
  ['eco_hack' = 'yes']{ line-color: @none; }
  ['date' = '2000']{ line-color: @2000; }
  ['date' = '2005']{ line-color: @2005; }
  ['date' = '2010']{ line-color: @2010; }
  ['date' = '2012']{ line-color: @2012; }
  ['date' = '2013']{ line-color: @2013; }
  ::strong_stroke{
    // thicken for tooltip hover
    line-opacity: 0;
    line-join: round;
    line-cap: round;
  [zoom < 6]{ line-width: 0.6; }
  [zoom = 6]{ line-width: 0.8; }
  [zoom = 7]{ line-width: 2.0; }
  [zoom = 8]{ line-width: 4.0; }
  [zoom = 9]{ line-width: 7.0; }
  [zoom = 10]{ line-width: 10.0; }
  [zoom >= 11]{ line-width: 16.0; }
  }
}

  