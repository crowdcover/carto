@1: white;//#fff6e5;
@2: #fffbe9;
@3: #cdd488;
@4: #95a12e;
@5: #58600e;

#landuse {
  polygon-opacity:0.5;
  polygon-comp-op: multiply;
  polygon-fill: transparent;
  [occupation = 'Foret']{
    polygon-fill: @5;
  }
  [occupation = 'Mosaïq F&Ag']{
    polygon-fill: @4;
  }
  //swamp
  [occupation = 'Savane']{
    polygon-fill: @3;
  }
  //line-color:#000000;
  //line-width:0.3;
  //line-opacity: 0.6;
}

