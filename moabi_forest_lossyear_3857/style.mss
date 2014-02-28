@2001: #fff39e;
@2003: #fdd376;
@2006: #fc9e3d;
@2009: #fa632f;
@2012: #F03B20;

#lossyear {
  raster-opacity:1;
  //image-filters:agg-stack-blur(5,5);
  //raster-scaling: gaussian;
  raster-colorizer-default-mode: linear;
  raster-colorizer-default-color: transparent;
  raster-colorizer-stops:
    stop(1, @2001)
    stop(3, @2003)
    stop(6, @2006)
    stop(9, @2009)
    stop(12, @2012)
}