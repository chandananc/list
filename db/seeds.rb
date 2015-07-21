# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

all_category = Category.where(name: 'All').first_or_create(name: 'All')
cottage_category = Category.where(name: 'Cottage').first_or_create(name: 'Cottage')
apartment_category = Category.where(name: 'Apartment').first_or_create(name: 'Apartment')
townhouse_category = Category.where(name: 'Townhouse').first_or_create(name: 'townhouse')

all_type = Type.create(listing_type: "all")
house_for_rent_type = Type.create(listing_type: "house for rent")
house_for_sale_type = Type.create(listing_type: "house for sale")


all_status = Status.create(listing_status: "all")
active_status = Status.create(listing_status: "active")
offer_status = Status.create(listing_status: "offer")
contract_status = Status.create(listing_status: "Contract")
closed_status = Status.create(listing_status: "Closed")
withdrawn_status = Status.create(listing_status: "Withdrawn")