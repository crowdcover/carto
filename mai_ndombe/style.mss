@mai_ndombe3: #71f1cf;
@mai_ndombe2: #26decd;
@mai_ndombe: #26c0de;


#mai_ndombe 


//sectors
[zoom <= 15]{
['type'='district']{ 
  polygon-fill: @mai_ndombe;
  polygon-opacity:0;
  line-color:#222222;
  line-opacity:0;
      ::doublestroke{
    line-color: @mai_ndombe;
    line-comp-op: multiply;
    line-opacity:0;
    line-cap: butt;
    line-join: miter;
    [zoom <= 4]{ line-width: 0.5; }
    [zoom = 5]{ line-width: 1.0; line-offset: -0.5; }
    [zoom = 6]{ line-width: 2.0; line-offset: -1.0; }
    [zoom = 7]{ line-width: 3.0; line-offset: -1.5; }
    [zoom = 8]{ line-width: 4.0; line-offset: -2.0; }
    [zoom = 9]{ line-width: 5.0; line-offset: -2.5; }
    [zoom >= 10]{ line-width: 6.0; line-offset: -3.0; }
}}
  
['type'='territory']{ 
  polygon-fill:@mai_ndombe2;
  polygon-opacity:0;
  line-color:#222222;
  line-opacity:0;
      ::doublestroke{
    line-color: @mai_ndombe2;
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
}}

['type'='sector']{ 
  polygon-fill:@mai_ndombe3;
  polygon-opacity:0.2;
  line-color:#222222;
  line-opacity:0.4;
      ::doublestroke{
    line-color: @mai_ndombe3;
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
}}}
  

//territories
[zoom <= 7]{
['type'='district']{ 
  polygon-fill:@mai_ndombe;
  polygon-opacity:0;
  line-color:#222222;
  line-opacity:0;
          ::doublestroke{
    line-color: @mai_ndombe;
    line-comp-op: multiply;
    line-opacity:0;
    line-cap: butt;
    line-join: miter;
          [zoom <= 4]{ line-width: 0.5; }
    [zoom = 5]{ line-width: 1.0; line-offset: -0.5; }
    [zoom = 6]{ line-width: 2.0; line-offset: -1.0; }
    [zoom = 7]{ line-width: 3.0; line-offset: -1.5; }
    [zoom = 8]{ line-width: 4.0; line-offset: -2.0; }
    [zoom = 9]{ line-width: 5.0; line-offset: -2.5; }
    [zoom >= 10]{ line-width: 6.0; line-offset: -3.0; }
}}
  
['type'='territory']{ 
  polygon-fill:@mai_ndombe2;
  polygon-opacity:0.2;
  line-color:#222222;
  line-opacity:0.4;
}
    ::doublestroke{
    line-color: @mai_ndombe2;
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

['type'='sector']{ 
  polygon-fill:@mai_ndombe;
  polygon-opacity:0;
  line-color:#222222;
  line-opacity:0;
          ::doublestroke{
    line-color: @mai_ndombe;
    line-comp-op: multiply;
    line-opacity:0;
    line-cap: butt;
    line-join: miter;
          [zoom <= 4]{ line-width: 0.5; }
    [zoom = 5]{ line-width: 1.0; line-offset: -0.5; }
    [zoom = 6]{ line-width: 2.0; line-offset: -1.0; }
    [zoom = 7]{ line-width: 3.0; line-offset: -1.5; }
    [zoom = 8]{ line-width: 4.0; line-offset: -2.0; }
    [zoom = 9]{ line-width: 5.0; line-offset: -2.5; }
    [zoom >= 10]{ line-width: 6.0; line-offset: -3.0; }
}}}



//districts
[zoom <= 6]{
['type'='district']{ 
  polygon-fill:@mai_ndombe;
  polygon-opacity:0.2;
  line-color:#222222;
  line-opacity:0.4;
      ::doublestroke{
    line-color: @mai_ndombe;
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
}}
  
['type'='territory']{ 
  polygon-fill:@mai_ndombe;
  polygon-opacity:0;
  line-color:#222222;
  line-opacity:0;
          ::doublestroke{
    line-color: @mai_ndombe;
    line-comp-op: multiply;
    line-opacity:0;
    line-cap: butt;
    line-join: miter;
          [zoom <= 4]{ line-width: 0.5; }
    [zoom = 5]{ line-width: 1.0; line-offset: -0.5; }
    [zoom = 6]{ line-width: 2.0; line-offset: -1.0; }
    [zoom = 7]{ line-width: 3.0; line-offset: -1.5; }
    [zoom = 8]{ line-width: 4.0; line-offset: -2.0; }
    [zoom = 9]{ line-width: 5.0; line-offset: -2.5; }
    [zoom >= 10]{ line-width: 6.0; line-offset: -3.0; }
}}

  
['type'='sector']{ 
  polygon-fill:@mai_ndombe;
  polygon-opacity:0;
  line-color:#222222;
  line-opacity:0;
          ::doublestroke{
    line-color: @mai_ndombe;
    line-comp-op: multiply;
    line-opacity:0;
    line-cap: butt;
    line-join: miter;
    [zoom <= 4]{ line-width: 0.5; }
    [zoom = 5]{ line-width: 1.0; line-offset: -0.5; }
    [zoom = 6]{ line-width: 2.0; line-offset: -1.0; }
    [zoom = 7]{ line-width: 3.0; line-offset: -1.5; }
    [zoom = 8]{ line-width: 4.0; line-offset: -2.0; }
    [zoom = 9]{ line-width: 5.0; line-offset: -2.5; }
    [zoom >= 10]{ line-width: 6.0; line-offset: -3.0; }
}}}




/*
@mai_ndombe: #71f1cf;
#mai_ndombe {
  polygon-opacity:0.05;
  polygon-fill:@mai_ndombe;
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
    line-color: @mai_ndombe;
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
      text-name:[name];
      text-face-name:@sans;
      text-size:10;
      [zoom>=10]{ text-size:12; }
      [zoom>=12]{ text-size:20; }
      text-fill:lighten(@text_fill,25%);
      text-halo-radius:1;
      text-halo-fill:@text_halo_fill;
      text-character-spacing:1.5;
      text-transform:uppercase;
      text-dy:-8;
      text-min-path-length:100;
*/