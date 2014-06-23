@oil: @orange;
@mining: @yellow; //@muted_green;
@line1: #666;

/*
#mining::desaturate_mask {
  polygon-comp-op: saturation;
}*/

#mining {
  polygon-fill: @mining;
  [type='research']{ 
    polygon-opacity: 0.2; 
    polygon-fill: spin(darken(@mining, -10%), 2%);
  }
  [type='exploration']{ 
    polygon-opacity: 0.6; 
    polygon-fill: darken(@mining, 0);
  }
  [type='exploitation']{ 
    polygon-opacity: 0.8;
    polygon-fill: spin(darken(@mining, 2%), -4%);
    polygon-pattern-comp-op: color-burn;
    polygon-pattern-alignment:global;
    [zoom <= 8]{polygon-pattern-file: url('../img/stripe_m_gray_#999999/ex_small.png');}
    [zoom > 8]{polygon-pattern-file: url('../img/stripe_m_gray_#999999/small.png');}
  }
  [type='other']{ 
    // just show thin black stroke
    polygon-opacity: 0;
  }
  
  line-color:@line1;
  line-opacity:0.8;
  [zoom = 4]{ line-width: 0.1; }
  [zoom = 5]{ line-width: 0.2; }
  [zoom = 6]{ line-width: 0.3; }
  [zoom = 7]{ line-width: 0.4; }
  [zoom = 8]{ line-width: 0.5; }
  [zoom = 9]{ line-width: 0.6; }
  [zoom >= 10]{ line-width:0.8; }
  ::doublestroke{
    line-color: @mining;
    line-comp-op: multiply;
    line-opacity:0.8;
    line-cap: butt;
    line-join: miter;
    [zoom <= 4]{ line-width: 0.2; }
    [zoom = 5]{ line-width: 0.5; line-offset: -0.25; }
    [zoom = 6]{ line-width: 1.0; line-offset: -0.5; }
    [zoom = 7]{ line-width: 2.0; line-offset: -1.0; }
    [zoom = 8]{ line-width: 3.0; line-offset: -1.5; }
    [zoom = 9]{ line-width: 4.0; line-offset: -2.0; }
    [zoom >= 10]{ line-width: 6.0; line-offset: -3.0; }
    /* no stroke for anything unidentified */
    [type='other']{ line-width: 0; }
  }
}

#oil_concessions {
  polygon-opacity:0.6;
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
    line-comp-op: multiply;
    line-opacity:0.6;
    line-cap: butt;
    line-join: miter;
    [zoom <= 4]{ line-width: 0.2; }
    [zoom = 5]{ line-width: 0.5; line-offset: -0.25; }
    [zoom = 6]{ line-width: 2.0; line-offset: -1.0; }
    [zoom = 7]{ line-width: 2.0; line-offset: -1.0; }
    [zoom = 8]{ line-width: 3.0; line-offset: -1.5; }
    [zoom = 9]{ line-width: 4.0; line-offset: -2.0; }
    [zoom >= 10]{ line-width: 6.0; line-offset: -3.0; }
  }
}