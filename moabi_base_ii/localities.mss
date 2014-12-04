@sans:"Droid Sans Book","Arial Regular","DejaVu Sans Book";
@sans_bold:"Droid Sans Bold","Arial Bold","DejaVu Sans Bold";

@text_fill: #000;
@text_halo_fill: #fff;

#cities {
  [scalerank<=2][zoom>=5],
  [scalerank=3][zoom>=6],
  [scalerank=4][zoom>=7],
  [scalerank=5][zoom>=8],
  [scalerank=6][zoom>=9],
  [scalerank=7][zoom>=10],
  [scalerank=8][zoom>=11],
  [scalerank=9][zoom>=12],
  [scalerank=10][zoom>=13],
  [scalerank=11][zoom>=13]{
    //simple hack to force text padding on all sides
    shield-name:'    -  ' + [name] + '  -    ';
    shield-file:url('../img/dot-3.png');
    shield-wrap-width:1;
    shield-wrap-character:'-';
    shield-face-name:@sans;
    shield-fill:@text_fill;
    shield-size:10;
    shield-halo-radius:1.8;
    shield-halo-fill:@text_halo_fill;
    shield-character-spacing:2;
    //text-placement-type:simple;
    //text-placements: "E,NE,SE,W,NW,SW";
    shield-text-transform:capitalize;
    shield-vertical-alignment: middle;
    shield-text-dy:-10;
    /*a/marker-width:2.5;
    a/marker-fill:#444;
    a/marker-line-width:0;
    a/marker-allow-overlap: false;*/
  }
  [zoom=5]{
    [scalerank=1]{shield-size:11;}
    [scalerank=2]{shield-size:9;}
  }
  [zoom=6]{
    [scalerank=1]{shield-size:12;}
    [scalerank=2]{shield-size:11;}
    [scalerank=3]{shield-size:9;}
  }
  [zoom=7]{
    [scalerank=1]{shield-size:14;}
    [scalerank=2]{shield-size:12;}
    [scalerank=3]{shield-size:10;}
    [scalerank=4]{shield-size:9;}
  }
  [zoom=8]{
    [scalerank=1]{shield-size:14;}
    [scalerank=2]{shield-size:12;}
    [scalerank=3]{shield-size:11;}
    [scalerank=4]{shield-size:10;}
    [scalerank=5]{shield-size:9;}
  }
  [zoom=9]{
    [scalerank=1]{shield-size:14;}
    [scalerank=2]{shield-size:13;}
    [scalerank=3]{shield-size:12;}
    [scalerank=4]{shield-size:11;}
    [scalerank=5]{shield-size:10;}
    [scalerank=6]{shield-size:9;}
  }
  [zoom=10]{
    [scalerank=1]{shield-size:18;}
    [scalerank=2]{shield-size:16;}
    [scalerank=3]{shield-size:14;}
    [scalerank=4]{shield-size:13;}
    [scalerank=5]{shield-size:12;}
    [scalerank=6]{shield-size:10;}
    [scalerank=7]{shield-size:9;}
  }
  [zoom=11]{
    [scalerank=1]{shield-size:18;}
    [scalerank=2]{shield-size:16;}
    [scalerank=3]{shield-size:15;}
    [scalerank=4]{shield-size:14;}
    [scalerank=5]{shield-size:12;}
    [scalerank=6]{shield-size:12;}
    [scalerank=7]{shield-size:11;}
    [scalerank=8]{shield-size:9;}
  }
  [zoom=12]{
    [scalerank=1]{shield-size:20;}
    [scalerank=2]{shield-size:18;}
    [scalerank=3]{shield-size:18;}
    [scalerank=4]{shield-size:16;}
    [scalerank=5]{shield-size:16;}
    [scalerank=6]{shield-size:12;}
    [scalerank=7]{shield-size:11;}
    [scalerank=8]{shield-size:9;}
    [scalerank=9]{shield-size:9;}
  }
  [zoom>=13]{
    [scalerank=1]{shield-size:20;}
    [scalerank=2]{shield-size:20;}
    [scalerank=3]{shield-size:18;}
    [scalerank=4]{shield-size:16;}
    [scalerank=5]{shield-size:14;}
    [scalerank=6]{shield-size:12;}
    [scalerank=7]{shield-size:11;}
    [scalerank=8]{shield-size:9;}
    [scalerank=9]{shield-size:9;}
    [scalerank=10]{shield-size:8;}
    [scalerank=11]{shield-size:8;}
  }
}