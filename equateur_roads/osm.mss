/* ==================================================================
   ROAD & RAIL LINES
/* ================================================================== */
@rdz6_min: 0.1;
@rdz7_min: 0.2;
@rdz8_min: 0.3;
@rdz9_min: 0.4;
@rdz10_maj: 0.3; @rdz10_med: 0.2; @rdz10_min: 0.5;
@rdz11_maj: 0.4; @rdz11_med: 0.3; @rdz11_min: 0.55;
@rdz12_maj: 0.8; @rdz12_med: 0.6; @rdz12_min: 0.6;
@rdz13_maj: 1.0; @rdz13_med: 0.8; @rdz13_min: 0.65;
@rdz14_maj: 1.5; @rdz14_med: 1.2; @rdz14_min: 0.8;
@rdz15_maj: 2.4; @rdz15_med: 1.8; @rdz15_min: 1.8;
@rdz16_maj: 4.0; @rdz16_med: 3.0; @rdz16_min: 2.0;
@rdz17_maj: 6.0; @rdz17_med: 4.5; @rdz17_min: 3.0;
@rdz18_maj: 10;  @rdz18_med: 8.0; @rdz18_min: 6.0;

/* ---- Casing ----------------------------------------------- */

#roads_high::outline[zoom>=6][zoom<=20]{
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
  [zoom=6] {
    [stylegroup='motorway'] { line-width: @rdz10_maj + 1.2; }
    [stylegroup='mainroad'] { line-width: @rdz10_med + 1.0; }
    [stylegroup='minorroad']{ line-width: @rdz6_min; }
    [stylegroup='service']  { line-width: 0; }
    [stylegroup='noauto']   { line-width: 0; }
    [stylegroup='railway']  { line-width: 0; }
  }
  [zoom=7] {
    [stylegroup='motorway'] { line-width: @rdz10_maj + 1.2; }
    [stylegroup='mainroad'] { line-width: @rdz10_med + 1.0; }
    [stylegroup='minorroad']{ line-width: @rdz7_min; }
    [stylegroup='service']  { line-width: @rdz7_min; }
    [stylegroup='noauto']   { line-width: 0; }
    [stylegroup='railway']  { line-width: 0; }
  }
  [zoom=8] {
    [stylegroup='motorway'] { line-width: @rdz10_maj + 1.2; }
    [stylegroup='mainroad'] { line-width: @rdz10_med + 1.0; }
    [stylegroup='minorroad']{ line-width: @rdz8_min; }
    [stylegroup='service']  { line-width: @rdz8_min; }
    [stylegroup='noauto']   { line-width: 0; }
    [stylegroup='railway']  { line-width: 0; }
  }
  [zoom=9] {
    [stylegroup='motorway'] { line-width: @rdz10_maj + 1.2; }
    [stylegroup='mainroad'] { line-width: @rdz10_med + 1.0; }
    [stylegroup='minorroad']{ line-width: @rdz9_min; }
    [stylegroup='service']  { line-width: @rdz9_min; }
    [stylegroup='noauto']   { line-width: 0; }
    [stylegroup='railway']  { line-width: 0; }
  }
  [zoom=10] {
    [stylegroup='motorway'] { line-width: @rdz10_maj + 1.2; }
    [stylegroup='mainroad'] { line-width: @rdz10_med + 1.0; }
    [stylegroup='minorroad']{ line-width: @rdz10_min; }
    [stylegroup='service']  { line-width: @rdz10_min; }
    [stylegroup='noauto']   { line-width: 0; }
    [stylegroup='railway']  { line-width: 0; }
  }
  [zoom=11] {
    [stylegroup='motorway'] { line-width: @rdz11_maj + 1.2; }
    [stylegroup='mainroad'] { line-width: @rdz11_med + 1.0; }
    [stylegroup='minorroad']{ line-width: @rdz11_min; }
    [stylegroup='service']  { line-width: @rdz11_min; }
    [stylegroup='noauto']   { line-width: 0; }
    [stylegroup='railway']  { line-width: 0; }
  }
  [zoom=12] {
    [stylegroup='motorway'] { line-width: @rdz12_maj + 1.2; }
    [stylegroup='mainroad'] { line-width: @rdz12_med + 1.0; }
    [stylegroup='minorroad']{ line-width: @rdz12_min; }
    [stylegroup='service']  { line-width: @rdz12_min; }
    [stylegroup='noauto']   { line-width: 0; }
    [stylegroup='railway']  { line-width: 0; }
  }
  [zoom=13] {
    [stylegroup='motorway'] { line-width: @rdz13_maj + 1.2; }
    [stylegroup='mainroad'] { line-width: @rdz13_med + 1.0; }
    [stylegroup='minorroad']{ line-width: @rdz13_min; }
    [stylegroup='service']  { line-width: @rdz13_min; }
    [stylegroup='noauto']   { line-width: 0; }
    [stylegroup='railway']  { line-width: 0; }
  }
  [zoom=14] {
    [stylegroup='motorway'] { line-width: @rdz14_maj + 1.2; }
    [stylegroup='mainroad'] { line-width: @rdz14_med + 1.0; }
    [stylegroup='minorroad']{ line-width: @rdz14_min; }
    [stylegroup='service']  { line-width: @rdz14_min; }
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


#roads_high[zoom>=6][zoom<=20]{
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
  [zoom=6] {
    [stylegroup='motorway'] { line-width: @rdz10_maj; }
    [stylegroup='mainroad'] { line-width: @rdz10_med; }
    [stylegroup='minorroad']{ line-width: @rdz6_min; }
    [stylegroup='railway']  { line-width: 0.2; }
  }
  [zoom=7] {
    [stylegroup='motorway'] { line-width: @rdz10_maj; }
    [stylegroup='mainroad'] { line-width: @rdz10_med; }
    [stylegroup='minorroad']{ line-width: @rdz7_min; }
    [stylegroup='railway']  { line-width: 0.2; }
  }
  [zoom=8] {
    [stylegroup='motorway'] { line-width: @rdz10_maj; }
    [stylegroup='mainroad'] { line-width: @rdz10_med; }
    [stylegroup='minorroad']{ line-width: @rdz8_min; }
    [stylegroup='railway']  { line-width: 0.2; }
  }
  [zoom=9] {
    [stylegroup='motorway'] { line-width: @rdz10_maj; }
    [stylegroup='mainroad'] { line-width: @rdz10_med; }
    [stylegroup='minorroad']{ line-width: @rdz9_min; }
    [stylegroup='railway']  { line-width: 0.2; }
  }
  [zoom=10] {
    [stylegroup='motorway'] { line-width: @rdz10_maj; }
    [stylegroup='mainroad'] { line-width: @rdz10_med; }
    [stylegroup='minorroad']{ line-width: @rdz10_min; }
    [stylegroup='railway']  { line-width: 0.2; }
  }
  [zoom=11] {
    [stylegroup='motorway'] { line-width: @rdz11_maj; }
    [stylegroup='mainroad'] { line-width: @rdz11_med; }
    [stylegroup='minorroad']{ line-width: @rdz11_min; }
    [stylegroup='railway']  { line-width: 0.2; }
  }
  [zoom=12] {
    [stylegroup='motorway'] { line-width: @rdz12_maj; }
    [stylegroup='mainroad'] { line-width: @rdz12_med; }
    [stylegroup='minorroad']{ line-width: @rdz12_min; }
    [stylegroup='railway']  { line-width: 0.4; }
  }
  [zoom=13] {
    [stylegroup='motorway'] { line-width: @rdz13_maj; }
    [stylegroup='mainroad'] { line-width: @rdz13_med; }
    [stylegroup='minorroad']{ line-width: @rdz13_min; }
    [stylegroup='service']  { line-width: @rdz13_min / 3; }
    [stylegroup='noauto']   { line-width: @rdz13_min / 4; line-dasharray: 1,1; }
    [stylegroup='railway']  { line-width: 0.8; }
  }
  [zoom=14] {
    [stylegroup='motorway'] { line-width: @rdz14_maj; }
    [stylegroup='mainroad'] { line-width: @rdz14_med; }
    [stylegroup='minorroad']{ line-width: @rdz14_min; }
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
