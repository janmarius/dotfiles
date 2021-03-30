# Yr Weather Icons: https://hjelp.yr.no/hc/en-us/articles/203786121-Weather-symbols-on-Yr
# Weather Icons Font: https://erikflowers.github.io/weather-icons/
# Prerequisites: ttf-weather-icons

LATITUDE=63.43063
LONGITUDE=10.39497
ALTITUDE=18

DATE_NOW=`timedatectl status | grep UTC | awk '{print $4}'`

HOUR_NOW=`timedatectl status | grep UTC | awk '{print $5}' | cut -d ':' -f1`

AIR_TEMPERATURE=`curl -s 'https://api.met.no/weatherapi/locationforecast/2.0/complete?lat='$LATITUDE'&lon='$LONGITUDE'&altitude='$ALTITUDE'' \
				| jq -r '.properties | .timeseries | .[] | \
				select(.time=="'$DATE_NOW'T'$HOUR_NOW':00:00Z").data.instant.details.air_temperature'`

SYMBOL_CODE=`curl -s 'https://api.met.no/weatherapi/locationforecast/2.0/complete?lat='$LATITUDE'&lon='$LONGITUDE'&altitude='$ALTITUDE'' \
			| jq -r '.properties | .timeseries | .[] | \
			select(.time=="'$DATE_NOW'T'$HOUR_NOW':00:00Z").data.next_1_hours.summary.symbol_code'`


if [ $SYMBOL_CODE = "clearsky_day" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "clearsky_night" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "clearsky_polartwilight" ]; then
	echo "X $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "cloudy" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "fair_day" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "fair_night" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "fair_polartwilight" ]; then
	echo "X $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "fog" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "heavyrain" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "heavyrainandthunder" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "heavyrainshowersandthunder_day" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "heavyrainshowersandthunder_night" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "heavyrainshowersandthunder_polartwilight" ]; then
	echo "X $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "heavyrainshowers_day" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "heavyrainshowers_night" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "heavyrainshowers_polartwilight" ]; then
	echo "X $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "heavysleet" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "heavysleetandthunder" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "heavysleetshowersandthunder_day" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "heavysleetshowersandthunder_night" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "heavysleetshowersandthunder_polartwilight" ]; then
	echo "X $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "heavysleetshowers_day" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "heavysleetshowers_night" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "heavysleetshowers_polartwilight" ]; then
	echo "X $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "heavysnow" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "heavysnowandthunder" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "heavysnowshowersandthunder_day" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "heavysnowshowersandthunder_night" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "heavysnowshowersandthunder_polartwilight" ]; then
	echo "X $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "heavysnowshowers_day" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "heavysnowshowers_night" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "heavysnowshowers_polartwilight" ]; then
	echo "X $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "lightrain" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "lightrainandthunder" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "lightrainshowersandthunder_day" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "lightrainshowersandthunder_night" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "lightrainshowersandthunder_polartwilight" ]; then
	echo "X $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "lightrainshowers_day" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "lightrainshowers_night" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "lightrainshowers_polartwilight" ]; then
	echo "X $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "lightsleet" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "lightsleetandthunder" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "lightsleetshowers_day" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "lightsleetshowers_night" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "lightsleetshowers_polartwilight" ]; then
	echo "X $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "lightsnow" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "lightsnowandthunder" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "lightsnowshowers_day" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "lightsnowshowers_night" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "lightsnowshowers_polartwilight" ]; then
	echo "X $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "lightssleetshowersandthunder_day" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "lightssleetshowersandthunder_night" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "lightssleetshowersandthunder_polartwilight" ]; then
	echo "X $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "lightssnowshowersandthunder_day" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "lightssnowshowersandthunder_night" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "lightssnowshowersandthunder_polartwilight" ]; then
	echo "X $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "partlycloudy_day" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "partlycloudy_night" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "partlycloudy_polartwilight" ]; then
	echo "X $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "rain" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "rainandthunder" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "rainshowersandthunder_day" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "rainshowersandthunder_night" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "rainshowersandthunder_polartwilight" ]; then
	echo "X $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "rainshowers_day" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "rainshowers_night" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "rainshowers_polartwilight" ]; then
	echo "X $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "sleet" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "sleetandthunder" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "sleetshowersandthunder_day" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "sleetshowersandthunder_night" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "sleetshowersandthunder_polartwilight" ]; then
	echo "X $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "sleetshowers_day" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "sleetshowers_night" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "sleetshowers_polartwilight" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "snow" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "snowandthunder" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "snowshowersandthunder_day" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "snowshowersandthunder_night" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "snowshowersandthunder_polartwilight" ]; then
	echo "X $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "snowshowers_day" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "snowshowers_night" ]; then
	echo " $AIR_TEMPERATURE°C"
elif [ $SYMBOL_CODE = "snowshowers_polartwilight" ]; then
	echo "X $AIR_TEMPERATURE°C"
fi
