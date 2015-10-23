@palm: darken(@forest_green, 6); //@d_orange;

#boteka_mills{
  marker-width: 12;
  marker-fill: #000000;
  marker-line-width:0.6;
  marker-line-color: #222222;
  marker-line-opacity: 1;
  marker-file: url('../img/industrial-24.svg');
  marker-transform: "scale(3)";
  marker-allow-overlap:true;
  [zoom>=0]{ 
    marker-width: 0;
    marker-line-width:1;
    marker-transform: "scale(0)";
  }
  [zoom>=11]{ 
    marker-width: 7;
    marker-transform: "scale(2)"; 
  }
  [zoom>=12]{ 
    marker-width: 16;
    marker-transform: "scale(2)"; 
  }
}

#boteka_schools{
  marker-width: 12;
  marker-fill: #000000;
  marker-line-width:0.6;
  marker-line-color: #222222;
  marker-line-opacity: 1;
  marker-file: url('../img/library-24.svg');
  marker-transform: "scale(3)";
  marker-allow-overlap:true;
  [zoom>=0]{ 
    marker-width: 0;
    marker-line-width:1;
    marker-transform: "scale(0)";
  }
  [zoom>=11]{ 
    marker-width: 4;
    marker-transform: "scale(2)"; 
  }
  [zoom>=12]{ 
    marker-width: 8;
    marker-transform: "scale(2)"; 
  }
}

#boteka_clinics{
  marker-width: 12;
  marker-fill: #000000;
  marker-line-width:0.6;
  marker-line-color: #222222;
  marker-line-opacity: 1;
  marker-file: url('../img/hospital-24.svg');
  marker-transform: "scale(3)";
  marker-allow-overlap:true;
  [zoom>=0]{ 
    marker-width: 0;
    marker-line-width:1;
    marker-transform: "scale(0)";
  }
  [zoom>=11]{ 
    marker-width: 6;
    marker-transform: "scale(2)"; 
  }
  [zoom>=12]{ 
    marker-width: 12;
    marker-transform: "scale(2)"; 
  }
}

#boteka_cemetaries{
  marker-width: 12;
  marker-fill: #000000;
  marker-line-width:0.6;
  marker-line-color: #222222;
  marker-line-opacity: 1;
  marker-file: url('../img/cemetery-24.svg');
  marker-transform: "scale(3)";
  marker-allow-overlap:true;
  [zoom>=0]{ 
    marker-width: 0;
    marker-line-width:1;
    marker-transform: "scale(0)";
  }
  [zoom>=11]{ 
    marker-width: 2;
    marker-transform: "scale(2)"; 
  }
  [zoom>=12]{ 
    marker-width: 5;
    marker-transform: "scale(2)"; 
  }
}

#boteka_villages{
  marker-width: 12;
  marker-fill: #000000;
  marker-line-width:0.6;
  marker-line-color: #222222;
  marker-line-opacity: 1;
  marker-file: url('../img/village-24.svg');
  marker-transform: "scale(3)";
  marker-allow-overlap:true;
  [zoom>=0]{ 
    marker-width: 0;
    marker-line-width:1;
    marker-transform: "scale(0)";
  }
  [zoom>=11]{ 
    marker-width: 6;
    marker-transform: "scale(2)"; 
  }
  [zoom>=12]{ 
    marker-width: 13;
    marker-transform: "scale(2)"; 
  }
}




