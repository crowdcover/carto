/* ================================================================== */
/* ROAD COLORS
/* ================================================================== */

/* For each class of road there are three color variables:
 * - line: for lower zoomlevels when the road is represented by a
 *         single solid line.
 * - case: for higher zoomlevels, this color is for the road's
 *         casing (outline).
 * - fill: for higher zoomlevels, this color is for the road's
 *         inner fill (inline).
 */
@road: #ff9e00; //#4d4d4d;

@motorway_line:     @road;//#E65C5C;
@motorway_fill:     lighten(@motorway_line,10%);
@motorway_case:     @motorway_line * 0.9;

@trunk_line:        @road;//#E68A5C;
@trunk_fill:        lighten(@trunk_line,10%);
@trunk_case:        @trunk_line * 0.9;

@primary_line:      @road;//#FFC859;
@primary_fill:      lighten(@primary_line,10%);
@primary_case:      @primary_line * 0.9;

@secondary_line:    @road;//#FFE873;
@secondary_fill:    lighten(@secondary_line,10%);
@secondary_case:    @secondary_line * 0.9;

@standard_line:     @road * 0.85;//@land * 0.85;
@standard_fill:     #fff;
@standard_case:     @road * 0.9;//@land * 0.9;

@pedestrian_line:   @standard_line;
@pedestrian_fill:   #FAFAF5;
@pedestrian_case:   @land;

@cycle_line:        @standard_line;
@cycle_fill:        #FAFAF5;
@cycle_case:        @land;

@rail_line:         #999;
@rail_fill:         #fff;
@rail_case:         @land;

@aeroway:           #ddd;

/* ==================================================================
   ROAD & RAIL LINES
/* ================================================================== */

/* At lower zoomlevels, just show major automobile routes: motorways
and trunks. */

#roads_low[zoom>=4][zoom<=8] {
  [type='motorway'] { line-color: @motorway_line; }
  [type='trunk'] { line-color: @trunk_line; }
  [type='primary'] { line-color: @primary_line; }
  [zoom=4] {
    [type='motorway'] { line-width: 0.2; }
    [type='trunk'] { line-width: 0.2; }
    [type='primary'] { line-width: 0.2; } }
  [zoom=5] {
    [type='motorway'] { line-width: 0.4; }
    [type='trunk'] { line-width: 0.2; }
    [type='primary'] { line-width: 0.2; } }
  [zoom=6] {
    [type='motorway'] { line-width: 0.5; }
    [type='trunk'] { line-width: 0.3; }
    [type='primary'] { line-width: 0.3; } }
  [zoom=7] {
    [type='motorway'] { line-width: 0.6; }
    [type='trunk'] { line-width: 0.4; }
    [type='primary'] { line-width: 0.4; } }
  [zoom=8] {
    [type='motorway'] { line-width: 1; }
    [type='trunk'] { line-width: 0.5; } }
}

/* At mid-level scales start to show primary and secondary routes
as well. */

#roads_med[zoom>=7][zoom<=9] {
  [type='motorway'],
  [type='motorway_link'] {
    line-color: @motorway_line;
  }
  [type='trunk'],
  [type='trunk_link'] {
    line-color: @trunk_line;
  }
  [type='primary'] { line-color: @primary_line; }
  [type='secondary'] { line-color: @secondary_line; }
  [type='tertiary'] { line-color: @standard_line; }
  [zoom=7] {
    [type='motorway'],[type='trunk'] { line-width: 0.5; }
    [type='primary'],[type='secondary'],
    [type='motorway_link'],[type='trunk_link'] { line-width: 0.3; }
  }
  [zoom=8] {
    [type='motorway'],[type='trunk'] { line-width: 0.8; }
    [type='primary'],[type='secondary'],
    [type='motorway_link'],[type='trunk_link'] { line-width: 0.4; }
  }
  [zoom=9] {
    [type='motorway'],[type='trunk'] { line-width: 1.4; }
    [type='primary'],[type='secondary'],
    [type='motorway_link'],[type='trunk_link'] { line-width: 0.6; }
  }
  /*[zoom=10] {
    [type='motorway'],[type='trunk'] { line-width: 1.8; }
    [type='primary'],[type='secondary'],
    [type='motorway_link'],[type='trunk_link'] { line-width: 0.8; }
  }*/
}

