/* ****************************************************************** */
/* OSM BRIGHT for Imposm                                              */
/* ****************************************************************** */

/* For basic style customization you can simply edit the colors and
 * fonts defined in this file. For more detailed / advanced
 * adjustments explore the other files.
 *
 * GENERAL NOTES
 *
 * There is a slight performance cost in rendering line-caps.  An
 * effort has been made to restrict line-cap definitions to styles
 * where the results will be visible (lines at least 2 pixels thick).
 */

/* ================================================================== */
/* FONTS
/* ================================================================== */

/* directory to load fonts from in addition to the system directories */
//Map { font-directory: url(./fonts); }
//Map { background-color: #4C4F30; }

/* set up font sets for various weights and styles */
@sans_lt:           "Open Sans Regular","DejaVu Sans Book","unifont Medium";
@sans_lt_italic:    "Open Sans Italic","DejaVu Sans Italic","unifont Medium";
@sans:              "Open Sans Semibold","DejaVu Sans Book","unifont Medium";
@sans_italic:       "Open Sans Semibold Italic","DejaVu Sans Italic","unifont Medium";
@sans_bold:         "Open Sans Bold","DejaVu Sans Bold","unifont Medium";
@sans_bold_italic:  "Open Sans Bold Italic","DejaVu Sans Bold Italic","unifont Medium";

/* Some fonts are larger or smaller than others. Use this variable to
   globally increase or decrease the font sizes. */
/* Note this is only implemented for certain things so far */
@text_adjust: 0;

/* ================================================================== */
/* LANDUSE & LANDCOVER COLORS
/* ================================================================== */
@l_gray: #F6F4F4;
@m_gray: #D0D0D0;
@d_gray: #888;

@land:              @l_gray;//#FCFBE7;
@water:             #c2e5fc;//#C4DFF6;
@grass:             @m_gray;//#E6F2C1;
@beach:             @m_gray;//#FFEEC7;
@park:              @m_gray;//#DAF2C1;
@cemetery:          @m_gray;//#D6DED2;
@wooded:            @m_gray;//#C3D9AD;
@agriculture:       @m_gray;//#F2E8B6;

@building:          @d_gray;//#E4E0E0;
@hospital:          @d_gray;//rgb(229,198,195);
@school:            @d_gray;//#FFF5CC;
@sports:            @d_gray;//#B8E6B8;

@residential:       @m_gray;//@land * 0.98;
@commercial:        @m_gray;//@land * 0.97;
@industrial:        @m_gray;//@land * 0.96;
@parking:           #EEE;

/* ================================================================== */
/* ROAD COLORS
/* ================================================================== */

/* For each class of road there are three color variables:
 * - line: for lower zoomlevels when the road is represented by a
 *         single solid line.
 * - case: for higher zoomlevels, this color is for the road's
 *         casing (outline).
 * - fill: for higher zoomlevels, this color is for the road's
 *         inner fill (inline).
 */
@road: rgba(240,240,240,0.6); //#4d4d4d;

@motorway_line:     @road;//#E65C5C;
@motorway_fill:     @road;//lighten(@motorway_line,10%);
@motorway_case:     rgba(255,255,255,0.6);//@motorway_line * 0.9;

@trunk_line:        @road;//#E68A5C;
@trunk_fill:        @road;//lighten(@trunk_line,10%);
@trunk_case:        rgba(255,255,255,0.6);//@trunk_line * 0.9;

@primary_line:      @road;//#FFC859;
@primary_fill:      @road;//rgba(255,255,255,0.4)lighten(@primary_line,10%);
@primary_case:      rgba(255,255,255,0.6);//@primary_line * 0.9;

@secondary_line:    @road;//#FFE873;
@secondary_fill:    @road;//lighten(@secondary_line,10%);
@secondary_case:    rgba(255,255,255,0.6);//@secondary_line * 0.9;

@standard_line:     @road * 0.85;//@land * 0.85;
@standard_fill:     @road;
@standard_case:     @road * 0.9;//@land * 0.9;

@pedestrian_line:   @standard_line;
@pedestrian_fill:   #FAFAF5;
@pedestrian_case:   @land;

@cycle_line:        @standard_line;
@cycle_fill:        #FAFAF5;
@cycle_case:        @land;

@rail_line:         #999;
@rail_fill:         #fff;
@rail_case:         @land;

@aeroway:           #ddd;

/* ================================================================== */
/* BOUNDARY COLORS
/* ================================================================== */

@admin_2:           orange; //#0A0A0A; //#324;

/* ================================================================== */
/* LABEL COLORS
/* ================================================================== */

/* We set up a default halo color for places so you can edit them all
   at once or override each individually. */
@place_halo:        fadeout(#fff,34%);

@country_text:      #435;
@country_halo:      @place_halo;

@state_text:        #546;
@state_halo:        @place_halo;

@city_text:         #444;
@city_halo:         @place_halo;

@town_text:         #666;
@town_halo:         @place_halo;

@poi_text:          #888;

@road_text:         #777;
@road_halo:         #fff;

@other_text:        #888;
@other_halo:        @place_halo;

@locality_text:     #aaa;
@locality_halo:     @land;

/* Also used for other small places: hamlets, suburbs, localities */
@village_text:      #888;
@village_halo:      @place_halo;

/* ****************************************************************** */