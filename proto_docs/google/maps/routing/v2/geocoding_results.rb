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
        # Contains {::Google::Maps::Routing::V2::GeocodedWaypoint GeocodedWaypoints} for
        # origin, destination and intermediate waypoints. Only populated for address
        # waypoints.
        # @!attribute [rw] origin
        #   @return [::Google::Maps::Routing::V2::GeocodedWaypoint]
        #     Origin geocoded waypoint.
        # @!attribute [rw] destination
        #   @return [::Google::Maps::Routing::V2::GeocodedWaypoint]
        #     Destination geocoded waypoint.
        # @!attribute [rw] intermediates
        #   @return [::Array<::Google::Maps::Routing::V2::GeocodedWaypoint>]
        #     A list of intermediate geocoded waypoints each containing an index field
        #     that corresponds to the zero-based position of the waypoint in the order
        #     they were specified in the request.
        class GeocodingResults
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Details about the locations used as waypoints. Only populated for address
        # waypoints. Includes details about the geocoding results for the purposes of
        # determining what the address was geocoded to.
        # @!attribute [rw] geocoder_status
        #   @return [::Google::Rpc::Status]
        #     Indicates the status code resulting from the geocoding operation.
        # @!attribute [rw] intermediate_waypoint_request_index
        #   @return [::Integer]
        #     The index of the corresponding intermediate waypoint in the request.
        #     Only populated if the corresponding waypoint is an intermediate
        #     waypoint.
        # @!attribute [rw] type
        #   @return [::Array<::String>]
        #     The type(s) of the result, in the form of zero or more type tags.
        #     Supported types:
        #     https://developers.google.com/maps/documentation/geocoding/requests-geocoding#Types
        # @!attribute [rw] partial_match
        #   @return [::Boolean]
        #     Indicates that the geocoder did not return an exact match for the original
        #     request, though it was able to match part of the requested address. You may
        #     wish to examine the original request for misspellings and/or an incomplete
        #     address.
        # @!attribute [rw] place_id
        #   @return [::String]
        #     The place ID for this result.
        class GeocodedWaypoint
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
