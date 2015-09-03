@palm: darken(@forest_green, 6); //@d_orange;

#feronia_concessions{
  ::polygon{
    polygon-opacity:0.6;
    polygon-fill:@palm;
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
  }
  ::doublestroke{
    line-color: @palm;
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
#feronia_concessions{
  ::marker-white[zoom<=8] {
    marker-fill:transparent;
    marker-line-color:white;
    marker-line-opacity:0.6;
    marker-clip:true;
    marker-allow-overlap:true;
    marker-width: 8;
    [zoom<=5]{marker-width:8; marker-line-width:0.8+1.5;}
    [zoom=6]{marker-width:12; marker-line-width:1.0+1.5;}
    [zoom=7]{marker-width:26; marker-line-width:1.2+2;}
    [zoom=8]{marker-width:38; marker-line-width:1.2+2;}
  }
  ::marker-green[zoom<=8] {
    marker-fill:transparent;
    marker-line-color:@palm;
    marker-line-opacity:0.5;
    marker-clip:true;
    marker-allow-overlap:true;
    marker-width: 8;
    [zoom<=5]{marker-width:8; marker-line-width:0.8;}
    [zoom=6]{marker-width:12; marker-line-width:1.0;}
    [zoom=7]{marker-width:26; marker-line-width:1.2;}
    [zoom=8]{marker-width:38; marker-line-width:1.2;}
  }
}




