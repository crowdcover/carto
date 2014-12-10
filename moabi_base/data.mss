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

@sans: "DejaVu Sans Book", "DejaVu Sans Condensed", "Helvetica CY Plain"; 
@sans_bold: "DejaVu Sans Condensed Bold", "DejaVu Sans Bold", "Helvetica CY Bold";

@admin0_label: #222222;
@admin1_label: #747474;
@city_label: #505050;
@label_halo: rgba(230,230,230,1);

#redd {
  polygon-opacity:0.4;
  polygon-fill:@l_green;
  //polygon-comp-op:multiply;
  line-color:@admin_dark;
  line-opacity:0.8;
  line-join: round;
  [zoom <= 3]{ line-width: 0.1; }
  [zoom = 4]{ line-width: 0.2; }
  [zoom = 5]{ line-width: 0.3; }
  [zoom = 6]{ line-width: 0.4; }
  [zoom = 7]{ line-width: 0.5; }
  [zoom = 8]{ line-width: 0.6; }
  [zoom = 9]{ line-width: 0.7; }
  [zoom >= 10]{ line-width:0.8; }
  ::doublestroke{
    line-color: darken(@l_green, 5%);
    line-comp-op: multiply;
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

@road_casing: darken(@d_orange, 15);
@road_fill: @l_yellow;

#road {
  line-width: 1;
  line-opacity: 0.4;
  ::casing {
    line-cap: round;
    line-join: round;
    line-simplify: 1.0;
    line-color: @road_casing;
    [zoom = 5] { line-width: 0; line-opacity: 0.7; }
    [zoom = 6] { line-width: 2.1; line-opacity: 0.7; }
    [zoom = 7] { line-width: 2.4; line-opacity: 0.7; }
    [zoom = 8] { line-width: 2.7; line-opacity: 0.7; }
    [zoom = 9] { line-width: 3.0; line-opacity: 0.7; line-gamma: 0.75; }
    [zoom = 10] { line-width: 5; line-opacity: 0.8; line-gamma: 0.75; }
    [zoom >= 11] { line-width: 6; line-opacity: 0.8; line-gamma: 0.75; }
  }
  ::fill {
    line-cap: round;
    line-join: round;
    line-simplify: 1.0;
    line-color: @road_fill;
    line-opacity: 1;
    [zoom = 5] { line-width: 0.7; line-color: darken(@road_fill, 20); line-gamma: 0.75; }
    [zoom = 6] { line-width: 1.1; line-gamma: 0.75; }
    [zoom = 7] { line-width: 1.4; line-gamma: 0.75; }
    [zoom = 8] { line-width: 1.7; line-gamma: 0.75; }
    [zoom = 9] { line-width: 2.5; line-gamma: 0.75; }
    [zoom = 10] { line-width: 4.0; line-gamma: 0.75; }
    [zoom >= 11] { line-width: 5.0; line-gamma: 0.75; }
  }
}

#road::label[zoom >= 6][ref != ""]{
  shield-name: "[ref]";
  shield-size: 9;
  shield-face-name: @sans_bold;
  shield-fill: @city_label;
  shield-file: url(../img/shield_primary/shield-primary-3.png);
  [zoom = 6]{ shield-min-distance: 50; }
  [zoom = 7]{ shield-min-distance: 55; }
  [zoom = 8]{ shield-min-distance: 60; }
  [zoom = 9]{ shield-min-distance: 70; }
  [zoom >= 10]{ shield-min-distance: 80; }
}

@energy: @red; //#dd4f3a;

#hydropower {
  marker-opacity: 0;
  marker-line-width: 0;
  marker-allow-overlap: true;
  marker-comp-op: src-in;
    [zoom <= 2]{ marker-width: 2;  marker-line-width: 0.5;}
    [zoom = 3]{ marker-width: 2.5; marker-line-width: 0.5;}
    [zoom = 4]{ marker-width: 3.5; marker-line-width: 0.5;}
    [zoom = 5]{ marker-width: 4.5; marker-line-width: 0.7;}
    [zoom = 6]{ marker-width: 6; marker-line-width: 0.9; }
    [zoom = 7]{ marker-width: 8; marker-line-width: 1.0; }
    [zoom = 8]{ marker-width: 10; marker-line-width: 1.2; }
    [zoom = 9]{ marker-width: 12; marker-line-width: 1.3; }
    [zoom >= 10]{ marker-width: 13; marker-line-width: 1.4; }
}

