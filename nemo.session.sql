SELECT *
FROM food_restaurants
WHERE ST_DWithin(
    ST_SetSRID(ST_MakePoint(food_restaurants.addressGeoLong, food_restaurants.addressGeoLat), 4326),
    ST_SetSRID(ST_MakePoint(78.36, 17.45), 4326),
    2000
)