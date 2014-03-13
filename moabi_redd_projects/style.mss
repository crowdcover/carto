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

#redd {
  polygon-opacity:0.6;
  polygon-comp-op: multiply;
  polygon-fill:@l_green;
  line-color:darken(@l_green, 50%);
  line-opacity:1;
  line-join: round;
  [zoom <= 3]{ line-width: 0.3; }
  [zoom = 4]{ line-width: 0.4; }
  [zoom = 5]{ line-width: 0.5; }
  [zoom = 6]{ line-width: 0.6; }
  [zoom = 7]{ line-width: 0.7; }
  [zoom = 8]{ line-width: 0.8; }
  [zoom = 9]{ line-width: 0.9; }
  [zoom >= 10]{ line-width:2.0; }
}