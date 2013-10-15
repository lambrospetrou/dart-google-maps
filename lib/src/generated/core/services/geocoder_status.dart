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

class GeocoderStatus extends jsw.IsEnum<String> {
  static final ERROR = new GeocoderStatus._(maps['GeocoderStatus']['ERROR']);
  static final INVALID_REQUEST = new GeocoderStatus._(maps['GeocoderStatus']['INVALID_REQUEST']);
  static final OK = new GeocoderStatus._(maps['GeocoderStatus']['OK']);
  static final OVER_QUERY_LIMIT = new GeocoderStatus._(maps['GeocoderStatus']['OVER_QUERY_LIMIT']);
  static final REQUEST_DENIED = new GeocoderStatus._(maps['GeocoderStatus']['REQUEST_DENIED']);
  static final UNKNOWN_ERROR = new GeocoderStatus._(maps['GeocoderStatus']['UNKNOWN_ERROR']);
  static final ZERO_RESULTS = new GeocoderStatus._(maps['GeocoderStatus']['ZERO_RESULTS']);

  static final _FINDER = new jsw.EnumFinder<String, GeocoderStatus>([ERROR, INVALID_REQUEST, OK, OVER_QUERY_LIMIT, REQUEST_DENIED, UNKNOWN_ERROR, ZERO_RESULTS]);

  static GeocoderStatus find(o) => _FINDER.find(o);

  GeocoderStatus._(String value) : super(value);
}