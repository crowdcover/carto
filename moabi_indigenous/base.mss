//base
@forest_green: #79750A;
@wood_brown: #976A2F;
@muted_blue: #7FA67A;
@muted_green: #D5D595;
@clay: #DAB37A;

@d_blue: #243060;
@l_blue: #8697d1;
@d_green: #5d6223;
@l_green: #dae57e;
@d_purple: #614975;
@l_purple: #9c97c9;
@d_red: #672c2d;
@l_red: #bd5f3a;
@d_orange: #d8912e;
@l_yellow: #fae78f;

@water: #222;
@admin_dark: #222222;
@admin_light: #808080;
@shadow: #000000;
@shadow_opacity: 0.7;

@orange: #E98017;
@yellow: #f1dd06; //#E7D500;
@red: #c02535; //#C1404B;
@maroon: #6B292B;

Map { buffer-size: 128; }

/***********************************************/
/*******************Indigenous******************/
/***********************************************/
@indigenous: @l_blue;

#indigenous {
  polygon-opacity:0.5;
  polygon-fill:@indigenous;
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
    line-color: @indigenous;
    line-comp-op: multiply;
    line-opacity:0.3;
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