Map {
  background-color: #f9fddc;
  ::pattern { 
    background-image:url("grass2.png");
    background-image-comp-op: multiply;
    background-image-opacity: 0.2;
  }
    
}

#PSU_OPP_Boundary201402 {
  polygon-fill: #a7d79c;
  polygon-opacity: 0.5;
  comp-op: multiply;
}

#PSU_OPP_Roads_unpaved201402,
#PSU_OPP_Misc_paved201402,
#PSU_OPP_Parking201402 {
   ["LAYER" = "C-PKNG-BITUM"] {
      ::fill { polygon-fill: #626363; }
      ::pattern {
        polygon-pattern-file: url("wall4.png");
        polygon-pattern-alignment: local;
        polygon-pattern-opacity: 0.5;
        comp-op: overlay;
        image-filters: agg-stack-blur(1,1);
      }
       }
    }
#PSU_OPP_Roads_major201402,
#PSU_OPP_Roads_minor201402 {
   ["LAYER" = "C-ROAD-MAJOR-BITUM"] {
      ::fill { polygon-fill: #626363; }
      ::pattern {
        polygon-pattern-file: url("wall4.png");
        polygon-pattern-alignment: local;
        polygon-pattern-opacity: 0.5;
        comp-op: overlay;
        image-filters: agg-stack-blur(1,1);
      }
       }
    }
#PSU_OPP_Parking_Stripes201402,
#PSU_OPP_Crosswalks_ln201402,
#PSU_OPP_Crosswalks_poly201402, {
  [zoom>=18] {
    line-width: 0.8;
    line-color: #fff;
    line-opacity: 0.9;
  }
  [zoom=17] {
    line-width: 0.4;
    line-color: #fff;
    line-opacity: 0.6;
  }
  comp-op: lighten;
}

#PSU_OPP_Recreation201402 [LAYER!='L-SITE-SPRT-GOLF'] [zoom>16] {
  line-width: 0.7;
  line-color: #fff;
}

#PSU_OPP_Planting_Beds201402 {
   ["LAYER" = "L-PLNT-BED"] {
      ::fill { polygon-fill: #437335; }
      ::pattern {
        polygon-pattern-file: url("rect4485.png");
        polygon-pattern-alignment:global;
        polygon-pattern-opacity: 1.0;
        comp-op:   soft-light;
        image-filters: agg-stack-blur(1,1);
              }
       }
    }

#PSU_OPP_Sidewalks201402 {
    ::shadow {
    line-color: #000;
    line-width: 1;
    line-opacity: 0.5;
    image-filters: agg-stack-blur(3,3);
    image-filters-inflate: true;
    comp-op: darken;
  }
  ::fill {
    polygon-fill: #ede1c9;
    ["LAYER" = "L-SITE-WALK-PAVER"] {
      ::fill { polygon-fill: #a35d57; }
      ::pattern {
        polygon-pattern-file: url("pavers.png");
        polygon-pattern-alignment: local;
        polygon-pattern-opacity: 0.3;
        comp-op: overlay;
        image-filters: agg-stack-blur(1,1);
      }
    }
    ["LAYER" = "L-SITE-WALK-BITUM"] {
      polygon-fill: #d2d2d2;
    }
    ["LAYER" = "L-SITE-WALK-STEPS"] {
      line-color: black;
      line-width: 2;
      line-opacity: 0.2;
      image-filters: agg-stack-blur(1,1);
    }
  }
}

#PSU_OPP_Walls201402 {
  building-height: 0.5;
  building-fill: #666464;
}

#PSU_OPP_Buildings201402 {
  ::outline [zoom>=18] {
    line-color: #000;
    line-width: 3;
    image-filters: agg-stack-blur(5,5);
    ["BLDG_ABBR" = "SWM"] { line-width: 1; }
  }
  ::box {
    ["BLDG_ABBR" = "SWM"] {
      building-fill-opacity: 0;
      ::fill {
        polygon-fill: #5da6cb; 
      }
      ::pattern {
        polygon-pattern-file: url("grass.png");
        polygon-pattern-alignment: local;
        polygon-pattern-opacity: 0.8;
        comp-op: screen;
        image-filters: agg-stack-blur(3,3);
        building-fill-opacity: 0;
      }
    }
    building-height: 1.5;
    building-fill: #222c4a;
  }
}

