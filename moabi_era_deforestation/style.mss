#moabi_deforestation_drivers {
  a/marker-width: 12;
  a/marker-fill: #fff;
  a/marker-line-width:0.6;
  a/marker-line-color: #c93807;
  a/marker-line-opacity: 0.6;
  a/marker-allow-overlap: true;
  a/marker-fill-opacity:0.4;
  marker-file: url('../img/icon/chainsaw.svg');
  marker-transform: "scale(0.07)";
  marker-allow-overlap:true;
  [zoom>=6]{ 
    a/marker-width: 20;
    a/marker-line-width:1;
    marker-file: url('../img/icon/chainsaw.svg');
    marker-transform: "scale(0.12)";
  }
  [zoom>=8]{ 
    a/marker-width: 32;
    marker-transform: "scale(0.2)"; 
  }
  [zoom>=11]{ 
    a/marker-width: 47;
    marker-transform: "scale(0.3)"; 
  }
}

