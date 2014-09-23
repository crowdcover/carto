// muted blue to light yellow
//['#0a528f', '#3a6694', '#567c98', '#6f919d', '#88a8a2', '#a1bea7', '#bcd5ad', '#d9ebb4', '#ffffbf']
//light yellow to orange red
//['#ffffa0', '#ffeb8f', '#ffd67f', '#ffc26e', '#ffab5c', '#ff9448', '#ff7a35', '#ff5c1f', '#ff3000']
/*
@1: #2B83BA;
@2: #ABDDA4;
@3: #FFFFBF;
@4: #FDAE61;
@5: #D7191C;
@6: #990700;
*/
/*
@1: #FFF;
@2: #DDD;
@3: #BBB;
@4: #999;
@5: #666;
@6: #111;
*/
/*@1: desaturate(spin(lighten(#f3ffa1, 5%), -5), 10%); 
@2: desaturate(spin(lighten(#bfca43, 15),-5), 10%);
@3: desaturate(lighten(#969e3e, 8%), 10%);
@4: desaturate(lighten(#e2bb52, 10%), 10%);
@5: desaturate(lighten(#6c561a, 10%), 10%);
*/

@1: #ffefd1;
@2: #eedca7;
@3: #bac16d;
@4: #95a12e;
@5: #3a4100;

/*
@1: #fff7d1;
@2: #dbd44f;
@3: #99c95f;
@4: #54a12f;
@5: #134001;
*/

//Map { background-color: white; }

#gfc_10N,
#gfc_00N,
#gfc_10S {
  raster-opacity:0.8;
  //image-filters:agg-stack-blur(5,5);
  raster-scaling: lanczos;
  raster-comp-op:multiply;
  //[zoom >= 12]{ raster-scaling: gaussian; }
  raster-colorizer-default-mode: linear;
  raster-colorizer-default-color: transparent;
  raster-colorizer-stops:
    stop(0, fadeout(@1, 100%))
    stop(10, @1)
    stop(40, @2)
    stop(60, @3)
    stop(90, @4)
    stop(100, @5);
}


#intact_forest {
  line-color:#594;
  line-width:0.5;
  line-opacity:0.2;
}
