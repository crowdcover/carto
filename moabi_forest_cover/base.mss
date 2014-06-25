@water: #222;
@admin_dark: #222222;
@admin_light: #808080;
@shadow: #000000;
@shadow_opacity: 0.6;

@pattern-opacity: 0.8;

#protected {
  polygon-opacity: 0.3;
  polygon-fill: #d0ffab;
  /*[zoom <= 18]{ 
    //polygon-pattern-file: url('/Users/jamesconkling/Documents/Data/pattern/d_green_stripe/large_stripe_d_green.png');
    //polygon-pattern-file: url('/Users/jamesconkling/Documents/Data/pattern/stripe_black_#000000/small.png');
    polygon-pattern-file: url('../img/stripe_m_gray_#999999/small.png');
    polygon-pattern-opacity: @pattern-opacity;
    polygon-pattern-comp-op: multiply;
    polygon-pattern-alignment: global;
  }
  [zoom <= 7]{ 
    //polygon-pattern-file: url('/Users/jamesconkling/Documents/Data/pattern/d_green_stripe/small_stripe_d_green.png');
    //polygon-pattern-file: url('/Users/jamesconkling/Documents/Data/pattern/stripe_black_#000000/ex_small.png');
    polygon-pattern-file: url('../img/stripe_m_gray_#999999/ex_small.png');
    polygon-pattern-opacity: @pattern-opacity;
    polygon-pattern-comp-op: multiply;
    polygon-pattern-alignment: global;
  }*/
  line-color:black;
  line-width: 0.6;
  line-opacity:0.4;
  line-dasharray:8,4;
  [zoom <= 3]{ line-width: 0.1; }
  [zoom = 4]{ line-width: 0.1; }
  [zoom = 5]{ line-width: 0.2; }
  [zoom = 6]{ line-width: 0.3; }
  [zoom = 7]{ line-width: 0.4; }
  [zoom = 8]{ line-width: 0.5; }
  [zoom = 9]{ line-width: 0.6; }
  [zoom >= 10]{ line-width:0.8; }
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
//@sans: "Helvetica Neue Regular", "Helvetica Neue Light", "Helvetica Neue Medium", "Helvetica Neue Thin";
//@sans_bold:"Helvetica Neue Bold";

@sans: "DejaVu Sans Book", "DejaVu Sans Condensed", "Helvetica CY Plain"; 
@sans_bold: "DejaVu Sans Condensed Bold", "DejaVu Sans Bold", "Helvetica CY Bold";

@admin0_label: #222222;
@admin1_label: #747474;
@city_label: #505050;
@label_halo: rgba(230,230,230,1);

#admin0 {
  line-color: @admin_dark;
  line-join: round;
  line-cap: round;
  [zoom <= 4]{ line-width: 0.8; }
  [zoom = 5]{ line-width: 1.0; }
  [zoom = 6]{ line-width: 1.2; }
  [zoom = 7]{ line-width: 1.3; }
  [zoom = 8]{ line-width: 1.4; }
  [zoom = 9]{ line-width: 1.5; }
  [zoom = 10]{ line-width: 1.6; }
  [zoom = 11]{ line-width: 1.7; }
  [zoom >= 12]{ line-width: 1.8; }
}

#admin1 [adm0_a3 = 'COD']{
  line-color: @admin_light;
  line-smooth: 1;
  line-comp-op: multiply;
  [zoom <= 4]{ line-width: 0.3; }
  [zoom = 5]{ line-width: 0.4; }
  [zoom = 6]{ line-width: 0.55; }
  [zoom = 7]{ line-width: 0.7; }
  [zoom = 8]{ line-width: 0.8; }
  [zoom = 9]{ line-width: 1.0; }
  [zoom = 10]{ line-width: 1.2; }
  [zoom = 11]{ line-width: 1.4; }
  [zoom >= 12]{ line-width: 1.6; }
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
  line-color: @shadow;
  line-width: 0.1;
}

