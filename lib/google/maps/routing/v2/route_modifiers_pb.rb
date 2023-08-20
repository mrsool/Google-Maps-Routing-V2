# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/maps/routing/v2/route_modifiers.proto

require 'google/protobuf'

require 'google/maps/routing/v2/toll_passes_pb'
require 'google/maps/routing/v2/vehicle_info_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/maps/routing/v2/route_modifiers.proto", :syntax => :proto3) do
    add_message "google.maps.routing.v2.RouteModifiers" do
      optional :avoid_tolls, :bool, 1
      optional :avoid_highways, :bool, 2
      optional :avoid_ferries, :bool, 3
      optional :avoid_indoor, :bool, 4
      optional :vehicle_info, :message, 5, "google.maps.routing.v2.VehicleInfo"
      repeated :toll_passes, :enum, 6, "google.maps.routing.v2.TollPass"
    end
  end
end

module Google
  module Maps
    module Routing
      module V2
        RouteModifiers = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.maps.routing.v2.RouteModifiers").msgclass
      end
    end
  end
end
