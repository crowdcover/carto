

/***********************************************/
/*******************Energy**********************/
/***********************************************/

//note: source: dams—Herve; ae—Africa Energy
//because the two dams datasets do not match, I am just using the ae shape.
//to integrate the dams shapefile, filter ae_hydro by adding [duplicate != y]

@energy: @red; //#dd4f3a;

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

