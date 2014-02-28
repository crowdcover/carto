@1: #2B83BA;
@2: #ABDDA4;
@3: #FFFFBF;
@4: #FDAE61;
@5: #D7191C;
@6: #990700;
@1: #2B83BA;
@2: #ABDDA4;
@3: #FFFFBF;
@4: #FDAE61;
@5: #D7191C;
@6: #990700;
Map{ background-color: white }
#gfc_10N,
#gfc_00N,
#gfc_10S {
  raster-opacity:1;
  //image-filters:agg-stack-blur(5,5);
  raster-scaling: lanczos;
  [zoom >= 12]{ raster-scaling: gaussian; }
  raster-colorizer-default-mode: linear;
  raster-colorizer-default-color: transparent;
  raster-colorizer-stops:
    stop(10, fadeout(@1, 100%))
    stop(20, @1)
    stop(50, @2)
    stop(70, @3)
    stop(90, @4)
    stop(99, @5)
    stop(100, @6)
}

#slope [zoom >= 5]{
  raster-scaling: lanczos;
  raster-comp-op: multiply;
  raster-colorizer-default-mode: linear;
  raster-colorizer-default-color: transparent;
  raster-opacity: 1;
  [zoom >= 5]{
    raster-colorizer-stops: 
      stop(0, rgb(255, 255, 255))
      stop(60, rgb(50, 50, 50))
  }
  [zoom >= 7]{
    raster-colorizer-stops: 
      stop(0, rgb(255, 255, 255))
      stop(60, rgb(0, 0, 0))
  }
  [zoom = 10]{
    raster-colorizer-stops: 
      stop(0, rgb(255, 255, 255))
      stop(10, rgb(200, 200, 200))
      stop(60, rgb(0, 0, 0))
  }
  [zoom = 11]{
    raster-colorizer-stops: 
      stop(0, rgb(255, 255, 255))
      stop(10, rgb(190, 190, 190))
      stop(60, rgb(0, 0, 0))
  }
  [zoom = 12]{
    raster-colorizer-stops: 
      stop(0, rgb(255, 255, 255))
      stop(10, rgb(180, 180, 180))
      stop(60, rgb(0, 0, 0))
  }
  [zoom = 13]{
    raster-colorizer-stops: 
      stop(0, rgb(255, 255, 255))
      stop(10, rgb(170, 170, 170))
      stop(60, rgb(0, 0, 0))
  }
  [zoom = 14]{
    raster-colorizer-stops: 
      stop(0, rgb(255, 255, 255))
      stop(10, rgb(165, 165, 165))
      stop(60, rgb(0, 0, 0))
  }
  [zoom = 15]{
    raster-colorizer-stops: 
      stop(0, rgb(255, 255, 255))
      stop(10, rgb(160, 160, 160))
      stop(60, rgb(0, 0, 0))
  }
  [zoom >= 16]{
    raster-colorizer-stops: 
      stop(0, rgb(255, 255, 255))
      stop(10, rgb(150, 150, 150))
      stop(60, rgb(0, 0, 0))
  }
}

#gfc_10N,
#gfc_00N,
#gfc_10S {
  raster-opacity:1;
  //image-filters:agg-stack-blur(5,5);
  raster-scaling: lanczos;
  [zoom >= 12]{ raster-scaling: gaussian; }
  raster-colorizer-default-mode: linear;
  raster-colorizer-default-color: transparent;
  raster-colorizer-stops:
    stop(10, fadeout(@1, 100%))
    stop(20, @1)
    stop(50, @2)
    stop(70, @3)
    stop(90, @4)
    stop(99, @5)
    stop(100, @6)
}

#slope [zoom >= 5]{
  raster-scaling: lanczos;
  raster-comp-op: multiply;
  raster-colorizer-default-mode: linear;
  raster-colorizer-default-color: transparent;
  raster-opacity: 1;
  [zoom >= 5]{
    raster-colorizer-stops: 
      stop(0, rgb(255, 255, 255))
      stop(60, rgb(50, 50, 50))
  }
  [zoom >= 7]{
    raster-colorizer-stops: 
      stop(0, rgb(255, 255, 255))
      stop(60, rgb(0, 0, 0))
  }
  [zoom = 10]{
    raster-colorizer-stops: 
      stop(0, rgb(255, 255, 255))
      stop(10, rgb(200, 200, 200))
      stop(60, rgb(0, 0, 0))
  }
  [zoom = 11]{
    raster-colorizer-stops: 
      stop(0, rgb(255, 255, 255))
      stop(10, rgb(190, 190, 190))
      stop(60, rgb(0, 0, 0))
  }
  [zoom = 12]{
    raster-colorizer-stops: 
      stop(0, rgb(255, 255, 255))
      stop(10, rgb(180, 180, 180))
      stop(60, rgb(0, 0, 0))
  }
  [zoom = 13]{
    raster-colorizer-stops: 
      stop(0, rgb(255, 255, 255))
      stop(10, rgb(170, 170, 170))
      stop(60, rgb(0, 0, 0))
  }
  [zoom = 14]{
    raster-colorizer-stops: 
      stop(0, rgb(255, 255, 255))
      stop(10, rgb(165, 165, 165))
      stop(60, rgb(0, 0, 0))
  }
  [zoom = 15]{
    raster-colorizer-stops: 
      stop(0, rgb(255, 255, 255))
      stop(10, rgb(160, 160, 160))
      stop(60, rgb(0, 0, 0))
  }
  [zoom >= 16]{
    raster-colorizer-stops: 
      stop(0, rgb(255, 255, 255))
      stop(10, rgb(150, 150, 150))
      stop(60, rgb(0, 0, 0))
  }
}