#cities [ADM0NAME = 'Congo (Kinshasa)']{
  //[SCALERANK<=3][zoom>=5],
  //[SCALERANK<=4][zoom>=5],
  [SCALERANK<=5][zoom>=6],
  [SCALERANK=6][zoom>=7],
  [SCALERANK=7][zoom>=7],
  [SCALERANK=8][zoom>=8],
  [SCALERANK=9][zoom>=8],
  [SCALERANK=10][zoom>=8] {
    text-name:'[NAMEASCII]';
    text-face-name:@sans;
    text-fill:@city_label;
    text-size:10;
    text-halo-radius:1.4;
    text-halo-fill: @label_halo;
    text-character-spacing: 2;
    text-dy:-5;
    marker-width:2;
    marker-fill:@city_label;
    marker-comp-op:multiply;
  }/*
  [zoom=5] {
    [SCALERANK<3] { text-size: 12; text-character-spacing: 1.2; }
    [SCALERANK=3] { text-size: 12; }
    [SCALERANK=4] { text-size: 11; }
  }*/
  [zoom=6] {
    [SCALERANK<3] { text-size: 13; text-character-spacing: 1.3; }
    [SCALERANK=3] { text-size: 13; text-character-spacing: 1.3; }
    [SCALERANK=4] { text-size: 12; text-character-spacing: 1.2; }
    [SCALERANK=5] { text-size: 11; }
  }
  [zoom=7] {
    [SCALERANK<3] { text-size: 15; text-character-spacing: 1.3; }
    [SCALERANK=3] { text-size: 14; text-character-spacing: 1.3; }
    [SCALERANK=4] { text-size: 13; text-character-spacing: 1.3; }
    [SCALERANK=5] { text-size: 12; text-character-spacing: 1.2; }
    [SCALERANK=6] { text-size: 11; }
    [SCALERANK=7] { text-size: 11; }
  }
  [zoom=8] {
    [SCALERANK<3] { text-size: 15; text-character-spacing: 1.4; }
    [SCALERANK=3] { text-size: 15; text-character-spacing: 1.3; }
    [SCALERANK=4] { text-size: 14; text-character-spacing: 1.3; }
    [SCALERANK=5] { text-size: 14; text-character-spacing: 1.2; }
    [SCALERANK=6] { text-size: 13; text-character-spacing: 1.2; }
    [SCALERANK=7] { text-size: 13; }
    [SCALERANK=8] { text-size: 12; }
    [SCALERANK=9] { text-size: 11; }
  }
  [zoom=9] {
    [SCALERANK<3] { text-size: 16; text-character-spacing: 1.4; }
    [SCALERANK=3] { text-size: 16; text-character-spacing: 1.3; }
    [SCALERANK=4] { text-size: 15; text-character-spacing: 1.3; }
    [SCALERANK=5] { text-size: 15; text-character-spacing: 1.3; }
    [SCALERANK=6] { text-size: 14; text-character-spacing: 1.3; }
    [SCALERANK=7] { text-size: 14; text-character-spacing: 1.2; }
    [SCALERANK=8] { text-size: 13; }
    [SCALERANK=9] { text-size: 13; }
    [SCALERANK=10] { text-size: 12; }
  }
  [zoom=10] {
    [SCALERANK<3] { text-size: 16; text-character-spacing:1.8; }
    [SCALERANK=3] { text-size: 16; text-character-spacing:1.8; }
    [SCALERANK=4] { text-size: 15; text-character-spacing:1.4; }
    [SCALERANK=5] { text-size: 15; text-character-spacing:1.4; }
    [SCALERANK=6] { text-size: 15; text-character-spacing:1.3; }
    [SCALERANK=7] { text-size: 14; text-character-spacing: 1.3; }
    [SCALERANK=8] { text-size: 14; text-character-spacing: 1.2; }
    [SCALERANK=9] { text-size: 13; }
    [SCALERANK=10] { text-size: 13; }
  }
  [zoom>10] {
    [SCALERANK<3] { text-size: 16; text-character-spacing:2.5; }
    [SCALERANK=3] { text-size: 16; text-character-spacing:2.5; }
    [SCALERANK=4] { text-size: 16; text-character-spacing:2.5; }
    [SCALERANK=5] { text-size: 15; text-character-spacing:2; }
    [SCALERANK=6] { text-size: 15; text-character-spacing:2; }
    [SCALERANK=7] { text-size: 15; text-character-spacing:1.8; }
    [SCALERANK=8] { text-size: 14; text-character-spacing:1.6; }
    [SCALERANK=9] { text-size: 14; text-character-spacing:1; }
    [SCALERANK=10] { text-size: 14; text-character-spacing:1; }
  }
}


