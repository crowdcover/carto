@palm: darken(@forest_green, 6); //@d_orange;
@outline: #000;
@outline-width: 2;

#boteka_mills[zoom>=11]{
  marker-fill: #5CE62E;
  marker-line-width:@outline-width;
  marker-line-color: @outline;
  marker-line-opacity: 1;
  marker-file: url('../img/industrial-24.svg');
  marker-allow-overlap:true;
  
  marker-transform: "scale(1)";
  [zoom>=14]{ 
    marker-transform: "scale(2)"; 
  }  
   [zoom>=18]{ 
    marker-transform: "scale(3)"; 
  }
}

#boteka_schools[zoom>=11]{
  marker-fill: #16E6E6;
  marker-line-width:@outline-width;
  marker-line-color: @outline;
  marker-line-opacity: 1;
  marker-file: url('../img/library-24.svg');
  marker-allow-overlap:true;
  marker-transform: "scale(0.8)";
  [zoom>=14]{ 
    marker-transform: "scale(1.5)"; 
  }  
   [zoom>=18]{ 
    marker-transform: "scale(2)"; 
  }
}

#boteka_clinics[zoom>=11]{
  marker-fill: #FF3300;
  marker-line-width:@outline-width;
  marker-line-color: @outline;
  marker-line-opacity: 1;
  marker-file: url('../img/hospital-24.svg'); 
  marker-allow-overlap:true;
   marker-transform: "scale(1)";
  [zoom>=14]{ 
    marker-transform: "scale(2)"; 
  }  
   [zoom>=18]{ 
    marker-transform: "scale(3)"; 
  }
}

#boteka_cemetaries[zoom>=11]{
  marker-fill: #669999;
  marker-line-width:@outline-width;
  marker-line-color: @outline;
  marker-line-opacity: 1;
  marker-file: url('../img/cemetery-24.svg');
  marker-allow-overlap:true;
  marker-transform: "scale(0.5)";
  [zoom>=14]{ 
    marker-transform: "scale(1)"; 
  }  
   [zoom>=18]{ 
    marker-transform: "scale(1.2)"; 
  }
}

#boteka_villages[zoom>=11]{
  marker-fill: #FF9900;
  marker-line-width:@outline-width;
  marker-line-color: @outline;
  marker-line-opacity: 1;
  marker-file: url('../img/village-24.svg');
  marker-allow-overlap:true;
  marker-transform: "scale(1.2)";
  [zoom>=14]{ 
    marker-transform: "scale(2)"; 
  }  
   [zoom>=18]{ 
    marker-transform: "scale(3)"; 
  }
}




