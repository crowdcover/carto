@palm: darken(@forest_green, 6); //@d_orange;

#boteka_rivers[rivertype = 'river']{
   ::case {
    line-width: 5;
    line-color:#1f4799;
    [zoom>=0]{line-width: 0;}
    [zoom>=11]{line-width: 4;}
    [zoom>=12]{line-width: 5;}
    }
  ::fill {
    line-width: 2.5;
    line-color:#34a8dd;
    [zoom>=0]{line-width: 0;}
    [zoom>=11]{line-width: 2;}
    [zoom>=12]{line-width: 2.5;}
  }
  }

#boteka_plantation_roads{
  line-color:#47372a;
  line-opacity:1;
    [zoom>=0]{line-width: 0;}
    [zoom>=11]{line-width: 0.5;}
    [zoom>=12]{line-width: 1;}
  }

#boteka_roads{
 ::case {
  line-opacity:0.8;
  line-color:#5d4715;
    [zoom>=0]{line-width: 0;}
    [zoom>=11]{line-width: 4;}
    [zoom>=12]{line-width: 5;}
    }
  ::fill {
    line-opacity:0.8;
    line-color:#bb9130;
    [zoom>=0]{line-width: 0;}
    [zoom>=11]{line-width: 2.5;}
    [zoom>=12]{line-width: 3;}
  }
  }

#boteka_rivers[rivertype = 'tributary']{
  ::case {
    line-width: 2;
    line-color:#1f4799;
    [zoom>=0]{line-width: 0;}
    [zoom>=11]{line-width: 1.5;}
    [zoom>=12]{line-width: 2;}
    }
  ::fill {
    line-width: 1;
    line-color:#34a8dd;
    [zoom>=0]{line-width: 0;}
    [zoom>=11]{line-width: 0.5;}
    [zoom>=12]{line-width: 1;}
  }
}


#boteka_schools{
  marker-width: 12;
  marker-fill: #000000;
  marker-line-width:0.6;
  marker-line-color: #222222;
  marker-line-opacity: 1;
  marker-file: url('../img/maki/library-24.svg');
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
  marker-file: url('../img/maki/hospital-24.svg');
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
  marker-file: url('../img/maki/cemetery-24.svg');
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
  marker-file: url('../img/maki/village-24.svg');
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

#boteka_mills{
  marker-width: 12;
  marker-fill: #000000;
  marker-line-width:0.6;
  marker-line-color: #222222;
  marker-line-opacity: 1;
  marker-file: url('../img/maki/industrial-24.svg');
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

  