#hydropower::circle {
  marker-allow-overlap: true;
  //marker-fill-opacity: 0;
  marker-fill: @energy;
  [proposed = 'yes'] { marker-fill: desaturate(lighten(@energy, 30), 25); }
  marker-line-color: white;
    [zoom <= 2]{ marker-width: 2;  marker-line-width: 0.5;}
    [zoom = 3]{ marker-width: 2.5; marker-line-width: 0.5;}
    [zoom = 4]{ marker-width: 3.5; marker-line-width: 0.5;}
    [zoom = 5]{ marker-width: 4.5; marker-line-width: 0.7;}
    [zoom = 6]{ marker-width: 6; marker-line-width: 0.9; }
    [zoom = 7]{ marker-width: 8; marker-line-width: 1.0; }
    [zoom = 8]{ marker-width: 10; marker-line-width: 1.2; }
    [zoom = 9]{ marker-width: 12; marker-line-width: 1.3; }
    [zoom = 10]{ marker-width: 13; marker-line-width: 1.4; }
    [zoom >= 11]{ marker-width: 14; marker-line-width: 1.5; }
  }

#transmission_lines {
  line-color: @energy;
  line-smooth: 0.3;
    [zoom <= 2]{ line-width: 0.5; }
    [zoom = 3]{ line-width: 0.5; }
    [zoom = 4]{ line-width: 0.6; }
    [zoom = 5]{ line-width: 1.2; }
    [zoom = 6]{ line-width: 2.0; }
    [zoom = 7]{ line-width: 2.5; }
    [zoom = 8]{ line-width: 3.0; }
    [zoom = 9]{ line-width: 3.5; }
    [zoom = 10]{ line-width: 3.5; }
    [zoom >= 11]{ line-width: 3.9; }
  [proposed = 'yes']{
    [zoom <= 2]{ line-dasharray: 0.4,0.9; }
    [zoom = 3]{ line-dasharray: 0.5,0.9; }
    [zoom = 4]{ line-dasharray: 0.6,1.0; }
    [zoom = 5]{ line-dasharray: 0.8,1.2; }
    [zoom = 6]{ line-dasharray: 1.0,1.4; }
    [zoom = 7]{ line-dasharray: 1.2,1.6; }
    [zoom = 8]{ line-dasharray: 1.4,1.8; }
    [zoom = 9]{ line-dasharray: 1.6,2.0; }
    [zoom >= 10]{ line-dasharray: 1.6,2.0; }
  }
}

@oil: @orange;
@mining: @yellow; //@muted_green;
@line1: #666;


#mining {
  polygon-fill: @mining;
  [type='research']{ 
    polygon-opacity: 0;
    line-opacity:0.6;
  }
  [type='exploration']{ 
    polygon-opacity: 0.7; 
    polygon-fill: @mining;
    line-opacity:0.8;
  }
  [type='exploitation']{ 
    polygon-opacity: 0.8;
    polygon-fill: spin(darken(@mining, 2%), -4%);
    polygon-pattern-comp-op: color-burn;
    polygon-pattern-alignment:global;
    [zoom <= 8]{polygon-pattern-file: url('../img/stripe_m_gray_#999999/ex_small.png');}
    [zoom > 8]{polygon-pattern-file: url('../img/stripe_m_gray_#999999/small.png');}
    line-opacity:1.0;
  }
  [type='other']{ 
    // just show thin black stroke
    polygon-opacity: 0;
  }
  line-color:@line1;
  [zoom = 4]{ line-width: 0.1; }
  [zoom = 5]{ line-width: 0.2; }
  [zoom = 6]{ line-width: 0.3; }
  [zoom = 7]{ line-width: 0.4; }
  [zoom = 8]{ line-width: 0.5; }
  [zoom = 9]{ line-width: 0.6; }
  [zoom >= 10]{ line-width:0.8; }
  ::doublestroke{
    [type='research']{line-color: fadeout(@mining,30%);}
    [type='exploration']{line-color: @mining;}
    [type='exploitation']{line-color: darken(@mining, 5%);}
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

#oil {
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
