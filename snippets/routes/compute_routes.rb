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

# [START routing_v2_generated_Routes_ComputeRoutes_sync]
require "google/maps/routing/v2"

##
# Snippet for the compute_routes call in the Routes service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Maps::Routing::V2::Routes::Client#compute_routes. It may require
# modification in order to execute successfully.
#
def compute_routes
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Maps::Routing::V2::Routes::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Maps::Routing::V2::ComputeRoutesRequest.new

  # Call the compute_routes method.
  result = client.compute_routes request

  # The returned object is of type Google::Maps::Routing::V2::ComputeRoutesResponse.
  p result
end
# [END routing_v2_generated_Routes_ComputeRoutes_sync]
