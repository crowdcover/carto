/*yellow-red*/
//'#ffffe0', '#fda100', '#ffbe84', '#ff986d', '#f47361', '#e35056', '#cb2f44', '#ae112a', '#8b0000'
/*
@2001: #ffffe0;
@2003: #ffbe84;
@2006: #f47361;
@2009: #cb2f44;
@2012: #8b0000;
*/

//light yellow to orange red
//['#ffffa0', '#ffeb8f', '#ffd67f', '#ffc26e', '#ffab5c', '#ff9448', '#ff7a35', '#ff5c1f', '#ff3000']
@2001: #ffffe0;
@2003: #ffd67f;
@2006: #ffab5c;
@2009: #ff7a35;
@2012: #ff3000;

/*pink-purple*/
/*
@purple: #6b17ff;
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
    stop(1, @2001)
    stop(3, @2003)
    stop(6, @2006)
    stop(9, @2009)
    stop(12, @2012)
}
