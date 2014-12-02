@ocean:#fff;
@water:#eaeaea;
@admin:#333;
@admin-doublestroke: #eee;

Map { background-color: @ocean; }

#countries {
  polygon-fill: #bbb;
  polygon-comp-op:multiply;
  line-color: lighten(@admin,25%);
  [qs_adm0 = 'Democratic Republic of the Congo']{
    polygon-fill:transparent;
  }
  [zoom<=5]{line-width:0.4;}
  [zoom=6]{line-width:0.6;}
  [zoom=7]{line-width:0.8;}
  [zoom=8]{line-width:1.0;}
  [zoom=9]{line-width:1.3;}
  [zoom=10]{line-width:1.6;}
  [zoom=11]{line-width:1.9;}
  [zoom=12]{line-width:2.2;}
  [zoom>=13]{line-width:2.5;}
}

#admin1 [zoom>=5]{
  ::doublestroke{
    line-color:@admin-doublestroke;
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
    [zoom>=7][zoom<9]{
      text-name:[PROVINCE];
      text-face-name:@sans;
      text-size:8;
      text-fill:lighten(@text_fill,35%);
      text-halo-radius:1;
      text-halo-fill:@text_halo_fill;
      text-character-spacing:1.5;
      text-placement:line;
      text-transform:uppercase;
      text-dy:-8;
      text-line-spacing:4000;
      text-min-path-length:250;
    }
  }
  line-dasharray: 4,2;
  line-color:@admin;
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

#admin2 [zoom>=8]{
  ::doublestroke{
    line-color:@admin-doublestroke;
    line-opacity:0.3;
    [zoom=8]{line-width:1.0 + 4.0;}
    [zoom=9]{line-width:1.3 + 4.0;}
    [zoom=10]{line-width:1.6 + 4.0;}
    [zoom=11]{line-width:1.9 + 4.0;}
    [zoom=12]{line-width:2.2 + 4.0;}
    [zoom>=13]{line-width:2.5 + 4.0;}
    [zoom>=9][zoom<11]{
      text-name:[DISTRICT];
      text-face-name:@sans;
      text-size:8;
      text-fill:lighten(@text_fill,35%);
      text-halo-radius:1;
      text-halo-fill:@text_halo_fill;
      text-character-spacing:1.5;
      text-placement:line;
      text-transform:uppercase;
      text-dy:-8;
      text-line-spacing:4000;
      text-min-path-length:400;
    }/*
    [DISTRICT = 'Mai-Ndombe']{
      line-color: purple;
      line-opacity:0.2;
      line-width:8;
      line-offset:-4;
      image-filters:agg-stack-blur(8,8);
    }*/
  }
  line-dasharray: 4,2;
  line-color:@admin;
  [zoom=8]{line-width:1.0 - 0.8;}
  [zoom=9]{line-width:1.3 - 0.8;}
  [zoom=10]{line-width:1.6 - 0.8;}
  [zoom=11]{line-width:1.9 - 0.8;}
  [zoom=12]{line-width:2.2 - 0.8;}
  [zoom>=13]{line-width:2.5 - 0.8;}
}

#admin3 [zoom>=10]{
  ::doublestroke{
    line-color:@admin-doublestroke;
    line-opacity:0.3;
    [zoom=10]{line-width:1.6 + 4.0;}
    [zoom=11]{line-width:1.9 + 4.0;}
    [zoom=12]{line-width:2.2 + 4.0;}
    [zoom>=13]{line-width:2.5 + 4.0;}
    [zoom>=11]{
      text-name:[TERRITOIRE];
      text-face-name:@sans;
      text-size:8;
      text-fill:lighten(@text_fill,35%);
      text-halo-radius:1;
      text-halo-fill:@text_halo_fill;
      text-character-spacing:1.5;
      text-placement:line;
      text-transform:uppercase;
      text-dy:-8;
      text-line-spacing:4000;
      text-min-path-length:400;
    }
  }
  line-dasharray: 4,2;
  line-color:@admin;
  [zoom=10]{line-width:1.6 - 1.4;}
  [zoom=11]{line-width:1.9 - 1.4;}
  [zoom=12]{line-width:2.2 - 1.4;}
  [zoom>=13]{line-width:2.5 - 1.4;}
}

#rivers-lakes [DESCRIPTIO = 'Fleuve'],
#rivers-lakes [DESCRIPTIO = 'Lac'],
#rivers-lakes [DESCRIPTIO =~ 'Rivière .*']{
  polygon-opacity:1;
  polygon-fill:@water;
  [zoom>=6]{
    line-color:darken(@water,10%);
    line-width:0.2;
    line-opacity:0.8;
  }
  [zoom=7]{line-width:0.6;}
  [zoom=8]{line-width:1.0;}
  [zoom>=9]{line-width:1.2;}
}