/**************** Terrain ***************************/
#hillshade [zoom < 6]{
  raster-opacity: 0.6;
  [zoom = 6]{ raster-opacity: 0.4; }
  raster-scaling: lanczos;
  raster-colorizer-default-mode: linear;
  raster-colorizer-default-color: transparent;
  raster-colorizer-stops: 
    stop(0, #000)
    stop(185, rgb(185,185,185))
    stop(207, #fff);
}

#hillshade_highzoom [zoom >= 6]{
  raster-opacity: 0.2;
  raster-scaling:lanczos;
  raster-colorizer-default-mode: linear;
  raster-colorizer-default-color: transparent;
  raster-colorizer-stops: 
    stop(0, #000)
    stop(170, rgb(170,170,170)) 
    stop(180, #fff);
  [zoom = 13]{ raster-opacity: 0.2; }
  [zoom = 14]{ raster-opacity: 0.3; }
  [zoom = 15]{ raster-opacity: 0.4; }
  [zoom >= 16]{ raster-opacity: 0.5; }
}

#slope [zoom >= 6]{
  raster-scaling: lanczos;
  raster-comp-op: multiply;
  raster-colorizer-default-mode: linear;
  raster-colorizer-default-color: transparent;
  [zoom = 6]{
    raster-opacity: 0.6;
    raster-colorizer-stops: 
      stop(0, rgba(255, 255, 255,0))
      stop(60, rgb(50, 50, 50))
  }
  [zoom >= 7]{
    raster-opacity: 0.5;
    raster-colorizer-stops: 
      stop(0, rgba(255, 255, 255,0))
      stop(60, rgb(0, 0, 0))
  }
  [zoom >= 9] { raster-opacity: 0.4; }
  [zoom = 10]{
    raster-colorizer-stops: 
      stop(0, rgba(255, 255, 255, 0))
      stop(10, rgba(200, 200, 200, 0.1))
      stop(60, rgb(0, 0, 0))
  }
  [zoom = 11]{
    raster-colorizer-stops: 
      stop(0, rgba(255, 255, 255, 0))
      stop(10, rgba(190, 190, 190, 0.1))
      stop(60, rgb(0, 0, 0))
  }
  [zoom = 12]{
    raster-colorizer-stops: 
      stop(0, rgba(255, 255, 255, 0))
      stop(10, rgba(180, 180, 180, 0.1))
      stop(60, rgb(0, 0, 0))
  }
  [zoom = 13]{
    raster-colorizer-stops: 
      stop(0, rgba(255, 255, 255, 0))
      stop(10, rgba(170, 170, 170, 0.1))
      stop(60, rgb(0, 0, 0))
  }
  [zoom = 14]{
    raster-colorizer-stops: 
      stop(0, rgba(255, 255, 255, 0))
      stop(10, rgba(165, 165, 165, 0.1))
      stop(60, rgb(0, 0, 0))
  }
  [zoom = 15]{
    raster-colorizer-stops: 
      stop(0, rgba(255, 255, 255, 0))
      stop(10, rgba(160, 160, 160, 0.1))
      stop(60, rgb(0, 0, 0))
  }
  [zoom >= 16]{
    raster-colorizer-stops: 
      stop(0, rgba(255, 255, 255, 0))
      stop(10, rgba(150, 150, 150, 0.1))
      stop(60, rgb(0, 0, 0))
  }
}

#contour_20 [zoom >= 9]{
  line-color: #4a352c;
  line-comp-op: multiply;
  line-smooth: 1;
  [zoom = 9]{ line-width: 0.01; }
  [zoom = 10]{ line-width: 0.06; }
  [zoom = 11]{ line-width: 0.12; line-opacity: 0.8; }
  [zoom = 12]{ line-width: 0.18; line-opacity: 0.7; }
  [zoom = 13]{ line-width: 0.25; line-opacity: 0.6; }
  [zoom = 14]{ line-width: 0.3; line-opacity: 0.5; }
  [zoom = 15]{ line-width: 0.35; line-opacity: 0.4; }
  [zoom = 16]{ line-width: 0.4; line-opacity: 0.3; }
  [zoom = 17]{ line-width: 0.45; line-opacity: 0.2; }
  [zoom >= 18]{ line-width: 0.5; line-opacity: 0.1; }
  [C100 = 100]{
    [zoom = 9]{ line-width: 0.08; }
    [zoom = 10]{ line-width: 0.15; }
    [zoom = 11]{ line-width: 0.3; }
    [zoom = 12]{ line-width: 0.4; }
    [zoom >= 13]{ 
      line-width: 0.55; /*
      text-name: '[ELEV]';
      text-face-name: @sans;
      text-size: 8;
      text-fill: #4a352c;
      text-halo-fill: #bbb;
      text-halo-radius: 0.8;
      text-placement: line; */
    }
    [zoom = 14]{ line-width: 0.7; }
    [zoom = 15]{ line-width: 0.85; }
    [zoom = 16]{ line-width: 1.0; }
    [zoom = 17]{ line-width: 1.1; }
    [zoom >= 18]{ line-width: 1.2; }
  }
}
