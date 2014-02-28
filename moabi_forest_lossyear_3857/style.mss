@2012: #ffeb88;
@2009: #ffb34a;
@2006: #f07c2e;
@2003: #e34a28;
@2001: #c62107;

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