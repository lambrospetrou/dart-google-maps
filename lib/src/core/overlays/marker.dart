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

class Marker extends MVCObject {
  static Marker cast(js.Proxy proxy) => proxy == null ? null : new Marker.fromProxy(proxy);
  static bool isInstance(js.Proxy proxy) => js.instanceof(proxy, maps.Marker);
  static final num MAX_ZINDEX = maps.Marker.MAX_ZINDEX;

  static String _isSymbolOrIcon(js.Proxy proxy) {
    try {
      final path = proxy.path;
      return "Symbol";
    } on NoSuchMethodError {
      return "Icon";
    }
  }

  Marker([MarkerOptions opts]) : super(maps.Marker, [opts]);
  Marker.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  Animation get animation => Animation.find($unsafe.getAnimation());
  bool get clickable => $unsafe.getClickable();
  String get cursor => $unsafe.getCursor();
  bool get draggable => $unsafe.getDraggable();
  bool get flat => $unsafe.getFlat();
  dynamic/*string|Icon|Symbol*/ get icon {
    final result = $unsafe.getIcon();
    if (result is String) {
      return result;
    } else if (result is js.Proxy) {
      final type = _isSymbolOrIcon(result);
      if (type == "Symbol") {
        return GSymbol.cast(result);
      } else if (type == "Icon") {
        return Icon.cast(result);
      }
    }
    return result;
  }
  dynamic/*Map|StreetViewPanorama*/ get map {
    final result = $unsafe.getMap();
    if (GMap.isInstance(result)) {
      return GMap.cast(result);
    } else if (StreetViewPanorama.isInstance(result)) {
      return StreetViewPanorama.cast(result);
    }
    return result;
  }
  LatLng get position => LatLng.cast($unsafe.getPosition());
  dynamic/*string|Icon|Symbol*/ get shadow {
    final result = $unsafe.getShadow();
    if (result is String) {
      return result;
    } else if (result is js.Proxy) {
      final type = _isSymbolOrIcon(result);
      if (type == "Symbol") {
        return GSymbol.cast(result);
      } else if (type == "Icon") {
        return Icon.cast(result);
      }
    }
    return result;
  }
  MarkerShape get shape => MarkerShape.cast($unsafe.getShape());
  String get title => $unsafe.getTitle();
  bool get visible => $unsafe.getVisible();
  num get zIndex => $unsafe.getZIndex();
  set animation(Animation animation) => $unsafe.setAnimation(animation);
  set clickable(bool clickable) => $unsafe.setClickable(clickable);
  set cursor(String cursor) => $unsafe.setCursor(cursor);
  set draggable(bool draggable) => $unsafe.setDraggable(draggable);
  set flat(bool flag) => $unsafe.setFlat(flag);
  set icon(dynamic/*string|Icon|Symbol*/ icon) => $unsafe.setIcon(icon);
  set map(dynamic/*Map|StreetViewPanorama*/ map) => $unsafe.setMap(map);
  set options(MarkerOptions options) => $unsafe.setOptions(options);
  set position(LatLng latlng) => $unsafe.setPosition(latlng);
  set shadow(dynamic/*string|Icon|Symbol*/ shadow) => $unsafe.setShadow(shadow);
  set title(String title) => $unsafe.setTitle(title);
  set visible(bool visible) => $unsafe.setVisible(visible);
  set zIndex(num zIndex) => $unsafe.setZIndex(zIndex);

  MarkerEvents get on => new MarkerEvents._(this);
}

class MarkerEvents {
  static final ANIMATION_CHANGED = "animation_changed";
  static final CLICK = "click";
  static final CLICKABLE_CHANGED = "clickable_changed";
  static final CURSOR_CHANGED = "cursor_changed";
  static final DBLCLICK = "dblclick";
  static final DRAG = "drag";
  static final DRAGEND = "dragend";
  static final DRAGGABLE_CHANGED = "draggable_changed";
  static final DRAGSTART = "dragstart";
  static final FLAT_CHANGED = "flat_changed";
  static final ICON_CHANGED = "icon_changed";
  static final MOUSEDOWN = "mousedown";
  static final MOUSEOUT = "mouseout";
  static final MOUSEOVER = "mouseover";
  static final MOUSEUP = "mouseup";
  static final POSITION_CHANGED = "position_changed";
  static final RIGHTCLICK = "rightclick";
  static final SHADOW_CHANGED = "shadow_changed";
  static final SHAPE_CHANGED = "shape_changed";
  static final TITLE_CHANGED = "title_changed";
  static final VISIBLE_CHANGED = "visible_changed";
  static final ZINDEX_CHANGED = "zindex_changed";

  final Marker _marker;

  MarkerEvents._(this._marker);

  NoArgsEventListenerAdder get animationChanged => new NoArgsEventListenerAdder(_marker, ANIMATION_CHANGED);
  MouseEventListenerAdder get click => new MouseEventListenerAdder(_marker, CLICK);
  NoArgsEventListenerAdder get clickableChanged => new NoArgsEventListenerAdder(_marker, CLICKABLE_CHANGED);
  NoArgsEventListenerAdder get cursorChanged => new NoArgsEventListenerAdder(_marker, CURSOR_CHANGED);
  MouseEventListenerAdder get dblclick => new MouseEventListenerAdder(_marker, DBLCLICK);
  MouseEventListenerAdder get drag => new MouseEventListenerAdder(_marker, DRAG);
  MouseEventListenerAdder get dragend => new MouseEventListenerAdder(_marker, DRAGEND);
  NoArgsEventListenerAdder get draggableChanged => new NoArgsEventListenerAdder(_marker, DRAGGABLE_CHANGED);
  MouseEventListenerAdder get dragstart => new MouseEventListenerAdder(_marker, DRAGSTART);
  NoArgsEventListenerAdder get flatChanged => new NoArgsEventListenerAdder(_marker, FLAT_CHANGED);
  NoArgsEventListenerAdder get iconChanged => new NoArgsEventListenerAdder(_marker, ICON_CHANGED);
  MouseEventListenerAdder get mousedown => new MouseEventListenerAdder(_marker, MOUSEDOWN);
  MouseEventListenerAdder get mouseout => new MouseEventListenerAdder(_marker, MOUSEOUT);
  MouseEventListenerAdder get mouseover => new MouseEventListenerAdder(_marker, MOUSEOVER);
  MouseEventListenerAdder get mouseup => new MouseEventListenerAdder(_marker, MOUSEUP);
  NoArgsEventListenerAdder get positionChanged => new NoArgsEventListenerAdder(_marker, POSITION_CHANGED);
  MouseEventListenerAdder get rightclick => new MouseEventListenerAdder(_marker, RIGHTCLICK);
  NoArgsEventListenerAdder get shadowChanged => new NoArgsEventListenerAdder(_marker, SHADOW_CHANGED);
  NoArgsEventListenerAdder get shapeChanged => new NoArgsEventListenerAdder(_marker, SHAPE_CHANGED);
  NoArgsEventListenerAdder get titleChanged => new NoArgsEventListenerAdder(_marker, TITLE_CHANGED);
  NoArgsEventListenerAdder get visibleChanged => new NoArgsEventListenerAdder(_marker, VISIBLE_CHANGED);
  NoArgsEventListenerAdder get zindexChanged => new NoArgsEventListenerAdder(_marker, ZINDEX_CHANGED);
}