/* At higher levels the roads become more complex. We're now showing 
more than just automobile routes - railways, footways, and cycleways
come in as well.

/* Road width variables that are used in road & bridge styles */
@rdz10_maj: 0.3; @rdz10_med: 0.2; @rdz10_min: 0.1;
@rdz11_maj: 0.4; @rdz11_med: 0.3; @rdz11_min: 0.15;
@rdz12_maj: 0.8; @rdz12_med: 0.6; @rdz12_min: 0.3;
@rdz13_maj: 1.0; @rdz13_med: 0.8; @rdz13_min: 0.4;
@rdz14_maj: 1.5; @rdz14_med: 1.2; @rdz14_min: 0.8;
@rdz15_maj: 2.4; @rdz15_med: 1.8; @rdz15_min: 1.8;
@rdz16_maj: 4.0; @rdz16_med: 3.0; @rdz16_min: 2.0;
@rdz17_maj: 6.0; @rdz17_med: 4.5; @rdz17_min: 3.0;
@rdz18_maj: 10;  @rdz18_med: 8.0; @rdz18_min: 6.0;

/* ---- Casing ----------------------------------------------- */

#roads_high::outline[zoom>=10][zoom<=20],
#tunnel[render='1_outline'][zoom>=11][zoom<=20],
#bridge[render='1_outline'][zoom>=11][zoom<=20]{
  /* -- colors & styles -- */
  line-cap: round;
  [bridge=1],
  [tunnel=1] {
    line-cap: butt;
  }
  line-join: round;
  line-color: @standard_case;
  [bridge=1] { line-color: @standard_case * 0.8; }
  [type='motorway'],
  [type='motorway_link'] {
    line-color: @motorway_case;
    [bridge=1] { line-color: @motorway_case * 0.8; }
  }
  [type='trunk'],
  [type='trunk_link'] {
    line-color: @trunk_case;
    [bridge=1] { line-color: @trunk_case * 0.8; }
  }
  [type='primary'],
  [type='primary_link'] {
    line-color: @primary_case;
    [bridge=1] { line-color: @primary_case * 0.8; }
  }
  [type='secondary'],
  [type='secondary_link'] {
    line-color: @secondary_case;
    [bridge=1] { line-color: @secondary_case * 0.8; }
  }
  [stylegroup='railway'] {
    line-color: fadeout(@land,50%);
    [bridge=1] { line-color: @secondary_case * 0.8; }
  }
  [tunnel=1] { line-dasharray: 3,3; }        
  /* -- widths -- */
  [zoom=10] {
    [stylegroup='motorway'] { line-width: @rdz10_maj + 1.2; }
    [stylegroup='mainroad'] { line-width: @rdz10_med + 1.0; }
    [stylegroup='minorroad']{ line-width: @rdz10_min; }
    /* No minor bridges yet */
    [stylegroup='service']  { line-width: 0; }
    [stylegroup='noauto']   { line-width: 0; }
    [stylegroup='railway']  { line-width: 0; }
  }
  [zoom=11] {
    [stylegroup='motorway'] { line-width: @rdz11_maj + 1.2; }
    [stylegroup='mainroad'] { line-width: @rdz11_med + 1.0; }
    [stylegroup='minorroad']{ line-width: @rdz11_min; }
    /* No minor bridges yet */
    [stylegroup='service']  { line-width: 0; }
    [stylegroup='noauto']   { line-width: 0; }
    [stylegroup='railway']  { line-width: 0; }
  }
  [zoom=12] {
    [stylegroup='motorway'] { line-width: @rdz12_maj + 1.2; }
    [stylegroup='mainroad'] { line-width: @rdz12_med + 1.0; }
    [stylegroup='minorroad']{ line-width: @rdz12_min; }
    /* No minor bridges yet */
    [stylegroup='service']  { line-width: 0; }
    [stylegroup='noauto']   { line-width: 0; }
    [stylegroup='railway']  { line-width: 0; }
  }
  [zoom=13] {
    [stylegroup='motorway'] { line-width: @rdz13_maj + 1.2; }
    [stylegroup='mainroad'] { line-width: @rdz13_med + 1.0; }
    [stylegroup='minorroad']{ line-width: @rdz13_min; }
    /* No minor bridges yet */
    [stylegroup='service']  { line-width: 0; }
    [stylegroup='noauto']   { line-width: 0; }
    [stylegroup='railway']  { line-width: 0; }
  }
  [zoom=14] {
    [stylegroup='motorway'] { line-width: @rdz14_maj + 1.2; }
    [stylegroup='mainroad'] { line-width: @rdz14_med + 1.0; }
    [stylegroup='minorroad']{ line-width: @rdz14_min; }
    /* No minor bridges yet */
    [stylegroup='service']  { line-width: 0; }
    [stylegroup='noauto']   { line-width: 0; }
    [stylegroup='railway']  { line-width: 0; }
  }
  [zoom=15] {
    [stylegroup='motorway'] { line-width: @rdz15_maj + 2.0; }
    [stylegroup='mainroad'] { line-width: @rdz15_med + 1.6; }
    [stylegroup='minorroad']{ line-width: @rdz15_min + 1.4; }
    [stylegroup='service']  { line-width: @rdz15_min / 3 + 1.8; }
    [stylegroup='noauto']   { line-width: @rdz15_min / 4 + 1.8; }
    [stylegroup='railway']  { line-width: 1.5 + 2; }
  }
  [zoom=16] {
    [stylegroup='motorway'] { line-width: @rdz16_maj + 2.2; }
    [stylegroup='mainroad'] { line-width: @rdz16_med + 1.6; }
    [stylegroup='minorroad']{ line-width: @rdz16_min + 1.4; }
    [stylegroup='service']  { line-width: @rdz16_min / 3 + 2; }
    [stylegroup='noauto']   { line-width: @rdz16_min / 4 + 2; }
    [stylegroup='railway']  { line-width: 2 + 2; }
  }
  [zoom>=17] {
    [stylegroup='motorway'] { line-width: @rdz17_maj + 2.6; }
    [stylegroup='mainroad'] { line-width: @rdz17_med + 2.5; }
    [stylegroup='minorroad']{ line-width: @rdz17_min + 2; }
    [stylegroup='service']  { line-width: @rdz17_min / 3 + 2; }
    [stylegroup='noauto']   { line-width: @rdz17_min / 4 + 4; }
    [stylegroup='railway']  { line-width: 3 + 4; } // 3 + 4
  }
  [zoom>=18] {
    [stylegroup='motorway'] { line-width: @rdz18_maj + 4; }
    [stylegroup='mainroad'] { line-width: @rdz18_med + 4; }
    [stylegroup='minorroad']{ line-width: @rdz18_min + 3.5; }
    [stylegroup='service']  { line-width: @rdz18_min / 3 + 3.5; }
    [stylegroup='noauto']   { line-width: @rdz18_min / 4 + 6; }
    [stylegroup='railway']  { line-width: 4 + 6; }
  }
}


