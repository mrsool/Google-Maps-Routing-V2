# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/maps/routing/v2/vehicle_emission_type.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/maps/routing/v2/vehicle_emission_type.proto", :syntax => :proto3) do
    add_enum "google.maps.routing.v2.VehicleEmissionType" do
      value :VEHICLE_EMISSION_TYPE_UNSPECIFIED, 0
      value :GASOLINE, 1
      value :ELECTRIC, 2
      value :HYBRID, 3
      value :DIESEL, 4
    end
  end
end

module Google
  module Maps
    module Routing
      module V2
        VehicleEmissionType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.maps.routing.v2.VehicleEmissionType").enummodule
      end
    end
  end
end
