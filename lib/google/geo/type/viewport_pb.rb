# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/geo/type/viewport.proto

require 'google/protobuf'

require 'google/type/latlng_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/geo/type/viewport.proto", :syntax => :proto3) do
    add_message "google.geo.type.Viewport" do
      optional :low, :message, 1, "google.type.LatLng"
      optional :high, :message, 2, "google.type.LatLng"
    end
  end
end

module Google
  module Geo
    module Type
      Viewport = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.geo.type.Viewport").msgclass
    end
  end
end