#roads_high[zoom>=11][zoom<=20],
#tunnel[render='3_inline'][zoom>=11][zoom<=20],
#bridge[render='3_inline'][zoom>=11][zoom<=20]{
  /* -- colors & styles -- */
  line-color: @standard_fill;
  [type='motorway'],
  [type='motorway_link'] {
    line-color: @motorway_fill;
    [tunnel=1] { line-color: lighten(@motorway_fill, 10%); }
  }
  [type='trunk'],
  [type='trunk_link'] {
    line-color: @trunk_fill;
    [tunnel=1] { line-color: lighten(@trunk_fill, 10%); }
  }
  [type='primary'],
  [type='primary_link'] {
    line-color: @primary_fill;
    [tunnel=1] { line-color: lighten(@primary_fill, 10%); }
  }
  [type='secondary'],
  [type='secondary_link'] {
    line-color: @secondary_fill;
    [tunnel=1] { line-color: lighten(@secondary_fill, 10%); }
  }
  [stylegroup='railway'] {
    line-color: @rail_line;
    line-dasharray: 1,1;
    [type='subway'] { line-opacity: 0.67; }
    [zoom>15] { line-dasharray: 1,2; } 
  }
  [stylegroup='noauto'],
  [stylegroup='service'],
  [stylegroup='minorroad'] {
    line-width: 0;
  }
  [stylegroup='service'],
  [stylegroup='minorroad'],
  [stylegroup='mainroad'],
  [stylegroup='motorway'] {
    line-cap: round;
    line-join: round;
  }
  [stylegroup='noauto'] {
    line-join: round;
  }
  [tunnel=1] {
    line-cap: butt;
  }
  /* -- widths -- */
  [zoom=10] {
    [stylegroup='motorway'] { line-width: @rdz10_maj; }
    [stylegroup='mainroad'] { line-width: @rdz10_med; }
    [stylegroup='minorroad']{ line-width: 0; }
    [stylegroup='railway']  { line-width: 0.2; }
  }
  [zoom=11] {
    [stylegroup='motorway'] { line-width: @rdz11_maj; }
    [stylegroup='mainroad'] { line-width: @rdz11_med; }
    [stylegroup='minorroad']{ line-width: 0; }
    [stylegroup='railway']  { line-width: 0.2; }
  }
  [zoom=12] {
    [stylegroup='motorway'] { line-width: @rdz12_maj; }
    [stylegroup='mainroad'] { line-width: @rdz12_med; }
    [stylegroup='minorroad']{ line-width: 0; }
    [stylegroup='railway']  { line-width: 0.4; }
  }
  [zoom=13] {
    [stylegroup='motorway'] { line-width: @rdz13_maj; }
    [stylegroup='mainroad'] { line-width: @rdz13_med; }
    [stylegroup='minorroad']{ line-width: 0; }//@rdz13_min; }
    [stylegroup='service']  { line-width: @rdz13_min / 3; }
    [stylegroup='noauto']   { line-width: @rdz13_min / 4; line-dasharray: 1,1; }
    [stylegroup='railway']  { line-width: 0.8; }
  }
  [zoom=14] {
    [stylegroup='motorway'] { line-width: @rdz14_maj; }
    [stylegroup='mainroad'] { line-width: @rdz14_med; }
    [stylegroup='minorroad']{ line-width: 0; }//@rdz14_min; }
    [stylegroup='service']  { line-width: @rdz14_min / 3; }
    [stylegroup='noauto']   { line-width: @rdz14_min / 4; line-dasharray: 1,1; }
    [stylegroup='railway']  { line-width: 1; }
  }
  [zoom=15] {
    [stylegroup='motorway'] { line-width: @rdz15_maj; }
    [stylegroup='mainroad'] { line-width: @rdz15_med; }
    [stylegroup='minorroad']{ line-width: @rdz15_min; }
    [stylegroup='service']  { line-width: @rdz15_min / 3; }
    [stylegroup='noauto']   { line-width: @rdz15_min / 4; line-dasharray: 1,1; }
    [stylegroup='railway']  { line-width: 1.5; }
  }
  [zoom=16] {
    [stylegroup='motorway'] { line-width: @rdz16_maj; }
    [stylegroup='mainroad'] { line-width: @rdz16_med; }
    [stylegroup='minorroad']{ line-width: @rdz16_min; }
    [stylegroup='service']  { line-width: @rdz16_min / 3; }
    [stylegroup='noauto']   { line-width: @rdz16_min / 4; line-dasharray: 2,1; }
    [stylegroup='railway']  { line-width: 2; }
  }
  [zoom=17] {
    [stylegroup='motorway'] { line-width: @rdz17_maj; }
    [stylegroup='mainroad'] { line-width: @rdz17_med; }
    [stylegroup='minorroad']{ line-width: @rdz17_min; }
    [stylegroup='service']  { line-width: @rdz17_min / 3; }
    [stylegroup='noauto']   { line-width: @rdz17_min / 4; line-dasharray: 2,2; }
    [stylegroup='railway']  { line-width: 3; }
  }
  [zoom>=18] {
    [stylegroup='motorway'] { line-width: @rdz18_maj; }
    [stylegroup='mainroad'] { line-width: @rdz18_med; }
    [stylegroup='minorroad']{ line-width: @rdz18_min; }
    [stylegroup='service']  { line-width: @rdz18_min / 2; }
    [stylegroup='noauto']   { line-width: @rdz18_min / 4; line-dasharray: 3,3; }
    [stylegroup='railway']  { line-width: 4; }
  }
}

