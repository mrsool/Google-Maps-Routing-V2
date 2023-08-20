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

require "google/maps/routing/v2/routes_service_pb"

module Google
  module Maps
    module Routing
      module V2
        module Routes
          ##
          # Client for the Routes service.
          #
          # The Routes API.
          #
          class Client
            # @private
            attr_reader :routes_stub

            ##
            # Configure the Routes Client class.
            #
            # See {::Google::Maps::Routing::V2::Routes::Client::Configuration}
            # for a description of the configuration fields.
            #
            # @example
            #
            #   # Modify the configuration for all Routes clients
            #   ::Google::Maps::Routing::V2::Routes::Client.configure do |config|
            #     config.timeout = 10.0
            #   end
            #
            # @yield [config] Configure the Client client.
            # @yieldparam config [Client::Configuration]
            #
            # @return [Client::Configuration]
            #
            def self.configure
              @configure ||= begin
                default_config = Client::Configuration.new

                default_config
              end
              yield @configure if block_given?
              @configure
            end

            ##
            # Configure the Routes Client instance.
            #
            # The configuration is set to the derived mode, meaning that values can be changed,
            # but structural changes (adding new fields, etc.) are not allowed. Structural changes
            # should be made on {Client.configure}.
            #
            # See {::Google::Maps::Routing::V2::Routes::Client::Configuration}
            # for a description of the configuration fields.
            #
            # @yield [config] Configure the Client client.
            # @yieldparam config [Client::Configuration]
            #
            # @return [Client::Configuration]
            #
            def configure
              yield @config if block_given?
              @config
            end

            ##
            # Create a new Routes client object.
            #
            # @example
            #
            #   # Create a client using the default configuration
            #   client = ::Google::Maps::Routing::V2::Routes::Client.new
            #
            #   # Create a client using a custom configuration
              # client = ::Google::Maps::Routing::V2::Routes::Client.new do |config|
              #   config.timeout = 10.0
              # end
            #
            # @yield [config] Configure the Routes client.
            # @yieldparam config [Client::Configuration]
            #
            def initialize
              # These require statements are intentionally placed here to initialize
              # the gRPC module only when it's required.
              # See https://github.com/googleapis/toolkit/issues/446
              require "gapic/grpc"
              require "google/maps/routing/v2/routes_service_services_pb"

              # Create the configuration object
              @config = Configuration.new Client.configure

              # Yield the configuration if needed
              yield @config if block_given?

              # Create credentials
              credentials = @config.credentials
              # Use self-signed JWT if the endpoint is unchanged from default,
              # but only if the default endpoint does not have a region prefix.
              enable_self_signed_jwt = @config.endpoint == Configuration::DEFAULT_ENDPOINT &&
                                       !@config.endpoint.split(".").first.include?("-")
              credentials ||= Credentials.default scope: @config.scope,
                                                  enable_self_signed_jwt: enable_self_signed_jwt
              if credentials.is_a?(::String) || credentials.is_a?(::Hash)
                credentials = Credentials.new credentials, scope: @config.scope
              end
              @quota_project_id = @config.quota_project
              @quota_project_id ||= credentials.quota_project_id if credentials.respond_to? :quota_project_id

              @routes_stub = ::Gapic::ServiceStub.new(
                ::Google::Maps::Routing::V2::Routes::Stub,
                credentials:  credentials,
                endpoint:     @config.endpoint,
                channel_args: @config.channel_args,
                interceptors: @config.interceptors
              )
            end

            # Service calls

            ##
            # Returns the primary route along with optional alternate routes, given a set
            # of terminal and intermediate waypoints.
            #
            # **NOTE:** This method requires that you specify a response field mask in
            # the input. You can provide the response field mask by using URL parameter
            # `$fields` or `fields`, or by using an HTTP/gRPC header `X-Goog-FieldMask`
            # (see the [available URL parameters and
            # headers](https://cloud.google.com/apis/docs/system-parameters). The value
            # is a comma separated list of field paths. See detailed documentation about
            # [how to construct the field
            # paths](https://github.com/protocolbuffers/protobuf/blob/master/src/google/protobuf/field_mask.proto).
            #
            # For example, in this method:
            #
            # * Field mask of all available fields (for manual inspection):
            #   `X-Goog-FieldMask: *`
            # * Field mask of Route-level duration, distance, and polyline (an example
            # production setup):
            #   `X-Goog-FieldMask:
            #   routes.duration,routes.distanceMeters,routes.polyline.encodedPolyline`
            #
            # Google discourage the use of the wildcard (`*`) response field mask, or
            # specifying the field mask at the top level (`routes`), because:
            #
            # * Selecting only the fields that you need helps our server save computation
            # cycles, allowing us to return the result to you with a lower latency.
            # * Selecting only the fields that you need
            # in your production job ensures stable latency performance. We might add
            # more response fields in the future, and those new fields might require
            # extra computation time. If you select all fields, or if you select all
            # fields at the top level, then you might experience performance degradation
            # because any new field we add will be automatically included in the
            # response.
            # * Selecting only the fields that you need results in a smaller response
            # size, and thus higher network throughput.
            #
            # @overload compute_routes(request, options = nil)
            #   Pass arguments to `compute_routes` via a request object, either of type
            #   {::Google::Maps::Routing::V2::ComputeRoutesRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Maps::Routing::V2::ComputeRoutesRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload compute_routes(origin: nil, destination: nil, intermediates: nil, travel_mode: nil, routing_preference: nil, polyline_quality: nil, polyline_encoding: nil, departure_time: nil, arrival_time: nil, compute_alternative_routes: nil, route_modifiers: nil, language_code: nil, region_code: nil, units: nil, optimize_waypoint_order: nil, requested_reference_routes: nil, extra_computations: nil, traffic_model: nil, transit_preferences: nil)
            #   Pass arguments to `compute_routes` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param origin [::Google::Maps::Routing::V2::Waypoint, ::Hash]
            #     Required. Origin waypoint.
            #   @param destination [::Google::Maps::Routing::V2::Waypoint, ::Hash]
            #     Required. Destination waypoint.
            #   @param intermediates [::Array<::Google::Maps::Routing::V2::Waypoint, ::Hash>]
            #     Optional. A set of waypoints along the route (excluding terminal points),
            #     for either stopping at or passing by. Up to 25 intermediate waypoints are
            #     supported.
            #   @param travel_mode [::Google::Maps::Routing::V2::RouteTravelMode]
            #     Optional. Specifies the mode of transportation.
            #   @param routing_preference [::Google::Maps::Routing::V2::RoutingPreference]
            #     Optional. Specifies how to compute the route. The server
            #     attempts to use the selected routing preference to compute the route. If
            #      the routing preference results in an error or an extra long latency, then
            #     an error is returned. You can specify this option only when the
            #     `travel_mode` is `DRIVE` or `TWO_WHEELER`, otherwise the request fails.
            #   @param polyline_quality [::Google::Maps::Routing::V2::PolylineQuality]
            #     Optional. Specifies your preference for the quality of the polyline.
            #   @param polyline_encoding [::Google::Maps::Routing::V2::PolylineEncoding]
            #     Optional. Specifies the preferred encoding for the polyline.
            #   @param departure_time [::Google::Protobuf::Timestamp, ::Hash]
            #     Optional. The departure time. If you don't set this value, then this value
            #     defaults to the time that you made the request.
            #     NOTE: You can only specify a `departure_time` in the past when
            #     {::Google::Maps::Routing::V2::RouteTravelMode RouteTravelMode} is set to
            #     `TRANSIT`.
            #   @param arrival_time [::Google::Protobuf::Timestamp, ::Hash]
            #     Optional. The arrival time.
            #     NOTE: Can only be set when
            #     {::Google::Maps::Routing::V2::RouteTravelMode RouteTravelMode} is set to
            #     `TRANSIT`. You can specify either departure_time or arrival_time, but not
            #     both.
            #   @param compute_alternative_routes [::Boolean]
            #     Optional. Specifies whether to calculate alternate routes in addition to
            #     the route. No alternative routes are returned for requests that have
            #     intermediate waypoints.
            #   @param route_modifiers [::Google::Maps::Routing::V2::RouteModifiers, ::Hash]
            #     Optional. A set of conditions to satisfy that affect the way routes are
            #     calculated.
            #   @param language_code [::String]
            #     Optional. The BCP-47 language code, such as "en-US" or "sr-Latn". For more
            #     information, see
            #     http://www.unicode.org/reports/tr35/#Unicode_locale_identifier. See
            #     [Language Support](https://developers.google.com/maps/faq#languagesupport)
            #     for the list of supported languages. When you don't provide this value, the
            #     display language is inferred from the location of the route request.
            #   @param region_code [::String]
            #     Optional. The region code, specified as a ccTLD ("top-level domain")
            #     two-character value. For more information see
            #     https://en.wikipedia.org/wiki/List_of_Internet_top-level_domains#Country_code_top-level_domains
            #   @param units [::Google::Maps::Routing::V2::Units]
            #     Optional. Specifies the units of measure for the display fields. These
            #     fields include the `instruction` field in
            #     {::Google::Maps::Routing::V2::NavigationInstruction NavigationInstruction}. The
            #     units of measure used for the route, leg, step distance, and duration are
            #     not affected by this value. If you don't provide this value, then the
            #     display units are inferred from the location of the first origin.
            #   @param optimize_waypoint_order [::Boolean]
            #     Optional. If set to true, the service attempts to minimize the overall cost
            #     of the route by re-ordering the specified intermediate waypoints. The
            #     request fails if any of the intermediate waypoints is a `via` waypoint. Use
            #     `ComputeRoutesResponse.Routes.optimized_intermediate_waypoint_index` to
            #     find the new ordering.
            #     If `ComputeRoutesResponseroutes.optimized_intermediate_waypoint_index` is
            #     not requested in the `X-Goog-FieldMask` header, the request fails.
            #     If `optimize_waypoint_order` is set to false,
            #     `ComputeRoutesResponse.optimized_intermediate_waypoint_index` will be
            #     empty.
            #   @param requested_reference_routes [::Array<::Google::Maps::Routing::V2::ComputeRoutesRequest::ReferenceRoute>]
            #     Optional. Specifies what reference routes to calculate as part of the
            #     request in addition to the default route. A reference route is a route with
            #     a different route calculation objective than the default route. For example
            #     a `FUEL_EFFICIENT` reference route calculation takes into account various
            #     parameters that would generate an optimal fuel efficient route.
            #   @param extra_computations [::Array<::Google::Maps::Routing::V2::ComputeRoutesRequest::ExtraComputation>]
            #     Optional. A list of extra computations which may be used to complete the
            #     request. Note: These extra computations may return extra fields on the
            #     response. These extra fields must also be specified in the field mask to be
            #     returned in the response.
            #   @param traffic_model [::Google::Maps::Routing::V2::TrafficModel]
            #     Optional. Specifies the assumptions to use when calculating time in
            #     traffic. This setting affects the value returned in the duration field in
            #     the {::Google::Maps::Routing::V2::Route Route} and
            #     {::Google::Maps::Routing::V2::RouteLeg RouteLeg} which contains the predicted
            #     time in traffic based on historical averages.
            #     `TrafficModel` is only available for requests that have set
            #     {::Google::Maps::Routing::V2::RoutingPreference RoutingPreference} to
            #     `TRAFFIC_AWARE_OPTIMAL` and
            #     {::Google::Maps::Routing::V2::RouteTravelMode RouteTravelMode} to `DRIVE`.
            #     Defaults to `BEST_GUESS` if traffic is requested and `TrafficModel` is not
            #     specified.
            #   @param transit_preferences [::Google::Maps::Routing::V2::TransitPreferences, ::Hash]
            #     Optional. Specifies preferences that influence the route returned for
            #     `TRANSIT` routes. NOTE: You can only specify a `transit_preferences` when
            #     {::Google::Maps::Routing::V2::RouteTravelMode RouteTravelMode} is set to
            #     `TRANSIT`.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Maps::Routing::V2::ComputeRoutesResponse]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Maps::Routing::V2::ComputeRoutesResponse]
            #
            # @raise [::GRPC::BadStatus] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/maps/routing/v2"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Maps::Routing::V2::Routes::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Maps::Routing::V2::ComputeRoutesRequest.new
            #
            #   # Call the compute_routes method.
            #   result = client.compute_routes request
            #
            #   # The returned object is of type Google::Maps::Routing::V2::ComputeRoutesResponse.
            #   p result
            #
            def compute_routes request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Maps::Routing::V2::ComputeRoutesRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.compute_routes.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Maps::Routing::V2::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              options.apply_defaults timeout:      @config.rpcs.compute_routes.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.compute_routes.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @routes_stub.call_rpc :compute_routes, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            end

            ##
            # Takes in a list of origins and destinations and returns a stream containing
            # route information for each combination of origin and destination.
            #
            # **NOTE:** This method requires that you specify a response field mask in
            # the input. You can provide the response field mask by using the URL
            # parameter `$fields` or `fields`, or by using the HTTP/gRPC header
            # `X-Goog-FieldMask` (see the [available URL parameters and
            # headers](https://cloud.google.com/apis/docs/system-parameters). The value
            # is a comma separated list of field paths. See this detailed documentation
            # about [how to construct the field
            # paths](https://github.com/protocolbuffers/protobuf/blob/master/src/google/protobuf/field_mask.proto).
            #
            # For example, in this method:
            #
            # * Field mask of all available fields (for manual inspection):
            #   `X-Goog-FieldMask: *`
            # * Field mask of route durations, distances, element status, condition, and
            #   element indices (an example production setup):
            #   `X-Goog-FieldMask:
            #   originIndex,destinationIndex,status,condition,distanceMeters,duration`
            #
            # It is critical that you include `status` in your field mask as otherwise
            # all messages will appear to be OK. Google discourages the use of the
            # wildcard (`*`) response field mask, because:
            #
            # * Selecting only the fields that you need helps our server save computation
            # cycles, allowing us to return the result to you with a lower latency.
            # * Selecting only the fields that you need in your production job ensures
            # stable latency performance. We might add more response fields in the
            # future, and those new fields might require extra computation time. If you
            # select all fields, or if you select all fields at the top level, then you
            # might experience performance degradation because any new field we add will
            # be automatically included in the response.
            # * Selecting only the fields that you need results in a smaller response
            # size, and thus higher network throughput.
            #
            # @overload compute_route_matrix(request, options = nil)
            #   Pass arguments to `compute_route_matrix` via a request object, either of type
            #   {::Google::Maps::Routing::V2::ComputeRouteMatrixRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Maps::Routing::V2::ComputeRouteMatrixRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload compute_route_matrix(origins: nil, destinations: nil, travel_mode: nil, routing_preference: nil, departure_time: nil, arrival_time: nil, language_code: nil, region_code: nil, extra_computations: nil, traffic_model: nil, transit_preferences: nil)
            #   Pass arguments to `compute_route_matrix` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param origins [::Array<::Google::Maps::Routing::V2::RouteMatrixOrigin, ::Hash>]
            #     Required. Array of origins, which determines the rows of the response
            #     matrix. Several size restrictions apply to the cardinality of origins and
            #     destinations:
            #
            #     * The number of elements (origins × destinations) must be no greater than
            #     625 in any case.
            #     * The number of elements (origins × destinations) must be no greater than
            #     100 if routing_preference is set to `TRAFFIC_AWARE_OPTIMAL`.
            #     * The number of waypoints (origins + destinations) specified as `place_id`
            #     must be no greater than 50.
            #   @param destinations [::Array<::Google::Maps::Routing::V2::RouteMatrixDestination, ::Hash>]
            #     Required. Array of destinations, which determines the columns of the
            #     response matrix.
            #   @param travel_mode [::Google::Maps::Routing::V2::RouteTravelMode]
            #     Optional. Specifies the mode of transportation.
            #   @param routing_preference [::Google::Maps::Routing::V2::RoutingPreference]
            #     Optional. Specifies how to compute the route. The server attempts to use
            #     the selected routing preference to compute the route. If the routing
            #     preference results in an error or an extra long latency, an error is
            #     returned. You can specify this option only when the `travel_mode` is
            #     `DRIVE` or `TWO_WHEELER`, otherwise the request fails.
            #   @param departure_time [::Google::Protobuf::Timestamp, ::Hash]
            #     Optional. The departure time. If you don't set this value, then this value
            #     defaults to the time that you made the request.
            #     NOTE: You can only specify a `departure_time` in the past when
            #     {::Google::Maps::Routing::V2::RouteTravelMode RouteTravelMode} is set to
            #     `TRANSIT`.
            #   @param arrival_time [::Google::Protobuf::Timestamp, ::Hash]
            #     Optional. The arrival time.
            #     NOTE: Can only be set when
            #     {::Google::Maps::Routing::V2::RouteTravelMode RouteTravelMode} is set to
            #     `TRANSIT`. You can specify either departure_time or arrival_time, but not
            #     both.
            #   @param language_code [::String]
            #     Optional. The BCP-47 language code, such as "en-US" or "sr-Latn". For more
            #     information, see
            #     http://www.unicode.org/reports/tr35/#Unicode_locale_identifier. See
            #     [Language Support](https://developers.google.com/maps/faq#languagesupport)
            #     for the list of supported languages. When you don't provide this value, the
            #     display language is inferred from the location of the first origin.
            #   @param region_code [::String]
            #     Optional. The region code, specified as a ccTLD ("top-level domain")
            #     two-character value. For more information see
            #     https://en.wikipedia.org/wiki/List_of_Internet_top-level_domains#Country_code_top-level_domains
            #   @param extra_computations [::Array<::Google::Maps::Routing::V2::ComputeRouteMatrixRequest::ExtraComputation>]
            #     Optional. A list of extra computations which may be used to complete the
            #     request. Note: These extra computations may return extra fields on the
            #     response. These extra fields must also be specified in the field mask to be
            #     returned in the response.
            #   @param traffic_model [::Google::Maps::Routing::V2::TrafficModel]
            #     Optional. Specifies the assumptions to use when calculating time in
            #     traffic. This setting affects the value returned in the duration field in
            #     the {::Google::Maps::Routing::V2::RouteMatrixElement RouteMatrixElement} which
            #     contains the predicted time in traffic based on historical averages.
            #     {::Google::Maps::Routing::V2::RoutingPreference RoutingPreference} to
            #     `TRAFFIC_AWARE_OPTIMAL` and
            #     {::Google::Maps::Routing::V2::RouteTravelMode RouteTravelMode} to `DRIVE`.
            #     Defaults to `BEST_GUESS` if traffic is requested and `TrafficModel` is not
            #     specified.
            #   @param transit_preferences [::Google::Maps::Routing::V2::TransitPreferences, ::Hash]
            #     Optional. Specifies preferences that influence the route returned for
            #     `TRANSIT` routes. NOTE: You can only specify a `transit_preferences` when
            #     {::Google::Maps::Routing::V2::RouteTravelMode RouteTravelMode} is set to
            #     `TRANSIT`.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Enumerable<::Google::Maps::Routing::V2::RouteMatrixElement>]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Enumerable<::Google::Maps::Routing::V2::RouteMatrixElement>]
            #
            # @raise [::GRPC::BadStatus] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/maps/routing/v2"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Maps::Routing::V2::Routes::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Maps::Routing::V2::ComputeRouteMatrixRequest.new
            #
            #   # Call the compute_route_matrix method to start streaming.
            #   output = client.compute_route_matrix request
            #
            #   # The returned object is a streamed enumerable yielding elements of type
            #   # ::Google::Maps::Routing::V2::RouteMatrixElement
            #   output.each do |current_response|
            #     p current_response
            #   end
            #
            def compute_route_matrix request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Maps::Routing::V2::ComputeRouteMatrixRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.compute_route_matrix.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Maps::Routing::V2::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              options.apply_defaults timeout:      @config.rpcs.compute_route_matrix.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.compute_route_matrix.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @routes_stub.call_rpc :compute_route_matrix, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            end

            ##
            # Configuration class for the Routes API.
            #
            # This class represents the configuration for Routes,
            # providing control over timeouts, retry behavior, logging, transport
            # parameters, and other low-level controls. Certain parameters can also be
            # applied individually to specific RPCs. See
            # {::Google::Maps::Routing::V2::Routes::Client::Configuration::Rpcs}
            # for a list of RPCs that can be configured independently.
            #
            # Configuration can be applied globally to all clients, or to a single client
            # on construction.
            #
            # @example
            #
            #   # Modify the global config, setting the timeout for
            #   # compute_routes to 20 seconds,
            #   # and all remaining timeouts to 10 seconds.
            #   ::Google::Maps::Routing::V2::Routes::Client.configure do |config|
            #     config.timeout = 10.0
            #     config.rpcs.compute_routes.timeout = 20.0
            #   end
            #
            #   # Apply the above configuration only to a new client.
            #   client = ::Google::Maps::Routing::V2::Routes::Client.new do |config|
            #     config.timeout = 10.0
            #     config.rpcs.compute_routes.timeout = 20.0
            #   end
            #
            # @!attribute [rw] endpoint
            #   The hostname or hostname:port of the service endpoint.
            #   Defaults to `"routes.googleapis.com"`.
            #   @return [::String]
            # @!attribute [rw] credentials
            #   Credentials to send with calls. You may provide any of the following types:
            #    *  (`String`) The path to a service account key file in JSON format
            #    *  (`Hash`) A service account key as a Hash
            #    *  (`Google::Auth::Credentials`) A googleauth credentials object
            #       (see the [googleauth docs](https://rubydoc.info/gems/googleauth/Google/Auth/Credentials))
            #    *  (`Signet::OAuth2::Client`) A signet oauth2 client object
            #       (see the [signet docs](https://rubydoc.info/gems/signet/Signet/OAuth2/Client))
            #    *  (`GRPC::Core::Channel`) a gRPC channel with included credentials
            #    *  (`GRPC::Core::ChannelCredentials`) a gRPC credentails object
            #    *  (`nil`) indicating no credentials
            #   @return [::Object]
            # @!attribute [rw] scope
            #   The OAuth scopes
            #   @return [::Array<::String>]
            # @!attribute [rw] lib_name
            #   The library name as recorded in instrumentation and logging
            #   @return [::String]
            # @!attribute [rw] lib_version
            #   The library version as recorded in instrumentation and logging
            #   @return [::String]
            # @!attribute [rw] channel_args
            #   Extra parameters passed to the gRPC channel. Note: this is ignored if a
            #   `GRPC::Core::Channel` object is provided as the credential.
            #   @return [::Hash]
            # @!attribute [rw] interceptors
            #   An array of interceptors that are run before calls are executed.
            #   @return [::Array<::GRPC::ClientInterceptor>]
            # @!attribute [rw] timeout
            #   The call timeout in seconds.
            #   @return [::Numeric]
            # @!attribute [rw] metadata
            #   Additional gRPC headers to be sent with the call.
            #   @return [::Hash{::Symbol=>::String}]
            # @!attribute [rw] retry_policy
            #   The retry policy. The value is a hash with the following keys:
            #    *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
            #    *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
            #    *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
            #    *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
            #       trigger a retry.
            #   @return [::Hash]
            # @!attribute [rw] quota_project
            #   A separate project against which to charge quota.
            #   @return [::String]
            #
            class Configuration
              extend ::Gapic::Config

              DEFAULT_ENDPOINT = "routes.googleapis.com"

              config_attr :endpoint,      DEFAULT_ENDPOINT, ::String
              config_attr :credentials,   nil do |value|
                allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials, ::Signet::OAuth2::Client,
                           nil]
                allowed += [::GRPC::Core::Channel, ::GRPC::Core::ChannelCredentials] if defined? ::GRPC
                allowed.any? { |klass| klass === value }
              end
              config_attr :scope,         nil, ::String, ::Array, nil
              config_attr :lib_name,      nil, ::String, nil
              config_attr :lib_version,   nil, ::String, nil
              config_attr(:channel_args,  { "grpc.service_config_disable_resolution" => 1 }, ::Hash, nil)
              config_attr :interceptors,  nil, ::Array, nil
              config_attr :timeout,       nil, ::Numeric, nil
              config_attr :metadata,      nil, ::Hash, nil
              config_attr :retry_policy,  nil, ::Hash, ::Proc, nil
              config_attr :quota_project, nil, ::String, nil

              # @private
              def initialize parent_config = nil
                @parent_config = parent_config unless parent_config.nil?

                yield self if block_given?
              end

              ##
              # Configurations for individual RPCs
              # @return [Rpcs]
              #
              def rpcs
                @rpcs ||= begin
                  parent_rpcs = nil
                  parent_rpcs = @parent_config.rpcs if defined?(@parent_config) && @parent_config.respond_to?(:rpcs)
                  Rpcs.new parent_rpcs
                end
              end

              ##
              # Configuration RPC class for the Routes API.
              #
              # Includes fields providing the configuration for each RPC in this service.
              # Each configuration object is of type `Gapic::Config::Method` and includes
              # the following configuration fields:
              #
              #  *  `timeout` (*type:* `Numeric`) - The call timeout in seconds
              #  *  `metadata` (*type:* `Hash{Symbol=>String}`) - Additional gRPC headers
              #  *  `retry_policy (*type:* `Hash`) - The retry policy. The policy fields
              #     include the following keys:
              #      *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
              #      *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
              #      *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
              #      *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
              #         trigger a retry.
              #
              class Rpcs
                ##
                # RPC-specific configuration for `compute_routes`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :compute_routes
                ##
                # RPC-specific configuration for `compute_route_matrix`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :compute_route_matrix

                # @private
                def initialize parent_rpcs = nil
                  compute_routes_config = parent_rpcs.compute_routes if parent_rpcs.respond_to? :compute_routes
                  @compute_routes = ::Gapic::Config::Method.new compute_routes_config
                  compute_route_matrix_config = parent_rpcs.compute_route_matrix if parent_rpcs.respond_to? :compute_route_matrix
                  @compute_route_matrix = ::Gapic::Config::Method.new compute_route_matrix_config

                  yield self if block_given?
                end
              end
            end
          end
        end
      end
    end
  end
end