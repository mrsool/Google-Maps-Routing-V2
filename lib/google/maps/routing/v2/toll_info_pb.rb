# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/maps/routing/v2/toll_info.proto

require 'google/protobuf'

require 'google/type/money_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/maps/routing/v2/toll_info.proto", :syntax => :proto3) do
    add_message "google.maps.routing.v2.TollInfo" do
      repeated :estimated_price, :message, 1, "google.type.Money"
    end
  end
end

module Google
  module Maps
    module Routing
      module V2
        TollInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.maps.routing.v2.TollInfo").msgclass
      end
    end
  end
end
