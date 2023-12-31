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


module Google
  module Maps
    module Routing
      module V2
        # A set of values that specify the navigation action to take for the current
        # step (e.g., turn left, merge, straight, etc.).
        module Maneuver
          # Not used.
          MANEUVER_UNSPECIFIED = 0

          # Turn slightly to the left.
          TURN_SLIGHT_LEFT = 1

          # Turn sharply to the left.
          TURN_SHARP_LEFT = 2

          # Make a left u-turn.
          UTURN_LEFT = 3

          # Turn left.
          TURN_LEFT = 4

          # Turn slightly to the right.
          TURN_SLIGHT_RIGHT = 5

          # Turn sharply to the right.
          TURN_SHARP_RIGHT = 6

          # Make a right u-turn.
          UTURN_RIGHT = 7

          # Turn right.
          TURN_RIGHT = 8

          # Go straight.
          STRAIGHT = 9

          # Take the left ramp.
          RAMP_LEFT = 10

          # Take the right ramp.
          RAMP_RIGHT = 11

          # Merge into traffic.
          MERGE = 12

          # Take the left fork.
          FORK_LEFT = 13

          # Take the right fork.
          FORK_RIGHT = 14

          # Take the ferry.
          FERRY = 15

          # Take the train leading onto the ferry.
          FERRY_TRAIN = 16

          # Turn left at the roundabout.
          ROUNDABOUT_LEFT = 17

          # Turn right at the roundabout.
          ROUNDABOUT_RIGHT = 18

          # Initial maneuver.
          DEPART = 19

          # Used to indicate a street name change.
          NAME_CHANGE = 20
        end
      end
    end
  end
end
