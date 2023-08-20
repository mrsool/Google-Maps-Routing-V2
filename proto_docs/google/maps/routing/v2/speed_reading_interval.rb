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
        # Traffic density indicator on a contiguous segment of a polyline or path.
        # Given a path with points P_0, P_1, ... , P_N (zero-based index), the
        # SpeedReadingInterval defines an interval and describes its traffic using the
        # following categories.
        # @!attribute [rw] start_polyline_point_index
        #   @return [::Integer]
        #     The starting index of this interval in the polyline.
        # @!attribute [rw] end_polyline_point_index
        #   @return [::Integer]
        #     The ending index of this interval in the polyline.
        # @!attribute [rw] speed
        #   @return [::Google::Maps::Routing::V2::SpeedReadingInterval::Speed]
        #     Traffic speed in this interval.
        class SpeedReadingInterval
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The classification of polyline speed based on traffic data.
          module Speed
            # Default value. This value is unused.
            SPEED_UNSPECIFIED = 0

            # Normal speed, no slowdown is detected.
            NORMAL = 1

            # Slowdown detected, but no traffic jam formed.
            SLOW = 2

            # Traffic jam detected.
            TRAFFIC_JAM = 3
          end
        end
      end
    end
  end
end
