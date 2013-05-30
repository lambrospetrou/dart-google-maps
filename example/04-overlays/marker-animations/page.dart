import 'dart:html' hide Animation;
import 'package:js/js.dart' as js;
import 'package:google_maps/google_maps.dart';

final LatLng stockholm = js.retain(new LatLng(59.32522, 18.07002));
final LatLng parliament = js.retain(new LatLng(59.327383, 18.06747));
Marker marker;
GMap map;

void main() {
  final mapOptions = new MapOptions()
    ..zoom = 13
    ..mapTypeId = MapTypeId.ROADMAP
    ..center = stockholm
    ;
  map = js.retain(new GMap(query("#map_canvas"), mapOptions));

  marker = js.retain(new Marker(new MarkerOptions()
    ..map = map
    ..draggable = true
    ..animation = Animation.DROP
    ..position = parliament
  ));
  marker.onClick.listen((e) => toggleBounce());
}

void toggleBounce() {
  if (marker.animation != null) {
    marker.animation = null;
  } else {
    marker.animation = Animation.BOUNCE;
  }
}