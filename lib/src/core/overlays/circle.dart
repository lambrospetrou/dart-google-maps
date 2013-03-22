// Copyright (c) 2012, Alexandre Ardhuin
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

part of google_maps;

abstract class _Circle {
  @dartified LatLngBounds getBounds();
  @dartified LatLng getCenter();
  @dartified bool getDraggable();
  @dartified bool getEditable();
  @dartified GMap getMap();
  @dartified num getRadius();
  @dartified bool getVisible();
  @dartified void setCenter(LatLng center);
  @dartified void setDraggable(bool draggable);
  @dartified void setEditable(bool editable);
  @dartified void setMap(GMap map);
  @dartified void setOptions(CircleOptions options);
  @dartified void setRadius(num radius);
  @dartified void setVisible(bool visible);
}

class Circle extends MVCObject implements _Circle{
  static Circle cast(js.Proxy proxy) => jsw.mapNotNull(proxy, (proxy) => new Circle.fromProxy(proxy));
  static bool isInstance(js.Proxy proxy) => js.instanceof(proxy, maps.Circle);

  Circle([CircleOptions opts]) : super(maps.Circle, [opts]);
  Circle.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  @override LatLngBounds getBounds() => LatLngBounds.cast($unsafe.getBounds());
  @override LatLng getCenter() => LatLng.cast($unsafe.getCenter());
  @override GMap getMap() => GMap.cast($unsafe.getMap());

  LatLngBounds get bounds => getBounds();
  LatLng get center => getCenter();
  bool get draggable => getDraggable();
  bool get editable => getEditable();
  GMap get map => getMap();
  num get radius => getRadius();
  bool get visible => getVisible();
  set center(LatLng center) => setCenter(center);
  set draggable(bool draggable) => setDraggable(draggable);
  set editable(bool editable) => setEditable(editable);
  set map(GMap map) => setMap(map);
  set options(CircleOptions options) => setOptions(options);
  set radius(num radius) => setRadius(radius);
  set visible(bool visible) => setVisible(visible);

  CircleEvents get on => new CircleEvents._(this);
}

class CircleEvents {
  static final CENTER_CHANGED = "center_changed";
  static final CLICK = "click";
  static final DBLCLICK = "dblclick";
  static final MOUSEDOWN = "mousedown";
  static final MOUSEMOVE = "mousemove";
  static final MOUSEOUT = "mouseout";
  static final MOUSEOVER = "mouseover";
  static final MOUSEUP = "mouseup";
  static final RADIUS_CHANGED = "radius_changed";
  static final RIGHTCLICK = "rightclick";

  final Circle _circle;

  CircleEvents._(this._circle);

  NoArgsEventListenerAdder get centerChanged => new NoArgsEventListenerAdder(_circle, CENTER_CHANGED);
  MouseEventListenerAdder get click => new MouseEventListenerAdder(_circle, CLICK);
  MouseEventListenerAdder get dblclick => new MouseEventListenerAdder(_circle, DBLCLICK);
  MouseEventListenerAdder get mousedown => new MouseEventListenerAdder(_circle, MOUSEDOWN);
  MouseEventListenerAdder get mousemove => new MouseEventListenerAdder(_circle, MOUSEMOVE);
  MouseEventListenerAdder get mouseout => new MouseEventListenerAdder(_circle, MOUSEOUT);
  MouseEventListenerAdder get mouseover => new MouseEventListenerAdder(_circle, MOUSEOVER);
  MouseEventListenerAdder get mouseup => new MouseEventListenerAdder(_circle, MOUSEUP);
  NoArgsEventListenerAdder get radiusChanged => new NoArgsEventListenerAdder(_circle, RADIUS_CHANGED);
  MouseEventListenerAdder get rightclick => new MouseEventListenerAdder(_circle, RIGHTCLICK);
}