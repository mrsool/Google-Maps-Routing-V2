# frozen_string_literal: true

# The MIT License (MIT)
#
# Copyright <YEAR> <COPYRIGHT HOLDER>
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Maps
    module Routing
      module V2
        # Encapsulates an encoded polyline.
        # @!attribute [rw] encoded_polyline
        #   @return [::String]
        #     The string encoding of the polyline using the [polyline encoding
        #     algorithm](https://developers.google.com/maps/documentation/utilities/polylinealgorithm)
        # @!attribute [rw] geo_json_linestring
        #   @return [::Google::Protobuf::Struct]
        #     Specifies a polyline using the [GeoJSON LineString
        #     format](https://tools.ietf.org/html/rfc7946#section-3.1.4)
        class Polyline
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A set of values that specify the quality of the polyline.
        module PolylineQuality
          # No polyline quality preference specified. Defaults to `OVERVIEW`.
          POLYLINE_QUALITY_UNSPECIFIED = 0

          # Specifies a high-quality polyline - which is composed using more points
          # than `OVERVIEW`, at the cost of increased response size. Use this value
          # when you need more precision.
          HIGH_QUALITY = 1

          # Specifies an overview polyline - which is composed using a small number of
          # points. Use this value when displaying an overview of the route. Using this
          # option has a lower request latency compared to using the
          # `HIGH_QUALITY` option.
          OVERVIEW = 2
        end

        # Specifies the preferred type of polyline to be returned.
        module PolylineEncoding
          # No polyline type preference specified. Defaults to `ENCODED_POLYLINE`.
          POLYLINE_ENCODING_UNSPECIFIED = 0

          # Specifies a polyline encoded using the [polyline encoding
          # algorithm](https://developers.google.com/maps/documentation/utilities/polylinealgorithm).
          ENCODED_POLYLINE = 1

          # Specifies a polyline using the [GeoJSON LineString
          # format](https://tools.ietf.org/html/rfc7946#section-3.1.4)
          GEO_JSON_LINESTRING = 2
        end
      end
    end
  end
end
