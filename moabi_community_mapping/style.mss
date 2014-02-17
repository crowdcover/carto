#excites {
  [type = '0'],
  [type = '1'],
  [type = '2'],
  [type = '3'],
  [type = '4'] {
    marker-allow-overlap: false;
    marker-file: url(../img/icon/agriculture.svg);
    [zoom <= 16]{ marker-transform: "scale(0.1)"; }
    [zoom = 17]{ marker-transform: "scale(0.14)"; }
    [zoom >= 18]{ marker-transform: "scale(0.16)"; }
  }
  [type = '18'],
  [type = '19'],
  [type = '20'],
  [type = '21'],
  [type = '22'],
  [type = '32'],
  [type = '33'],
  [type = '34'],
  [type = '35'],
  [type = '36'] {
    marker-allow-overlap: false;
    marker-file: url(../img/icon/agriculture_destoyed.svg);
    [zoom <= 16]{ marker-transform: "scale(0.1)"; }
    [zoom = 17]{ marker-transform: "scale(0.14)"; }
    [zoom >= 18]{ marker-transform: "scale(0.16)"; }
  }
  [type = '6'],
  [type = '7'],
  [type = '47'],
  [type = '48'],
  [type = '49'],
  [type = '50'] {
    marker-allow-overlap: false;
    marker-file: url(../img/icon/community.svg);
    [zoom <= 16]{ marker-transform: "scale(0.1)"; }
    [zoom = 17]{ marker-transform: "scale(0.14)"; }
    [zoom >= 18]{ marker-transform: "scale(0.16)"; }
  }
  [type = '8'],
  [type = '9'],
  [type = '10'],
  [type = '16'] {
    marker-allow-overlap: false;
    marker-file: url(../img/icon/fish.svg);
    [zoom <= 16]{ marker-transform: "scale(0.1)"; }
    [zoom = 17]{ marker-transform: "scale(0.14)"; }
    [zoom >= 18]{ marker-transform: "scale(0.16)"; }
  }
  [type = '11'],
  [type = '12'],
  [type = '13'],
  [type = '14'] {
    marker-allow-overlap: false;
    marker-file: url(../img/icon/food_bag.svg);
    [zoom <= 16]{ marker-transform: "scale(0.09)"; }
    [zoom = 17]{ marker-transform: "scale(0.13)"; }
    [zoom >= 18]{ marker-transform: "scale(0.16)"; }
  }
  [type = '24'],
  [type = '25'],
  [type = '26'],
  [type = '27'],
  [type = '38'],
  [type = '39'],
  [type = '20'],
  [type = '41'] {
    marker-allow-overlap: false;
    marker-file: url(../img/icon/food_bag_destroyed.svg);
    [zoom <= 16]{ marker-transform: "scale(0.1)"; }
    [zoom = 17]{ marker-transform: "scale(0.14)"; }
    [zoom >= 18]{ marker-transform: "scale(0.16)"; }
  }
  [type = '15'],
  [type = '17'] {
    marker-allow-overlap: false;
    marker-file: url(../img/icon/paw.svg);
    [zoom <= 16]{ marker-transform: "scale(0.1)"; }
    [zoom = 17]{ marker-transform: "scale(0.14)"; }
    [zoom >= 18]{ marker-transform: "scale(0.16)"; }
  }
  [type = '30'],
  [type = '31'],
  [type = '44'],
  [type = '61'],
  [type = '62'] {
    marker-allow-overlap: false;
    marker-file: url(../img/icon/logging_illegal.svg);
    [zoom <= 16]{ marker-transform: "scale(0.1)"; }
    [zoom = 17]{ marker-transform: "scale(0.14)"; }
    [zoom >= 18]{ marker-transform: "scale(0.16)"; }
  }
  [type = '28'],
  [type = '29'],
  [type = '42'],
  [type = '43'],
  [type = '45'],
  [type = '46'],
  [type = '55'],
  [type = '56'],
  [type = '37'],
  [type = '58'],
  [type = '59'],
  [type = '60'] {
    marker-allow-overlap: false;
    marker-file: url(../img/icon/logging.svg);
    [zoom <= 16]{ marker-transform: "scale(0.1)"; }
    [zoom = 17]{ marker-transform: "scale(0.14)"; }
    [zoom >= 18]{ marker-transform: "scale(0.16)"; }
  }
  [type = '5'] {
    marker-allow-overlap: false;
    marker-file: url(../img/icon/tree.svg);
    [zoom <= 16]{ marker-transform: "scale(0.1)"; }
    [zoom = 17]{ marker-transform: "scale(0.14)"; }
    [zoom >= 18]{ marker-transform: "scale(0.16)"; }
  }
  [type = '23'],
  [type = '37'] {
    marker-allow-overlap: false;
    marker-file: url(../img/icon/tree_destroyed.svg);
    [zoom <= 16]{ marker-transform: "scale(0.1)"; }
    [zoom = 17]{ marker-transform: "scale(0.14)"; }
    [zoom >= 18]{ marker-transform: "scale(0.16)"; }
  }
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

/**************** Terrain ***************************/
#terrain [zoom >= 6]{
  raster-opacity:0.6;
  raster-scaling:lanczos;
  raster-colorizer-default-mode: linear;
  raster-colorizer-default-color: transparent;
  raster-colorizer-stops: 
    stop(0, #000)
    stop(170, rgb(170,170,170))
    stop(180, #fff);
  }