#slope {
  raster-scaling: lanczos;
  raster-colorizer-default-color: transparent;
  raster-opacity: 0.6;
  raster-colorizer-stops: 
    stop(0, rgb(255, 255, 255))
    stop(60, rgb(60, 60, 60))
}

#hillshade_lowzoom[zoom<=6]{
  raster-opacity: 1.0;
  raster-scaling: lanczos;
  raster-colorizer-default-mode: linear;
  raster-colorizer-stops: 
    stop(0, rgb(150,150,150))
    stop(205, rgb(250,250,250))
    stop(255, rgb(255,255,255));
}
    //stop(0, #000)
    //stop(185, rgb(185,185,185))
    //stop(207, #fff);

#hillshade[zoom>6] {
  raster-scaling: lanczos;
  raster-opacity: 1.0;
  [zoom>=10]{ raster-opacity: 0.8; }
  [zoom>=12]{ raster-opacity: 0.6; }
  raster-colorizer-default-mode: linear;
  raster-colorizer-stops:
    stop(0, rgb(150,150,150))
    stop(175, rgb(250,250,250))
    stop(255, rgb(255,255,255));
}

#gfc_10N,
#gfc_00N,
#gfc_10S {
  raster-scaling:gaussian;
  raster-comp-op: multiply;
  raster-colorizer-default-mode: linear;
  raster-colorizer-default-color: transparent;
  raster-colorizer-stops:
    stop(80, rgba(255, 255, 255,0))
    stop(100, rgb(240, 240, 240));
}

#contour_20 [zoom >= 9]{
  line-color: #4a352c;
  line-comp-op: multiply;
  line-smooth: 1;
  [zoom = 9]{ line-width: 0.02; }
  [zoom = 10]{ line-width: 0.06; }
  [zoom = 11]{ line-width: 0.12; line-opacity: 0.8; }
  [zoom = 12]{ line-width: 0.18; line-opacity: 0.7; }
  [zoom = 13]{ line-width: 0.25; line-opacity: 0.6; }
  [zoom = 14]{ line-width: 0.3; line-opacity: 0.5; }
  [zoom = 15]{ line-width: 0.35; line-opacity: 0.4; }
  [zoom = 16]{ line-width: 0.4; line-opacity: 0.3; }
  [zoom = 17]{ line-width: 0.45; line-opacity: 0.2; }
  [zoom >= 18]{ line-width: 0.5; line-opacity: 0.1; }

}