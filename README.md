# Ruby Client for the Google Maps Routing V2 API

API Client library for the Google Maps Routing V2 API

This library is built using the official protocol buffers in [googleapis](https://github.com/googleapis/googleapis) repository.

The client code is generated using the [gapic-generator-ruby](https://github.com/googleapis/gapic-generator-ruby) gem.
## Installation

```
$ gem install google-maps-routing-v2
```

## Quick Start Example

```ruby
require "google/maps/routing/v2"

client = ::Google::Maps::Routing::V2::Routes::Client.new
request = ::Google::Maps::Routing::V2::ComputeRoutesRequest.new # (request fields as keyword arguments...)
response = client.compute_routes request
```

## Supported Ruby Versions

This library is supported on Ruby 2.6+.

Google provides official support for Ruby versions that are actively supported
by Ruby Core—that is, Ruby versions that are either in normal maintenance or
in security maintenance, and not end of life. Older versions of Ruby _may_
still work, but are unsupported and not recommended. See
https://www.ruby-lang.org/en/downloads/branches/ for details about the Ruby
support schedule.
