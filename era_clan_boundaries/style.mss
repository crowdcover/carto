@sans:"Arial Regular","DejaVu Sans Book", "Droid Sans Book",;
@sans_bold:"Arial Bold","DejaVu Sans Bold", "Droid Sans Bold";

@text_fill: #333;
@text_halo_fill: rgba(255,255,255,1);

#clan{
  ::doublestroke{
    line-color:#ccc;
    line-opacity:0.4;
    [zoom=10]{line-width:1.0 + 4.0;}
    [zoom=11]{line-width:1.3 + 4.0;}
    [zoom=12]{line-width:1.7 + 2.0;}
    [zoom>=13]{line-width:2.0 + 2.0;}
    [zoom>=11]{
      text-name:[name];
      text-face-name:@sans;
      text-size:8;
      text-fill:@text_fill;
      text-halo-radius:1;
      text-halo-fill:@text_halo_fill;
      text-character-spacing:1.5;
      text-placement:line;
      text-transform:uppercase;
      text-dy:-8;
      //text-line-spacing:4000;
      text-min-path-length:400;
    }
  }
  line-color:#666;
  [zoom=10]{line-width:1.0;}
  [zoom=11]{line-width:1.3;}
  [zoom=12]{line-width:1.7 - 1.4;}
  [zoom>=13]{line-width:2.0 - 1.4;}
}