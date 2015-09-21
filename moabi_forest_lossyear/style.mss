//Yellow Orange Red



@2001-2005: #ffffb2;
@2006-2010: #fed66d;
@2011: #fda648;
@2012: #fd4c00;
@2013: #e52f21;
@2014: #bd0026;


/*
@orange:   #FF3700;
@red: #FF2600;

@2001-2005: #ffffb2;
@2006-2010: #fed66d;
@2011: #ff6b01;
@2012: #ff01fb;
@2013: #b000ff;
@2014: #FF2600;
*/
/*pink-purple*/
/*
@purple: #6c17ff;
@2001: lighten(@purple, 60%);
@2003: lighten(@purple, 45%);
@2006: lighten(@purple, 30%);
@2009: lighten(@purple, 15%);
@2012: lighten(@purple, 0%);
*/
/*
@2012: #222;
@2009: #222;
@2006: #222;
@2003: #222;
@2001: #222;
*/
//Map { background-color: white; }

#lossyear {
  raster-opacity:1;
  //image-filters:agg-stack-blur(1,1);
  //raster-scaling: gaussian;
  raster-colorizer-default-mode: linear;
  raster-colorizer-default-color: transparent;
  raster-colorizer-stops:
	stop(1, @2001-2005)
    stop(2, @2001-2005)
    stop(3, @2001-2005)
    stop(4, @2001-2005)
    stop(5, @2001-2005)
   	stop(6, @2006-2010)
    stop(7, @2006-2010)
    stop(8, @2006-2010)
   	stop(9, @2006-2010)
    stop(10, @2006-2010)
    stop(11, @2011)
   	stop(12, @2012)
    stop(13, @2013)
    stop(14, @2014)
}
  

