@1: white;//#fff6e5;
@2: #fffbe9;
@3: #cdd488;
@4: #95a12e;
@5: #58600e;

#forest_stratification {
  polygon-opacity:0.5;
  polygon-comp-op: multiply;
  polygon-fill: transparent;
  [stratif = 'Foret dense semi-sempervirente']{
    polygon-fill: @5;
  }
  [stratif = 'Foret secondaire']{
    polygon-fill: @4;
  }
  //swamp
  [stratif = 'Marecage']{
    polygon-fill: @3;
  }
  //swamp meadow
  [stratif = 'Prairie marecageuse']{
    polygon-fill: darken(@2, 15%);
  }
  //savannah 
  [stratif = 'Savane']{
    polygon-fill: @2;
  }
  //line-color:#999;
  //line-width:0.3;
  //line-opacity: 0.6;
}