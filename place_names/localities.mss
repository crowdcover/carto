@sans:"Droid Sans Book","Arial Regular","DejaVu Sans Book";
@sans_bold:"Droid Sans Bold","Arial Bold","DejaVu Sans Bold";

@text_fill: #111;
@text_halo_fill: rgba(255,255,255,1);

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
    text-name:'    -  ' + [name] + '  -    ';
    text-wrap-width:1;
    text-wrap-character:'-';
    //text-name: [name];
    text-face-name:@sans;
    text-fill:@text_fill;
    text-size:10;
    text-halo-radius:1.8;
    text-halo-fill:@text_halo_fill;
    text-character-spacing:2;
    text-placement-type:simple;
    text-placements: "E,NE,SE,W,NW,SW";
    text-transform:capitalize;
    /*text-dy:-20;
    ::point{
      marker-width:3;
      marker-fill:black;
      marker-line-width:0;
      marker-allow-overlap:true;
    }*/
  }
  [zoom=5]{
    [scalerank=1]{text-size:10;}
    [scalerank=2]{text-size:9;}
  }
  [zoom=6]{
    [scalerank=1]{text-size:12;}
    [scalerank=2]{text-size:11;}
    [scalerank=3]{text-size:10;}
  }
  [zoom=7]{
    [scalerank=1]{text-size:13;}
    [scalerank=2]{text-size:12;}
    [scalerank=3]{text-size:11;}
    [scalerank=4]{text-size:11;}
  }
  [zoom=8]{
    [scalerank=1]{text-size:13;}
    [scalerank=2]{text-size:12;}
    [scalerank=3]{text-size:12;}
    [scalerank=4]{text-size:11;}
    [scalerank=5]{text-size:11;}
  }
  [zoom=9]{
    [scalerank=1]{text-size:14;}
    [scalerank=2]{text-size:13;}
    [scalerank=3]{text-size:13;}
    [scalerank=4]{text-size:12;}
    [scalerank=5]{text-size:12;}
    [scalerank=6]{text-size:11;}
  }
  [zoom=10]{
    [scalerank=1]{text-size:18;}
    [scalerank=2]{text-size:16;}
    [scalerank=3]{text-size:14;}
    [scalerank=4]{text-size:13;}
    [scalerank=5]{text-size:12;}
    [scalerank=6]{text-size:10;}
    [scalerank=7]{text-size:9;}
  }
  [zoom=11]{
    [scalerank=1]{text-size:18;}
    [scalerank=2]{text-size:16;}
    [scalerank=3]{text-size:15;}
    [scalerank=4]{text-size:14;}
    [scalerank=5]{text-size:12;}
    [scalerank=6]{text-size:12;}
    [scalerank=7]{text-size:11;}
    [scalerank=8]{text-size:9;}
  }
  [zoom=12]{
    [scalerank=1]{text-size:20;}
    [scalerank=2]{text-size:18;}
    [scalerank=3]{text-size:18;}
    [scalerank=4]{text-size:16;}
    [scalerank=5]{text-size:16;}
    [scalerank=6]{text-size:12;}
    [scalerank=7]{text-size:11;}
    [scalerank=8]{text-size:9;}
    [scalerank=9]{text-size:9;}
  }
  [zoom>=13]{
    [scalerank=1]{text-size:20;}
    [scalerank=2]{text-size:20;}
    [scalerank=3]{text-size:18;}
    [scalerank=4]{text-size:16;}
    [scalerank=5]{text-size:14;}
    [scalerank=6]{text-size:12;}
    [scalerank=7]{text-size:11;}
    [scalerank=8]{text-size:9;}
    [scalerank=9]{text-size:9;}
    [scalerank=10]{text-size:8;}
    [scalerank=11]{text-size:8;}
  }
}