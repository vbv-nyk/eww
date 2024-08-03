#!/bin/bash


while [ "$(hostname -i | grep '192.168.0.100')" == "" ]; do
    cat "/home/vbvnyk/.config/eww/scripts/data/weather_copy.json" >"/home/vbvnyk/.config/eww/scripts/data/weather.json"
    sleep 1
done

# Fetch weather data using the provided API key
data=$(curl "https://api.openweathermap.org/data/2.5/forecast?lat=12.9716&lon=77.5946&appid=$1&units=metric")

# Write the fetched data to a JSON file
echo "$data" >"/home/vbvnyk/.config/eww/scripts/data/weather.json"
echo "$data" >"/home/vbvnyk/.config/eww/scripts/data/weather_copy.json"
