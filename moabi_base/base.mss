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

@water: #333333;
@admin_dark: #222222;
@admin_light: #808080;
@shadow: #000000;
@shadow_opacity: 0.6;

@orange: #E98017;
@yellow: #f1dd06; //#E7D500;
@red: #c02535; //#C1404B;
@maroon: #6B292B;

Map { buffer-size: 512; }

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

@pattern-opacity: 1;

#protected {
  polygon-opacity: 0;
  polygon-fill: @d_green;
  polygon-smooth: 1;
  [zoom > 10]{ 
    //polygon-pattern-file: url('/Users/jamesconkling/Documents/Data/pattern/d_green_stripe/large_stripe_d_green.png');
    polygon-pattern-file: url('/Users/jamesconkling/Documents/Data/pattern/stripe_black_#000000/small.png');
    polygon-pattern-opacity: @pattern-opacity;
    polygon-pattern-alignment: global;
    polygon-pattern-smooth: 1;
  }
  [zoom <= 10]{ 
    //polygon-pattern-file: url('/Users/jamesconkling/Documents/Data/pattern/d_green_stripe/large_stripe_d_green.png');
    //polygon-pattern-file: url('/Users/jamesconkling/Documents/Data/pattern/stripe_black_#000000/small.png');
    polygon-pattern-file: url('/Users/jamesconkling/Documents/Data/pattern/stripe_m_gray_#999999/small.png');
    polygon-pattern-opacity: @pattern-opacity;
    polygon-pattern-alignment: global;
    polygon-pattern-smooth: 1;
  }
  [zoom <= 6]{ 
    //polygon-pattern-file: url('/Users/jamesconkling/Documents/Data/pattern/d_green_stripe/small_stripe_d_green.png');
    //polygon-pattern-file: url('/Users/jamesconkling/Documents/Data/pattern/stripe_black_#000000/ex_small.png');
    polygon-pattern-file: url('/Users/jamesconkling/Documents/Data/pattern/stripe_m_gray_#999999/ex_small.png');
    polygon-pattern-opacity: @pattern-opacity;
    polygon-pattern-alignment: global;
    polygon-pattern-smooth: 1;
  }
  line-color:black;
  line-smooth: 1;
  line-width: 0.6;
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

/**************** RAINFOREST ***************************/
@nodata: transparent;
@nonforest: transparent;

@facet_water: transparent;
@woodland: transparent;
@primary: rgba(0,0,0,0.3); //rgba(110,119,50, 0.6);
@secondary: rgba(0,0,0,0.2);//rgba(110,119,50, 0.6); //rgba(186,198,97, 0.6);

@loss00_05: transparent;
@loss05_10: transparent; 

#facet {
  //image-filters:agg-stack-blur(1,1);
  raster-opacity:0.6;
  raster-scaling:lanczos;
  raster-comp-op: multiply;
  raster-colorizer-default-mode: exact;
  raster-colorizer-default-color: transparent;
  raster-colorizer-stops: 
    stop(0, @nodata)
    stop(1, @nonforest)
    stop(2, @facet_water)
    stop(3, @nodata)
    stop(4, @woodland)
    stop(5, @primary)
    stop(6, @secondary)
    stop(7, @loss00_05)
    stop(8, @loss00_05)
    stop(9, @loss00_05)
    stop(10, @loss05_10)
    stop(11, @loss05_10)
    stop(12, @loss05_10)
  }


/**************** Rivers **************************/
/*
@water_gray: #aaa;
#rivers_major {
  [DESCRIPTIO = 'Fleuve']{
    polygon-fill: @water_gray;
  }
  [DESCRIPTIO =~ 'Rivière .*']{
    polygon-fill: @water_gray;
    line-color: @water_gray;
    [zoom <= 5] { line-opacity: 0.5; line-width: 0.6; }
    [zoom = 6] { line-opacity: 0.5; line-width: 0.7; }
    [zoom = 7] { line-opacity: 0.5; line-width: 0.8; }
    [zoom = 8] { line-opacity: 0.5; line-width: 1.0; }
    [zoom = 9] { line-opacity: 0.6; line-width: 1.2; }
    [zoom >= 10] { line-opacity: 0.8; line-width: 1.4; }
  }
}*/


/**************** ADMIN ***************************/
@sans: "Helvetica Neue Regular", "Helvetica Neue Light", "Helvetica Neue Medium", "Helvetica Neue Thin";
@sans_bold:"Helvetica Neue Bold";

@admin0_label: #222222;
@admin1_label: #747474;
@city_label: #606060;
@label_halo: rgba(255,255,255,.55);

#admin0 {
  line-opacity: 0.8;
  line-color: @admin_dark;
  [zoom <= 4]{ line-width: 0.5; }
  [zoom = 5]{ line-width: 0.6; }
  [zoom = 6]{ line-width: 0.7; }
  [zoom = 7]{ line-width: 0.85; }
  [zoom = 8]{ line-width: 1.0; }
  [zoom = 9]{ line-width: 1.2; }
  [zoom = 10]{ line-width: 1.4; }
  [zoom = 11]{ line-width: 1.6; }
  [zoom >= 12]{ line-width: 1.8; }
}

/*
#admin0::DRC {
  [adm0_a3_l = "COD"],[adm0_a3_r = "COD"]{
    line-opacity: 0.6;
    line-width:0.9;
    line-color:@admin_dark;
  }
}*/

#admin1 [adm0_a3 = 'COD']{
  line-color: @admin_light;
  [zoom <= 4]{ line-width: 0.3; }
  [zoom = 5]{ line-width: 0.4; }
  [zoom = 6]{ line-width: 0.55; }
  [zoom = 7]{ line-width: 0.7; }
  [zoom = 8]{ line-width: 0.8; }
  [zoom = 9]{ line-width: 0.9; }
  [zoom = 10]{ line-width: 1.0; }
  [zoom = 11]{ line-width: 1.2; }
  [zoom >= 12]{ line-width: 1.4; }
}

