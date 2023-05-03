# README

# SmartRouting

This is a Rails 7 application that provides a RESTful API for managing rides and drivers.

## Dependencies

- Ruby 2.7.5
- Rails 7.0.4
- PostgreSQL
- OpenRouteService API

## Getting Started

1. Clone this repository.
2. Docker deamon need to be installed
3. Run `docker compose up`

## API Endpoint

`GET api/v1/rides?driver=`

Returns a paginated list of rides in descending score order for the given driver.To reduce duplicate API calls, this application caches API responses

#### Parameters

- `driver_id`: The ID of the driver.

#### Response

- `rides`: An array of rides in descending score order.
- `id`: The ID of the ride.
- `start_address`: The starting address of the ride.
- `destination_address`: The destination address of the ride.
- `commute_distance`: The driving distance from the driver's home address to the start of the ride, in miles.
- `commute_duration`: The amount of time it is expected to take to drive the commute distance, in hours.
- `ride_distance`: The driving distance from the start address of the ride to the destination address, in miles.
- `ride_duration`: The amount of time it is expected to take to drive the ride distance, in hours.
- `ride_earnings`: How much the driver earns by driving the ride, calculated as $12 + $1.50 per mile beyond 5 miles + (ride duration) * $0.70 per minute beyond 15 minutes.
- `score`: The score of the ride in $ per hour, calculated as (ride earnings) / (commute duration + ride duration).
