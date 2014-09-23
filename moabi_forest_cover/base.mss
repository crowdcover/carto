@water: #222;
@admin_dark: #222222;
@admin_light: #808080;
@shadow: #000000;
@shadow_opacity: 0.6;

/**************** Terrain ***************************/
#slope {
  raster-scaling: lanczos;
  raster-colorizer-default-mode: linear;
  raster-colorizer-default-color: transparent;
  raster-opacity: 0.5;
  raster-colorizer-stops: 
    stop(0, rgb(255, 255, 255))
    stop(60, rgb(80,80,80);
}


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
