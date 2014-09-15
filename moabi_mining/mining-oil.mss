@oil: @orange;
@mining: @yellow; //@muted_green;
@line1: #666;

/*
(SELECT mining.osm_id, row_number() OVER (ORDER BY redd.osm_id, ST_Y(ST_CENTROID(mining.way)))AS n, mining.way, 'exploration' AS type
FROM 
  (SELECT osm_id, way from planet_osm_polygon WHERE (tags->'concession')='mining')AS mining,
  (SELECT osm_id, way from planet_osm_polygon WHERE landuse='redd')AS redd
WHERE ST_Intersects(mining.way, redd.way)
) AS data

(SELECT osm_id, (tags->'license') AS license, 
  (tags->'status') as status, operator, (tags->'resource') as resource,
  (tags->'application_date') as application_date, (tags->'grant_date') as grant_date,
  (tags->'expiration_date') as expiration_date, way,
  CASE
    WHEN (tags->'license')='ZRG'
    THEN 'research'
    WHEN (tags->'license') in ('PR', 'PR (AS)', 'PR (PP)', 'ZRG', 'ARPC', 'ARPC (Car)')
    THEN 'exploration'
    WHEN (tags->'license') in ('PE', 'PEPM', 'PER', 'AECP', 'AECT', 'AECT (Car)', 'ZEA')
    THEN 'exploitation'
    ELSE 'other'
  END AS type
  FROM planet_osm_polygon 
  WHERE (tags -> 'concession') = 'mining') AS data
*/

#mining {
  polygon-fill: @mining;
  [type='research']{ 
    polygon-opacity: 0;
    line-opacity:0.6;
  }
  [type='exploration']{ 
    polygon-opacity: 0.7; 
    polygon-fill: @mining;
    line-opacity:0.8;
  }
  [type='exploitation']{ 
    polygon-opacity: 0.8;
    polygon-fill: spin(darken(@mining, 2%), -4%);
    polygon-pattern-comp-op: color-burn;
    polygon-pattern-alignment:global;
    [zoom <= 8]{polygon-pattern-file: url('../img/stripe_m_gray_#999999/ex_small.png');}
    [zoom > 8]{polygon-pattern-file: url('../img/stripe_m_gray_#999999/small.png');}
    line-opacity:1.0;
  }
  [type='other']{ 
    // just show thin black stroke
    polygon-opacity: 0;
  }
  line-color:@line1;
  [zoom = 4]{ line-width: 0.1; }
  [zoom = 5]{ line-width: 0.2; }
  [zoom = 6]{ line-width: 0.3; }
  [zoom = 7]{ line-width: 0.4; }
  [zoom = 8]{ line-width: 0.5; }
  [zoom = 9]{ line-width: 0.6; }
  [zoom >= 10]{ line-width:0.8; }
  ::doublestroke{
    [type='research']{line-color: fadeout(@mining,30%);}
    [type='exploration']{line-color: @mining;}
    [type='exploitation']{line-color: darken(@mining, 5%);}
    line-comp-op: multiply;
    line-opacity:0.8;
    line-cap: butt;
    line-join: miter;
    [zoom <= 4]{ line-width: 0.2; }
    [zoom = 5]{ line-width: 0.5; line-offset: -0.25; }
    [zoom = 6]{ line-width: 1.0; line-offset: -0.5; }
    [zoom = 7]{ line-width: 2.0; line-offset: -1.0; }
    [zoom = 8]{ line-width: 3.0; line-offset: -1.5; }
    [zoom = 9]{ line-width: 4.0; line-offset: -2.0; }
    [zoom >= 10]{ line-width: 6.0; line-offset: -3.0; }
    /* no stroke for anything unidentified */
    [type='other']{ line-width: 0; }
  }
}

#mining-redd_overlap [zoom >= 8]{
  text-face-name: 'DejaVu Sans Mono Bold','PT Sans Bold';
  text-name: [n];
  text-fill: darken(desaturate(@mining, 30%), 15%);
  text-comp-op:multiply;
  text-allow-overlap: true;
  text-placement: interior;
  [zoom=8]{text-size: 8;}
  [zoom=9]{text-size: 11;}
  [zoom=10]{text-size: 16;}
  [zoom=11]{text-size: 20;}
  [zoom>=12]{text-size: 30;}
  //[zoom=13]{text-size: 10;}
  //[zoom=14]{text-size: 10;}
}

#oil_concessions {
  polygon-opacity:0.4;
  polygon-fill: @oil; 
  //polygon-comp-op: multiply;
  line-color:@admin_dark;
  line-opacity:0.5;
  [zoom <= 3]{ line-width: 0.1; }
  [zoom = 4]{ line-width: 0.2; }
  [zoom = 5]{ line-width: 0.3; }
  [zoom = 6]{ line-width: 0.4; }
  [zoom = 7]{ line-width: 0.5; }
  [zoom = 8]{ line-width: 0.6; }
  [zoom = 9]{ line-width: 0.7; }
  [zoom >= 10]{ line-width:0.8; }
  ::doublestroke{
    line-color: @oil;
    line-comp-op: multiply;
    line-opacity:0.8;
    line-cap: butt;
    line-join: miter;
    [zoom <= 4]{ line-width: 0.2; }
    [zoom = 5]{ line-width: 0.5; line-offset: -0.25; }
    [zoom = 6]{ line-width: 1.0; line-offset: -0.5; }
    [zoom = 7]{ line-width: 2.0; line-offset: -1.0; }
    [zoom = 8]{ line-width: 3.0; line-offset: -1.5; }
    [zoom = 9]{ line-width: 4.0; line-offset: -2.0; }
    [zoom >= 10]{ line-width: 6.0; line-offset: -3.0; }
  }
}