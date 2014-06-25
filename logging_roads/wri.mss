#wri_roads {
  line-color:#ffa91d;
  [zoom = 6]{ line-width: @rdz6_min; }
  [zoom = 7]{ line-width: @rdz7_min; }
  [zoom = 8]{ line-width: @rdz8_min; }
  [zoom = 9]{ line-width: @rdz9_min; }
  [zoom = 10]{ line-width: @rdz10_maj; }
  [zoom = 11]{ line-width: @rdz11_maj; }
  [zoom = 12]{ line-width: @rdz12_maj; }
  [zoom = 13]{ line-width: @rdz13_maj; }
  [zoom = 14]{ line-width: @rdz14_maj; }
  [zoom = 15]{ line-width: @rdz15_maj; }
  [zoom = 16]{ line-width: @rdz16_maj; }
  [zoom = 17]{ line-width: @rdz17_maj; }
  [zoom = 18]{ line-width: @rdz18_maj; }
  ["categorie" = 'Forestière']{
  [zoom = 6]{ line-width: @rdz6_min; }
  [zoom = 7]{ line-width: @rdz7_min; }
  [zoom = 8]{ line-width: @rdz8_min; }
  [zoom = 9]{ line-width: @rdz9_min; }
  [zoom >= 10]{ line-width: @rdz10_maj + 1; line-dasharray: 1, 2; }
  [zoom = 11]{ line-width: @rdz11_maj + 2; }
  [zoom >= 12]{ line-width: @rdz12_maj + 2; line-dasharray: 1, 3; }
  [zoom = 13]{ line-width: @rdz13_maj + 3; }
  [zoom = 14]{ line-width: @rdz14_maj + 3; }
  [zoom = 15]{ line-width: @rdz15_maj + 3; }
  [zoom = 16]{ line-width: @rdz16_maj + 3; }
  [zoom = 17]{ line-width: @rdz17_maj + 3; }
  [zoom = 18]{ line-width: @rdz18_maj + 3; }
  }
}