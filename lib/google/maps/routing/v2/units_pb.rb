# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/maps/routing/v2/units.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/maps/routing/v2/units.proto", :syntax => :proto3) do
    add_enum "google.maps.routing.v2.Units" do
      value :UNITS_UNSPECIFIED, 0
      value :METRIC, 1
      value :IMPERIAL, 2
    end
  end
end

module Google
  module Maps
    module Routing
      module V2
        Units = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.maps.routing.v2.Units").enummodule
      end
    end
  end
end