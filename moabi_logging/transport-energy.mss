@road_casing: darken(@d_orange, 15);
@road_fill: @l_yellow;

//@water_blue: desaturate(darken(@l_blue, 15), 35);
@water_blue: desaturate(@l_blue, 10);

#rivers_major {
  [DESCRIPTIO = 'Fleuve']{
    polygon-fill: @water_blue;
  }
  [DESCRIPTIO =~ 'Rivière .*']{
    polygon-fill: @water_blue;/*
    line-color: @water_blue;
    [zoom <= 5] { line-opacity: 0.5; line-width: 0.6; }
    [zoom = 6] { line-opacity: 0.5; line-width: 0.7; }
    [zoom = 7] { line-opacity: 0.5; line-width: 0.8; }
    [zoom = 8] { line-opacity: 0.5; line-width: 1.0; }
    [zoom = 9] { line-opacity: 0.6; line-width: 1.2; }
    [zoom >= 10] { line-opacity: 0.8; line-width: 1.4; }
  */}
}

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


/***********************************************/
/*******************Energy**********************/
/***********************************************/

//note: source: dams—Herve; ae—Africa Energy
//because the two dams datasets do not match, I am just using the ae shape.
//to integrate the dams shapefile, filter ae_hydro by adding [duplicate != y]

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
  marker-fill: white;
  marker-line-width: 0;
  marker-line-color: @energy;
  [waterway = 'dam'] { marker-fill: desaturate(lighten(@energy, 30), 20); }
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

#hydropower::label[zoom >= 5]{
  [waterway = 'dam']{ 
    text-name: "[name]";
    text-face-name: @sans_bold; 
    text-fill: @energy; 
    text-halo-fill: @label_halo;
    text-halo-radius: 1.2;
    text-placement-type: simple;
    text-placements: "E,W,N,S";
    text-dx: 7;
    text-dy: 7;
    text-wrap-width: 20;
    text-wrap-before: true;
    text-wrap-character: ";";
    text-character-spacing: 1;
  [zoom = 5]{ text-size: 8; }
  [zoom = 6]{ text-size: 10; }
  [zoom = 7]{ text-size: 12; }
  [zoom = 8]{ text-size: 13; }
  [zoom = 9]{ text-size: 14; }
  [zoom >= 10]{ text-size: 15; }
  }
  [waterway = 'proposed']{ 
    text-name: "[name]";
    text-face-name: @sans; 
    text-fill: desaturate(lighten(@energy, 5), 5);
    text-halo-fill: @label_halo;
    text-halo-radius: 1.2;
    text-placement-type: simple;
    text-placements: "E,W,N,S";
    text-dx: 7;
    text-dy: 7;
    text-wrap-width: 40;
    text-wrap-before: true;
    text-wrap-character: ";";
    text-character-spacing: 1;
  [zoom = 5]{ text-size: 8; }
  [zoom = 6]{ text-size: 10; }
  [zoom = 7]{ text-size: 12; }
  [zoom = 8]{ text-size: 13; }
  [zoom = 9]{ text-size: 14; }
  [zoom >= 10]{ text-size: 15; }
  }
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
  [power = 'proposed']{
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
