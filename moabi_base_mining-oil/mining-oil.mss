@oil: @orange;
@mining: @yellow; //@muted_green;
@line1: @admin_dark;

/*
#mining::desaturate_mask {
  polygon-comp-op: saturation;
}*/

#mining {
  polygon-opacity:0.4;
  polygon-fill: @mining;
  //polygon-comp-op: multiply;
  line-color:@line1;
  line-opacity:0.5;
  [zoom <= 3]{ line-width: 0.1; }
  [zoom = 4]{ line-width: 0.1; }
  [zoom = 5]{ line-width: 0.2; }
  [zoom = 6]{ line-width: 0.3; }
  [zoom = 7]{ line-width: 0.4; }
  [zoom = 8]{ line-width: 0.5; }
  [zoom = 9]{ line-width: 0.6; }
  [zoom >= 10]{ line-width:0.8; }
}

#oil_concessions {
  polygon-opacity:0.4;
  polygon-fill: @oil; 
  //polygon-comp-op: multiply;
  line-color:@admin_dark;
  line-opacity:0.4;
  [zoom <= 3]{ line-width: 0.1; }
  [zoom = 4]{ line-width: 0.1; }
  [zoom = 5]{ line-width: 0.2; }
  [zoom = 6]{ line-width: 0.3; }
  [zoom = 7]{ line-width: 0.4; }
  [zoom = 8]{ line-width: 0.5; }
  [zoom = 9]{ line-width: 0.6; }
  [zoom >= 10]{ line-width:0.8; }
}