#ag_project {
  [zoom<6]{ 
    marker-file: url('../img/icon/community.svg');
    marker-transform: "scale(0.1)"; 
  }
  [zoom>=6]{ 
    a/marker-width: 22;
    a/marker-fill: white;
    a/marker-line-width:1;
    a/marker-line-opacity: 0.2;
    a/marker-allow-overlap: true;
    a/marker-fill-opacity:0.8;
    marker-file: url('../img/icon/community.svg');
    marker-transform: "scale(0.15)";
    marker-allow-overlap:true;
  }
  [zoom>=9]{ 
    a/marker-width: 32;
    marker-transform: "scale(0.2)"; 
  }
  [zoom>=11]{ 
    a/marker-width: 47;
    marker-transform: "scale(0.3)"; 
  }
}
