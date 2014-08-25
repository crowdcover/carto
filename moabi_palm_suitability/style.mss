//Map {background-color:#ccc;}
//yellow-blue
/*
@1: #fffad8;
@2: #d4e1c4;
@3: #a1c9b3;
@4: #65b3a4;
@5: #3b9999;
@6: #2c7b8b;
@7: #225f7b;*/

//white-purple-blue
@1: #FEEFCB;
@2: #ECA99E;
@3: #CD7B8D;
@4: #AC669B;
@5: #614C90;
@6: #29337F;
@7: #04165C;

#suitability {
  raster-opacity:0.6;
  raster-scaling:bilinear;
  //image-filters:agg-stack-blur(1,1);
  raster-colorizer-default-color: transparent;
  raster-colorizer-default-mode: linear;
  raster-colorizer-stops:
    stop(1,@1)
    stop(2,@3)
    stop(3,@5)
    stop(4,@7);
}
/*
#slope [zoom >= 6]{
  raster-scaling: lanczos;
  //raster-comp-op: multiply;
  raster-colorizer-default-mode: linear;
  raster-colorizer-default-color: transparent;
    raster-colorizer-stops: 
      stop(0, rgba(255, 255, 255, 0))
      stop(10, rgba(190, 190, 190, 0.1))
      stop(60, rgb(0, 0, 0))
}
*/