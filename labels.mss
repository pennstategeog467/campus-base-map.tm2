#road_label [zoom>=15] {
  text-name: [name];
  text-face-name: 'Clan Offc Pro Extd Medium';
  text-size: 10;
  text-fill: #fff;
  text-transform: uppercase;
  text-halo-opacity: 0.5; 
  text-halo-fill: #8a8a8a;
  text-halo-radius: 2;
  text-placement: line;
  text-repeat-distance: 500;
  text-min-path-length: 50;
  text-margin: 4;
  text-avoid-edges: true;
}

#poi_label [zoom>=17] {
  text-name: [name];
  text-face-name: 'Clan Offc Pro Medium';
  text-size: 12;
  text-wrap-width: 10;
  text-fill: white;
  text-halo-opacity: 0.5; 
  text-halo-fill: #333;
  text-halo-radius: 2;
  text-margin: 10;
  text-avoid-edges: false;
  [zoom=19] {
    text-wrap-width: 50;
    text-size: 10;
    text-margin: 5;
  }
}

#poi_label [zoom>15] [maki!='marker'] {
  marker-fill:#ffffff;
  marker-line-color: black;
  marker-file:url('icons/[maki]-18.svg');
}