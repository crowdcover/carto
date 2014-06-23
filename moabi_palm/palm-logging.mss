@timber: @wood_brown; //@d_green;
/*
#timber_concessions::desaturate_mask {
  polygon-comp-op: saturation;
}*/

#timber_concessions {
  polygon-opacity:0.5;
  polygon-fill:@timber;
  //comp-op: multiply;
  line-color:darken(@timber, 60); //@admin_dark;
  line-opacity:0.4;
  [zoom <= 3]{ line-width: 0.1; }
  [zoom = 4]{ line-width: 0.2; }
  [zoom = 5]{ line-width: 0.3; }
  [zoom = 6]{ line-width: 0.4; }
  [zoom = 7]{ line-width: 0.5; }
  [zoom = 8]{ line-width: 0.6; }
  [zoom = 9]{ line-width: 0.7; }
  [zoom >= 10]{ line-width:0.8; }
}

#timber_artisanal {
  marker-fill: @timber;
  marker-fill-opacity: 0.7;
  marker-line-color:darken(@timber, 60); //@admin_dark;
  marker-line-width: 0.5;
  marker-line-opacity: 0.5;
  marker-allow-overlap:false;
  [zoom <= 3]{ marker-width: 2.0; }
  [zoom = 4]{ marker-width: 4.0; }
  [zoom = 5]{ marker-width: 5.0; }
  [zoom = 6]{ marker-width: 6.0 }
  [zoom = 7]{ marker-width: 7.0; }
  [zoom = 8]{ marker-width: 8.5; }
  [zoom = 9]{ marker-width: 10.0; }
  [zoom >= 10]{ marker-width: 11.0; }
}

/***********************************************/
/*******************Palm Oil********************/
/***********************************************/
@palm: darken(@forest_green, 6); //@d_orange;

#palm_oil [zoom < 8]{
  marker-fill: @palm;
  marker-fill-opacity: 0.7;
  marker-line-opacity: 0.4;
  marker-line-width: 0.6;
  [zoom <= 3]{ marker-width: 2.0; }
  [zoom = 4]{ marker-width: 4.0; }
  [zoom = 5]{ marker-width: 5.0; }
  [zoom = 6]{ marker-width: 6.0 }
  [zoom = 7]{ marker-width: 7.0; }
}

#palm_oil [zoom >= 8]{
  polygon-opacity:0.6;
  polygon-fill:@palm;
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
    line-color: @palm;
    //line-comp-op: multiply;
    line-opacity:0.4;
    line-cap: butt;
    line-join: miter;
    [zoom <= 6]{ line-width: 0.2; }
    [zoom = 7]{ line-width: 0.5; line-offset: -0.25; }
    [zoom = 8]{ line-width: 1.0; line-offset: -0.5; }
    [zoom = 9]{ line-width: 2.0; line-offset: -1.0; }
    [zoom = 10]{ line-width: 3.0; line-offset: -1.5; }
    [zoom = 11]{ line-width: 4.0; line-offset: -2.0; }
    [zoom >= 12]{ line-width: 6.0; line-offset: -3.0; }
  }
}
