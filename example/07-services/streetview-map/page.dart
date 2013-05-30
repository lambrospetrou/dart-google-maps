import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/google_maps.dart';

void main() {
  final fenway = new LatLng(42.345573,-71.098326);
  final mapOptions = new MapOptions()
    ..center = fenway
    ..zoom = 14
    ..mapTypeId = MapTypeId.ROADMAP
    ;
  final map = new GMap(query('#map_canvas'), mapOptions);
}