#palm_plantations {
  polygon-opacity:0.4;
  polygon-fill:white;
  //polygon-comp-op:color-dodge;
  line-width:1;
  line-color:white;
  ::outer-stroke{
    [zoom = 6]{
      line-width:2;
      line-color:white;
      line-opacity:0.1;
      line-offset:1;
    }
    [zoom = 7]{
      line-width:2;
      line-color:white;
      line-opacity:0.1;
      line-offset:1;
    }
    [zoom = 8]{
      line-width:3;
      line-color:white;
      line-opacity:0.1;
      line-offset:1.5;
    }
    [zoom = 9]{
      line-width:4;
      line-color:white;
      line-opacity:0.1;
      line-offset:2;
    }
    [zoom >= 10]{
      line-width:5;
      line-color:white;
      line-opacity:0.1;
      line-offset:2.5;
    }
  }
  ::inner-stroke{
    
  }
}
