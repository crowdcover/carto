@sans:"Arial Regular","DejaVu Sans Book", "Droid Sans Book",;
@sans_bold:"Arial Bold","DejaVu Sans Bold", "Droid Sans Bold";

@text_fill: #333;
@text_halo_fill: rgba(255,255,255,1);

Map {buffer-size: 512;}

#terroirs{
  polygon-opacity:0.0;
  polygon-comp-op: multiply;
  polygon-fill: #ffc919;
  ::doublestroke{
    line-color:#fae49b;
    line-opacity:0.4;
    [zoom=5]{line-width:0.4 + 2.0;}
    [zoom=6]{line-width:0.6 + 4.0;}
    [zoom=7]{line-width:0.8 + 4.0;}
    [zoom=8]{line-width:1.0 + 4.0;}
    [zoom=9]{line-width:1.3 + 4.0;}
    [zoom=10]{line-width:1.6 + 4.0;}
    [zoom=11]{line-width:1.9 + 4.0;}
    [zoom=12]{line-width:2.2 + 4.0;}
    [zoom>=13]{line-width:2.5 + 4.0;}
    [zoom>=11]{
      text-name:[name];
      text-face-name:@sans;
      text-size:10;
      text-fill:lighten(@text_fill,25%);
      text-halo-radius:1;
      text-halo-fill:@text_halo_fill;
      text-character-spacing:1.5;
      text-placement: interior;
      text-transform:uppercase;
      text-dy:-8;
      text-min-path-length:100;
    }
  }
  line-dasharray: 4,2;
  line-color:#888;
  [zoom=5]{line-width:0.6 - 0.4;}
  [zoom=6]{line-width:0.6 - 0.4;}
  [zoom=7]{line-width:0.8 - 0.4;}
  [zoom=8]{line-width:1.0 - 0.4;}
  [zoom=9]{line-width:1.3 - 0.4;}
  [zoom=10]{line-width:1.6 - 0.4;}
  [zoom=11]{line-width:1.9 - 0.4;}
  [zoom=12]{line-width:2.2 - 0.4;}
  [zoom>=13]{line-width:2.5 - 0.4;}
}









