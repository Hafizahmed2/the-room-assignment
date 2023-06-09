# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

account = Account.create(
  [
    {
      home_address: [-105.147990, 39.851867],
      email: "abc@gmail.com",
      password: "123456",
      password_confirmation: "123456",
      role: 'rider'
    },
    {
      home_address: [-105.147990, 39.851867],
      email: "driver@gmail.com",
      password: "123456",
      password_confirmation: "123456",
      role: 'driver'
    }
  ]
).first

account.rides.create(
  [
    {
      start_address: [-105.099350, 39.844492],
      destination_address: [-105.100015, 39.846452],
      status: 'open',
      account: account
    },
    {
      start_address: [-105.107322, 39.845627],
      destination_address: [-105.111524, 39.848853],
      status: 'open',
      account: account
    },
    {
      start_address: [-105.122303, 39.851545],
      destination_address: [-105.128967, 39.842031],
      status: 'open',
      account: account
    },
    {
      start_address: [-105.128967, 39.842031],
      destination_address: [-105.163943, 39.850649],
      status: 'open',
      account: account
    },
    {
      start_address: [-105.147990, 39.851867],
      destination_address: [-105.129289, 39.842071],
      status: 'open',
      account: account
    }
  ]
)
