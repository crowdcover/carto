@oil: @orange;
@mining: @yellow; //@muted_green;
@line1: @admin_dark;

#oil_concessions {
  polygon-opacity:0.1;
  [license='exploration']{polygon-opacity:0.6;}
  [license='exploitation']{polygon-opacity:0.6;}
  polygon-fill: @oil; 
  //polygon-comp-op: multiply;
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
    line-color: @oil;
    //line-comp-op: multiply;
    line-opacity:0.6;
    line-cap: butt;
    line-join: miter;
    [zoom <= 3]{ line-width: 1; line-offset: -0.5; }
    [zoom = 4]{ line-width: 1; line-offset: -0.5; }
    [zoom = 5]{ line-width: 1.5; line-offset: -0.75; }
    [zoom = 6]{ line-width: 2.0; line-offset: -1.0; }
    [zoom = 7]{ line-width: 3.0; line-offset: -1.5; }
    [zoom = 8]{ line-width: 4.0; line-offset: -2.0; }
    [zoom = 9]{ line-width: 5.0; line-offset: -2.5; }
    [zoom >= 10]{ line-width: 6.0; line-offset: -3.0; }
  }
}