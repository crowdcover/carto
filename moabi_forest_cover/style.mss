@1: #2B83BA;
@2: #ABDDA4;
@3: #FFFFBF;
@4: #FDAE61;
@5: #D7191C;
@6: #990700;

@1bw: #FFF;
@2bw: #DDD;
@3bw: #BBB;
@4bw: #999;
@5bw: #666;
@6bw: #111;

#gfc_10N,
#gfc_00N,
#gfc_10S {
  raster-opacity:0.7;
  //image-filters:agg-stack-blur(5,5);
  raster-scaling: lanczos;
  [zoom >= 12]{ raster-scaling: gaussian; }
  raster-colorizer-default-mode: linear;
  raster-colorizer-default-color: transparent;
  raster-colorizer-stops:
    stop(15, fadeout(@1, 100%))
    stop(20, @1)
    stop(50, @2)
    stop(60, @3)
    stop(80, @4)
    stop(90, @5)
    stop(100, @6);
/*
  raster-colorizer-stops:
    stop(10, fadeout(@1bw, 100%))
    stop(20, @1bw)
    stop(50, @2bw)
    stop(60, @3bw)
    stop(80, @4bw)
    stop(90, @5bw)
    stop(100, @6bw);
    */
}

#slope {
  raster-scaling: lanczos;
  raster-comp-op: multiply;
  raster-colorizer-default-mode: linear;
  raster-colorizer-default-color: transparent;
  raster-opacity: 1;
  raster-colorizer-stops: 
    stop(40, rgba(255, 255, 255, 0))
    stop(60, rgb(50, 50, 50));
  [zoom >= 7]{
    raster-colorizer-stops: 
      stop(0, rgba(255, 255, 255, 0))
      stop(60, rgb(0, 0, 0))
  }
  [zoom = 10]{
    raster-colorizer-stops: 
      stop(0, rgba(255, 255, 255, 0))
      stop(10, rgba(200, 200, 200, 0.2))
      stop(60, rgb(0, 0, 0))
  }
  [zoom = 11]{
    raster-colorizer-stops: 
      stop(0, rgba(255, 255, 255, 0))
      stop(10, rgba(190, 190, 190, 0.2))
      stop(60, rgb(0, 0, 0))
  }
  [zoom = 12]{
    raster-colorizer-stops: 
      stop(0, rgba(255, 255, 255, 0))
      stop(10, rgba(180, 180, 180, 0.2))
      stop(60, rgb(0, 0, 0))
  }
  [zoom = 13]{
    raster-colorizer-stops: 
      stop(0, rgba(255, 255, 255, 0))
      stop(10, rgba(170, 170, 170, 0.2))
      stop(60, rgb(0, 0, 0))
  }
  [zoom = 14]{
    raster-colorizer-stops: 
      stop(0, rgba(255, 255, 255, 0))
      stop(10, rgba(165, 165, 165, 0.2))
      stop(60, rgb(0, 0, 0))
  }
  [zoom = 15]{
    raster-colorizer-stops: 
      stop(0, rgba(255, 255, 255, 0))
      stop(10, rgba(160, 160, 160, 0.2))
      stop(60, rgb(0, 0, 0))
  }
  [zoom >= 16]{
    raster-colorizer-stops: 
      stop(0, rgba(255, 255, 255, 0))
      stop(10, rgba(150, 150, 150, 0.1))
      stop(60, rgb(0, 0, 0))
  }
}


#countries {
  line-color:#444;
  line-opacity: 0.6;
  line-comp-op: multiply;
  line-width:0.5;
}
