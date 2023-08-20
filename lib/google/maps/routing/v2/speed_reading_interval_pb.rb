# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/maps/routing/v2/speed_reading_interval.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/maps/routing/v2/speed_reading_interval.proto", :syntax => :proto3) do
    add_message "google.maps.routing.v2.SpeedReadingInterval" do
      proto3_optional :start_polyline_point_index, :int32, 1
      proto3_optional :end_polyline_point_index, :int32, 2
      oneof :speed_type do
        optional :speed, :enum, 3, "google.maps.routing.v2.SpeedReadingInterval.Speed"
      end
    end
    add_enum "google.maps.routing.v2.SpeedReadingInterval.Speed" do
      value :SPEED_UNSPECIFIED, 0
      value :NORMAL, 1
      value :SLOW, 2
      value :TRAFFIC_JAM, 3
    end
  end
end

module Google
  module Maps
    module Routing
      module V2
        SpeedReadingInterval = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.maps.routing.v2.SpeedReadingInterval").msgclass
        SpeedReadingInterval::Speed = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.maps.routing.v2.SpeedReadingInterval.Speed").enummodule
      end
    end
  end
end
