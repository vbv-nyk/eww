data=$(curl "https://api.openweathermap.org/data/2.5/forecast?lat=12.9716&lon=77.5946&appid=$1&units=metric") 
echo $data > "data/weather.json"