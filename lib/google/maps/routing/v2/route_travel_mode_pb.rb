# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/maps/routing/v2/route_travel_mode.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/maps/routing/v2/route_travel_mode.proto", :syntax => :proto3) do
    add_enum "google.maps.routing.v2.RouteTravelMode" do
      value :TRAVEL_MODE_UNSPECIFIED, 0
      value :DRIVE, 1
      value :BICYCLE, 2
      value :WALK, 3
      value :TWO_WHEELER, 4
      value :TRANSIT, 7
    end
  end
end

module Google
  module Maps
    module Routing
      module V2
        RouteTravelMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.maps.routing.v2.RouteTravelMode").enummodule
      end
    end
  end
end
