/***********************************************/
/*******************Energy**********************/
/***********************************************/

//note: source: dams—Herve; ae—Africa Energy
//because the two dams datasets do not match, I am just using the ae shape.
//to integrate the dams shapefile, filter ae_hydro by adding [duplicate != y]

@energy: @red; //#dd4f3a;

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