#ocean {
  polygon-opacity:1;
  polygon-fill: lighten(@shadow, 15%);
}

#lakes [DESCRIPTIO = 'Lac']{
  polygon-fill: @water;
}

#shadow [admin != 'Democratic Republic of the Congo']{
  polygon-fill: @shadow;
  polygon-opacity: @shadow_opacity;
  polygon-comp-op: multiply;
  line-opacity: 0.8;
  line-width:0.5;
  line-color:@admin_dark;
}

#cities [ADM0NAME = 'Congo (Kinshasa)']{
  [SCALERANK<=3][zoom>=5],
  [SCALERANK=4][zoom>=5],
  [SCALERANK=5][zoom>=6],
  [SCALERANK=6][zoom>=7],
  [SCALERANK=7][zoom>=7],
  [SCALERANK=8][zoom>=8],
  [SCALERANK=9][zoom>=8],
  [SCALERANK=10][zoom>=8] {
    text-name:'[NAMEASCII]';
    text-face-name:@sans;
    text-fill:@city_label;
    text-size:9;
    text-halo-radius:1.2;
    text-halo-fill: @label_halo;
    text-dy:-5;
    marker-width:3;
    marker-fill:@city_label;
    marker-comp-op:multiply;
  }
  [zoom=5] {
    [SCALERANK<3] { text-size: 13; }
    [SCALERANK=3] { text-size: 12; }
    [SCALERANK=4] { text-size: 11; }
  }
  [zoom=6] {
    [SCALERANK<3] { text-size: 14; }
    [SCALERANK=3] { text-size: 13; }
    [SCALERANK=4] { text-size: 12; }
    [SCALERANK=5] { text-size: 11; }
  }
  [zoom=7] {
    [SCALERANK<3] { text-size: 15; }
    [SCALERANK=3] { text-size: 14; }
    [SCALERANK=4] { text-size: 13; }
    [SCALERANK=5] { text-size: 12; }
    [SCALERANK=6] { text-size: 11; }
    [SCALERANK=7] { text-size: 11; }
  }
  [zoom=8] {
    [SCALERANK<3] { text-size: 15; }
    [SCALERANK=3] { text-size: 15; }
    [SCALERANK=4] { text-size: 14; }
    [SCALERANK=5] { text-size: 14; }
    [SCALERANK=6] { text-size: 13; }
    [SCALERANK=7] { text-size: 13; }
    [SCALERANK=8] { text-size: 12; }
    [SCALERANK=9] { text-size: 11; }
  }
  [zoom=9] {
    [SCALERANK<3] { text-size: 16; }
    [SCALERANK=3] { text-size: 16; }
    [SCALERANK=4] { text-size: 15; }
    [SCALERANK=5] { text-size: 15; }
    [SCALERANK=6] { text-size: 14; }
    [SCALERANK=7] { text-size: 14; }
    [SCALERANK=8] { text-size: 13; }
    [SCALERANK=9] { text-size: 13; }
    [SCALERANK=10] { text-size: 12; }
  }
  [zoom=10] {
    [SCALERANK<3] { text-size: 16; text-character-spacing:2; }
    [SCALERANK=3] { text-size: 16; text-character-spacing:2; }
    [SCALERANK=4] { text-size: 15; text-character-spacing:1; }
    [SCALERANK=5] { text-size: 15; text-character-spacing:1; }
    [SCALERANK=6] { text-size: 15; text-character-spacing:1; }
    [SCALERANK=7] { text-size: 14; }
    [SCALERANK=8] { text-size: 14; }
    [SCALERANK=9] { text-size: 13; }
    [SCALERANK=10] { text-size: 13; }
  }
  [zoom>10] {
    [SCALERANK<3] { text-size: 16; text-character-spacing:3; }
    [SCALERANK=3] { text-size: 16; text-character-spacing:3; }
    [SCALERANK=4] { text-size: 16; text-character-spacing:3; }
    [SCALERANK=5] { text-size: 15; text-character-spacing:2; }
    [SCALERANK=6] { text-size: 15; text-character-spacing:2; }
    [SCALERANK=7] { text-size: 15; text-character-spacing:2; }
    [SCALERANK=8] { text-size: 14; text-character-spacing:1; }
    [SCALERANK=9] { text-size: 14; text-character-spacing:1; }
    [SCALERANK=10] { text-size: 14; text-character-spacing:1; }
  }
}


/**************** Terrain ***************************/
#terrain_highzoom [zoom >= 6]{
  raster-opacity:0.6;
  raster-scaling:lanczos;
  raster-colorizer-default-mode: linear;
  raster-colorizer-default-color: transparent;
  raster-colorizer-stops: 
    stop(0, #000)
    stop(170, rgb(170,170,170))
    stop(180, #fff);
  }

#terrain [zoom < 6]{
  raster-opacity:0.6;
  raster-scaling:lanczos;
  raster-colorizer-default-mode: linear;
  raster-colorizer-default-color: transparent;
  raster-colorizer-stops: 
    stop(0, #000)
    stop(185, rgb(185,185,185))
    stop(207, #fff);
}


/***********************************************/
/*******************Indigenous******************/
/***********************************************/
@indigenous: @l_blue;

#indigenous {
  polygon-opacity:0.5;
  polygon-fill:@indigenous;
  //comp-op: multiply;
  line-color:@admin_dark;
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


#hydropower {
  marker-width:6;
  marker-fill:#f45;
  marker-line-color:#813;
  marker-allow-overlap:true;
}

