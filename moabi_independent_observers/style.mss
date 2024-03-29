#observers {
  a/marker-width: 12;
  a/marker-fill: #fff;
  a/marker-line-width:0.6;
  a/marker-line-color: #a9b918;
  a/marker-line-opacity: 0.6;
  a/marker-allow-overlap: true;
  a/marker-fill-opacity:0.4;
  marker-file: url('../img/icon/eye.svg');
  //marker-transform: "scale(0.07)";
  marker-width: 8;
  marker-allow-overlap:true;
  [zoom>=6]{ 
    a/marker-width: 20;
    a/marker-line-width:1;
    marker-file: url('../img/icon/eye.svg');
    //marker-transform: "scale(0.12)";
    marker-width: 12;
  }
  [zoom>=8]{ 
    a/marker-width: 32;
    //marker-transform: "scale(0.2)"; 
    marker-width: 20;
  }
  [zoom>=11]{ 
    a/marker-width: 47;
    //marker-transform: "scale(0.3)"; 
    marker-width: 28;
  }
}
