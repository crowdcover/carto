Map {
  background-color: #090909;
}

#countries {
  line-color: #FFF;
  line-join: round;
  line-smooth: 1;
  [zoom <= 7]{ line-width: 0.2; }
  [zoom = 8]{ line-width: 0.3; }
  [zoom = 9]{ line-width: 0.4; }
  [zoom = 10]{ line-width: 0.5; }
  [zoom = 11]{ line-width: 0.6; }
  [zoom >= 12]{ line-width: 0.8; }
}

#admin1 [SR_ADM0_A3 = 'COD']{
  line-color: #FFF;
  line-width: 0.1;
  line-join: round;
  line-dasharray: 3,3;
  //polygon-fill: black;
}
