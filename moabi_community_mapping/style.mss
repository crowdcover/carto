#excites {
  [type = '0'],
  [type = '1'],
  [type = '2'],
  [type = '3'],
  [type = '4'] {
    marker-allow-overlap: false;
    marker-file: url(../img/icon/agriculture.svg);
    [zoom <= 16]{ marker-transform: "scale(0.12)"; }
    [zoom = 17]{ marker-transform: "scale(0.16)"; }
    [zoom >= 18]{ marker-transform: "scale(0.18)"; }
  }
  [type = '6'],
  [type = '7'],
  [type = '47'],
  [type = '48'],
  [type = '49'],
  [type = '50'] {
    marker-allow-overlap: false;
    marker-file: url(../img/icon/community.svg);
    [zoom <= 16]{ marker-transform: "scale(0.14)"; }
    [zoom = 17]{ marker-transform: "scale(0.18)"; }
    [zoom >= 18]{ marker-transform: "scale(0.22)"; }
  }
  [type = '8'],
  [type = '9'],
  [type = '10'],
  [type = '16'] {
    marker-allow-overlap: false;
    marker-file: url(../img/icon/fish.svg);
    [zoom <= 16]{ marker-transform: "scale(0.12)"; }
    [zoom = 17]{ marker-transform: "scale(0.16)"; }
    [zoom >= 18]{ marker-transform: "scale(0.18)"; }
  }
  [type = '11'],
  [type = '12'],
  [type = '13'],
  [type = '14'] {
    marker-allow-overlap: false;
    marker-file: url(../img/icon/food_bag.svg);
    [zoom <= 16]{ marker-transform: "scale(0.11)"; }
    [zoom = 17]{ marker-transform: "scale(0.15)"; }
    [zoom >= 18]{ marker-transform: "scale(0.18)"; }
  }
  [type = '15'],
  [type = '17'] {
    marker-allow-overlap: false;
    marker-file: url(../img/icon/paw.svg);
    [zoom <= 16]{ marker-transform: "scale(0.14)"; }
    [zoom = 17]{ marker-transform: "scale(0.16)"; }
    [zoom >= 18]{ marker-transform: "scale(0.18)"; }
  }
  [type = '28'],
  [type = '29'],
  [type = '42'],
  [type = '43'],
  [type = '45'],
  [type = '46'],
  [type = '55'],
  [type = '56'],
  [type = '37'],
  [type = '58'],
  [type = '59'],
  [type = '60'] {
    marker-allow-overlap: false;
    marker-file: url(../img/icon/chainsaw.svg);
    [zoom <= 16]{ marker-transform: "scale(0.18)"; }
    [zoom = 17]{ marker-transform: "scale(0.22)"; }
    [zoom >= 18]{ marker-transform: "scale(0.25)"; }
  }
  [type = '5'] {
    marker-allow-overlap: false;
    marker-file: url(../img/icon/tree.svg);
    [zoom <= 16]{ marker-transform: "scale(0.14)"; }
    [zoom = 17]{ marker-transform: "scale(0.16)"; }
    [zoom >= 18]{ marker-transform: "scale(0.2)"; }
  }
  [type = '18'],
  [type = '19'],
  [type = '20'],
  [type = '21'],
  [type = '22'],
  [type = '32'],
  [type = '33'],
  [type = '34'],
  [type = '35'],
  [type = '36'] {
    marker-allow-overlap: false;
    marker-file: url(../img/icon/agriculture_destoyed.svg);
    [zoom <= 16]{ marker-transform: "scale(0.12)"; }
    [zoom = 17]{ marker-transform: "scale(0.16)"; }
    [zoom >= 18]{ marker-transform: "scale(0.18)"; }
  }
  [type = '24'],
  [type = '25'],
  [type = '26'],
  [type = '27'],
  [type = '38'],
  [type = '39'],
  [type = '20'],
  [type = '41'] {
    marker-allow-overlap: false;
    marker-file: url(../img/icon/food_bag_destroyed.svg);
    [zoom <= 16]{ marker-transform: "scale(0.11)"; }
    [zoom = 17]{ marker-transform: "scale(0.15)"; }
    [zoom >= 18]{ marker-transform: "scale(0.18)"; }
  }
  [type = '30'],
  [type = '31'],
  [type = '44'],
  [type = '61'],
  [type = '62'] {
    marker-allow-overlap: false;
    marker-file: url(../img/icon/chainsaw_illegal.svg);
    [zoom <= 16]{ marker-transform: "scale(0.18)"; }
    [zoom = 17]{ marker-transform: "scale(0.22)"; }
    [zoom >= 18]{ marker-transform: "scale(0.25)"; }
  }
  [type = '23'],
  [type = '37'] {
    marker-allow-overlap: false;
    marker-file: url(../img/icon/tree_destroyed.svg);
    [zoom <= 16]{ marker-transform: "scale(0.14)"; }
    [zoom = 17]{ marker-transform: "scale(0.16)"; }
    [zoom >= 18]{ marker-transform: "scale(0.2)"; }
  }/*
  ::shadow{
    marker-allow-overlap: true;
    marker-fill: black;
    marker-opacity: 0;
    image-filters: agg-stack-blur(5,5);
    [zoom <= 16]{ marker-width: 12; }
    [zoom = 17]{ marker-width: 15; }
    [zoom >= 18]{ marker-width: 20; }
  }*/
}
