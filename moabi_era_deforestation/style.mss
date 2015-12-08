#moabi_deforestation_drivers {
  a/marker-width: 12;
   a/marker-fill: #fff;
  a/marker-line-width:0.6;
  a/marker-line-color: #c93807;
  a/marker-line-opacity: 0.7;
  a/marker-allow-overlap: true;
  a/marker-fill-opacity:0.7;
  marker-file: url('../img/icon/chainsaw.svg');
  marker-transform: "scale(0.07)";
  marker-allow-overlap:true;
  
  [type = 'makala']{
  a/marker-fill: #9CD759;
  }
  
  [type = 'coup_bois']{
  a/marker-fill: #EF8938;
  }
  
   [type = 'feux_brousse']{
  a/marker-fill: #65A4DC;
  }
  
  [type = 'agri_brulis']{
  a/marker-fill:#c25de8;
  }
  
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

