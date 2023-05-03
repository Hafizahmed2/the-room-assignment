module Api
  module V1
    class RidePresenter
      attr_reader :ride

      def initialize(ride)
        @ride = ride
      end

      def driving_distance
        "#{ride['driving_distance'].round(2)} miles"
      end

      def driving_duration
        "#{ride['driving_duration'].round(2)} minutes"
      end

      def commute_distance
        "#{ride['commute_distance'].round(2)} miles"
      end

      def commute_duration
        "#{ride['commute_duration'].round(2)} hours"
      end

      def ride_distance
        "#{ride['ride_distance'].round(2)} miles"
      end

      def ride_duration
        "#{ride['ride_duration'].round(2)} hours"
      end

      def ride_earnings
        "$#{ride['ride_earnings'].round(2)}"
      end

      def score
        "#{ride['score'].round(2)}"
      end
    end
  end
end