/* ---- Bridge fill for dashed lines -------------------------------- */
#tunnel[render='2_line'][zoom>=14][zoom<=20],
#bridge[render='2_line'][zoom>=14][zoom<=20]{
  /* -- colors & styles -- */
  [stylegroup='noauto'] {
    line-color: @land;
    line-width: 0;
    line-join: round;
  }
  [stylegroup='railway'] {
    line-color: @land;
    line-join: round;
  }
  /* -- widths -- */
  [zoom=14] {
    [stylegroup='noauto']   { line-width: @rdz14_min / 4 + 1; }
    [stylegroup='railway']  { line-width: 1 + 1; }
  }
  [zoom=15] {
    [stylegroup='noauto']   { line-width: @rdz15_min / 4 + 1; }
    [stylegroup='railway']  { line-width: 1.5 + 1; }
  }
  [zoom=16] {
    [stylegroup='noauto']   { line-width: @rdz16_min / 4 + 1; }
    [stylegroup='railway']  { line-width: 2 + 1; }
  }
  [zoom=17] {
    [stylegroup='noauto']   { line-width: @rdz17_min / 4 + 3; }
    [stylegroup='railway']  { line-width: 3 + 2; }
  }
  [zoom>=18] {
    [stylegroup='noauto']   { line-width: @rdz18_min / 4 + 3; }
    [stylegroup='railway']  { line-width: 4 + 3; }
  }
}
