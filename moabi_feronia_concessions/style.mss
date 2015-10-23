@palm: darken(@forest_green, 6); //@d_orange;

@outline: #000;
@outline-width: 2;

#boteka_mills[zoom>=11]{
  marker-fill: #000000;
  marker-line-width:@outline-width;
  marker-line-color: @outline;
  marker-line-opacity: 1;
  marker-file: url('../img/industrial-24.svg');
  marker-allow-overlap:true;
  
  marker-transform: "scale(0.5)";
  [zoom>=14]{ 
    marker-transform: "scale(1)"; 
  }  
   [zoom>=18]{ 
    marker-transform: "scale(2)"; 
  }
}

#boteka_schools[zoom>=11]{

  marker-fill: #000000;
  marker-line-width:@outline-width;
  marker-line-color: @outline;
  marker-line-opacity: 1;
  marker-file: url('../img/library-24.svg');
  marker-allow-overlap:true;
  
  marker-transform: "scale(0.5)";
  [zoom>=14]{ 
    marker-transform: "scale(1)"; 
  }  
   [zoom>=18]{ 
    marker-transform: "scale(2)"; 
  }
}

#boteka_clinics[zoom>=11]{

  marker-fill: #000000;
  marker-line-width:@outline-width;
  marker-line-color: @outline;
  marker-line-opacity: 1;
  marker-file: url('../img/hospital-24.svg'); 
  marker-allow-overlap:true;
  
  marker-transform: "scale(0.5)";
  [zoom>=14]{ 
    marker-transform: "scale(1)"; 
  }  
   [zoom>=18]{ 
    marker-transform: "scale(2)"; 
  }
}

#boteka_cemetaries[zoom>=11]{

  marker-fill: #000000;
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
    marker-transform: "scale(2)"; 
  }
}

#boteka_villages[zoom>=11]{
  marker-fill: #000000;
  marker-line-width:@outline-width;
  marker-line-color: @outline;
  marker-line-opacity: 1;
  marker-file: url('../img/village-24.svg');
  marker-allow-overlap:true;
  
  marker-transform: "scale(0.5)";
  [zoom>=14]{ 
    marker-transform: "scale(1)"; 
  }  
   [zoom>=18]{ 
    marker-transform: "scale(2)"; 
  }
}




