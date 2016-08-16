'use strict';


/*
		TODO

		- crete selectors for 5 days 
		- create selector for 1 day every 3hours
		- create grid for 5 days 
		- create grid for 24 hours every 3 hours - take first 8 objects from array
		- create grid for 5 days - take all the weayhers from array from that date and find weather for 12pm for every day

		*/

var weather = function(){
	return {
		convertToCelciusFromKelvin: convertToCelciusFromKelvin,
		displayWeather: displayWeather,
		backgroundWeather: backgroundWeather,
		displayTemperature: displayTemperature,
		displayWind: displayWind,
		displayLocation: displayLocation,
		displayFeelsLike: displayFeelsLike,
		httpRequestWeather: httpRequestWeather,
		getWeatherInfoAsync: getWeatherInfoAsync,
		getWeatherObj: getWeatherObj,
		getWeatherForecastList: getWeatherForecastList,
		getWeatherConditionObj: getWeatherConditionObj,
		displayWeatherConditionTable: displayWeatherConditionTable,
		sortWeatherByDay: sortWeatherByDay,
		displayWeatherByDays: displayWeatherByDays
	}

	/*
		weatherCondition object constructor

		properties:
		time: dt_text prpperty of list object
		clouds: clouds
		temperature_max: main.temp_max
		temperature_min: main.temp_min
		rain: rain.3h
		description: weather[0].description
		wind: wind.speed


	*/
	function WeatherCondition(time, clouds, temp_min, temp_max, rain, description, wind) {
  
	  this.condition_time = time;
	  this.clouds = clouds;
	  this.temp_max = temp_max;
	  this.temp_min = temp_min;
	  this.rain = rain;
	  this.maindescription = description;
	  this.wind = wind;

	}

	function convertToCelciusFromKelvin(temperature){
		if((temperature - 273.15) >= 0){
		 	return "+" + (temperature - 273.15).toFixed(0);
		} else{
			return "-" + (temperature - 273.15).toFixed(0);
		}
	}

	function convertToFahrenheitFromKelvin(temperature){
		//T(°F) = T(K) × 9/5 - 459.67
		return (temperature*(9/5)) - 459.67;
	}

	function convertToCelciusFromFahrenheit(temperature){
		//T(°C) = (T(°F) - 32) × 5/9
		return (temperature-32)*5/9;

	}

	function calculateFeelsLike(temperature, humidity, wind){

		function calculateHeatBase(){
			  // Steadman's result
	        var heatIndex = 0.5 * (t + 61 + (t - 68) * 1.2 + h * 0.094);

	        // regression equation of Rothfusz is appropriate
	        if (t >= 80) {
	            var heatIndexBase = (-42.379                      +
	                                   2.04901523 * t             +
	                                  10.14333127         * h     +
	                                  -0.22475541 * t     * h     +
	                                  -0.00683783 * t * t         +
	                                  -0.05481717         * h * h +
	                                   0.00122874 * t * t * h     +
	                                   0.00085282 * t     * h * h +
	                                  -0.00000199 * t * t * h * h);
	            // adjustment
	            if (h < 13 && t <= 112) {
	                heatIndex = heatIndexBase - (13 - h) / 4 * Math.sqrt((17 - Math.abs(t - 95)) / 17);
	            } else if (h > 85 && t <= 87) {
	                heatIndex = heatIndexBase + ((h - 85) / 10) * ((87 - t) / 5)
	            } else {
	                heatIndex = heatIndexBase;
	            }
	        }
		}
		//calculate heat index
		var HI = 0;
		function heatIndex(temperature, humidity, wind){
			if(convertToFahrenheitFromKelvin(temperature) >= 80 && humidity >= 40){
				/*var HI = 0;
				var R = humidity;
				var T = convertToFahrenheit(temperature).toFixed(2);
				var c1 = -42.379;
				var c2 = 2.04901523;
				var c3 = 10.14333127;
				var c4 = -0.22475541;
				var c5 = -0.00683783;
				var c6 = -0.05481717;
				var c7 = -0.00122874;
				var c8 = 0.00085282;
				var c9 = -0.00000199;

				HI = c1 + (c2*T) + (c3*R) + (c4*T*R) + (c5*T*T) + (c6*R*R) + (c7*T*T*R) + (c8*T*R*R) + (c9*T*T*R*R);
				return HI;
			} 	
			else {*/
			/*	var HI = 0;
				var R = humidity;
				var T = convertToFahrenheitFromKelvin(temperature).toFixed(2);
				var c1 = 16.923;
				var c2 = 0.185212;
				var c3 = 5.37941;
				var c4 = -0.100254;
				var c5 = 9.41695 * Math.pow(10, -3);
				var c6 = 7.28898 * Math.pow(10, -3);
				var c7 = 3.45372 * Math.pow(10, -4);
				var c8 = -8.14971 *  Math.pow(10, -4);
				var c9 = 1.02102 * Math.pow(10, -5);
				var c10 = -3.8646 * Math.pow(10, -5);
				var c11 = 2.91583 * Math.pow(10, -5);
				var c12 = 1.42721 *  Math.pow(10, -6);
				var c13 = 1.97483 * Math.pow(10, -7);
				var c14 = -2.18429 * Math.pow(10, -8);
				var c15 = 8.43296 * Math.pow(10, -10);
				var c16 = -4.81975 * Math.pow(10, -11);

				HI = c1 + c2*T + c3*R + c4*T*R + c5*Math.pow(T, 2) + c6*Math.pow(R, 2) + c7*Math.pow(T, 2)*R + c8*T*Math.pow(R, 2) + c9*Math.pow(T, 2)*Math.pow(R, 2) + c10*Math.pow(T, 3) + c11* Math.pow(R, 3) + c12*Math.pow(T, 3)*R + c13*T*Math.pow(R, 3) + c14*Math.pow(T, 3)*Math.pow(R, 2) + c15*Math.pow(T, 2)*Math.pow(R, 3) + c16*Math.pow(T, 3)*Math.pow(R, 3); 
				return HI; 

				*/

				if (temperature >= 80) {
					
					var h = humidity;
					var t = convertToFahrenheitFromKelvin(temperature).toFixed(2);
		            var heatIndexBase = (-42.379                      +
		                                   2.04901523 * t             +
		                                  10.14333127         * h     +
		                                  -0.22475541 * t     * h     +
		                                  -0.00683783 * t * t         +
		                                  -0.05481717         * h * h +
		                                   0.00122874 * t * t * h     +
		                                   0.00085282 * t     * h * h +
		                                  -0.00000199 * t * t * h * h);
		            // adjustment
		            if (h < 13 && t <= 112) {
		                HI = heatIndexBase - (13 - h) / 4 * Math.sqrt((17 - Math.abs(t - 95)) / 17);
		            } else if (h > 85 && t <= 87) {
		                HI = heatIndexBase + ((h - 85) / 10) * ((87 - t) / 5);
		            } else {
		                HI = heatIndexBase;
		            }
		        }
		        return HI;
			} else{
				return convertToFahrenheitFromKelvin(temperature).toFixed(0);
			}

			//HI = 0.5 * {T + 61.0 + [(T-68.0)*1.2] + (RH*0.094)}

		}

		function windChillFactor(temperature, humidity, wind){
			//based on info: http://www.primgidromet.ru/news/chto_takoe_temperatura_komforta/
			//temperature = parseInt(weather.convertToCelciusFromKelvin(temperature));
			var result = 0;
			if(temperature >= 0){
				if(wind < 5){
					result = temperature - 1;
				} else if (wind < 5 && wind < 10){
					result = temperature - 6;
				} else if(wind > 10){
					//have no idea if this is accurate, just in case
					result = temperature - 10;
				} else{	}
			} else if(temperature > -10 && temperature < 0){
				if(wind < 5){
					result = temperature - 2;
				} else if (wind < 5 && wind < 10){
					result = temperature - 8;
				} else if(wind > 10){
					//have no idea if this is accurate, just in case
					result = temperature - 12;
				} else{}
			} else if(temperature > -20 && temperature < -10){
				if(wind < 5){
					result = temperature - 3;
				} else if (wind < 5 && wind < 10){
					result = temperature - 10;
				} else if(wind > 10){
					//have no idea if this is accurate, just in case
					result = temperature - 16;
				} else{}
			} else{
				if(wind > 2){
					result = temperature - 10;
				}
			}
			return temperature;
		}
		return windChillFactor(convertToCelciusFromFahrenheit(heatIndex(temperature, humidity, wind)).toFixed(0), humidity, wind);
		//return convertToCelciusFromFahrenheit(heatIndex(temperature, humidity, wind)).toFixed(2);
	}

	function displayLocation(weatherLocation){
		document.getElementById("location").innerHTML = weatherLocation;
	}
	function displayWind(weatherWind){
		document.getElementById("wind").innerHTML = "wind " + weatherWind;
	}
	function displayTemperature(weatherTemp){
		document.getElementById("temperature").innerHTML = weatherTemp;
	}
	function displayFeelsLike(weatherTempKelvin, weatherHumidity, weatherWind){
		var calculatedFeelsLike = calculateFeelsLike(weatherTempKelvin, weatherHumidity, weatherWind);
		document.getElementById("feelslike").innerHTML = "Feels Like " + calculatedFeelsLike;
	}
	function displayWeather(weatherObject){
		var condition = weatherObject.weather;
	 	this.backgroundWeather(condition);
	 	this.displayTemperature(weatherObject.tempCelsius);
	 	this.displayWind(weatherObject.wind);
	 	this.displayFeelsLike(weatherObject.tempKelvin, weatherObject.humidity, weatherObject.wind);
	 	
	}
	

	/*

	TODO: add regex check to detect conditions
	add background options

	*/
	function backgroundWeather(weatherCondition){
		var checkIfRainToday = /rain/;
		var checkIfDrizzle = /drizzle/;
		var checkIfDrizzlerain = /drizzle\srain/;
		var checkIfClear = /clearx/;
		var checkIfCloudsToday = /clouds/;
		if(checkIfRainToday.test(weatherCondition)){
			//document.body.className = "rainy-background";
			document.getElementById("blur").className = "badWeatherBlur";
			document.getElementById("message").innerHTML = "baby, it´s raining outside!";
			var image = document.createElement("IMG");
			image.src = "img/umbr.svg";
			document.getElementById("message").appendChild(image); 
			document.getElementsByClassName("cloudsForRainyDay")[0].style.display = "block";

		}
		else if(checkIfCloudsToday.test(weatherCondition)){
			//do something with clouds

		}
		else if(checkIfClear.test(weatherCondition)){
			//do something
		}
		else{
			//do something
		}
		
	}

	function httpRequestWeather(url) {
	  	return new Promise(function(resolve, reject) {
		    var weatherRequest = new XMLHttpRequest();
		    weatherRequest.open("GET", url, true);

			weatherRequest.onreadystatechange = function() {
			  	if(this.readyState == 0){
			  		console.log("request not initialized ");
			  	}
			  	else if(this.readyState == 1){
			  		console.log("server connection established");
			  	}
			  	else if(this.readyState == 2){
			  		console.log(" request received ");
			  	}
			  	else if(this.readyState == 3){
			  		console.log(" processing request ");
			  	}
			    else if (this.readyState == 4 && this.status == 200) {
			     	console.log("request finished and response is ready");
			     	console.log(this.response);
			     	resolve(this.response);
			    }
			    else{
			    	reject(new Error("no weather data"));
			    }
			  };
		  	weatherRequest.send();
	  });

	}

	function getWeatherInfoAsync(userCity, apiURL, accessToken){
			var weatherPromise = weather.httpRequestWeather(apiURL + userCity + accessToken);
			return weatherPromise.then(responseText => JSON.parse(responseText));
	}

	function getWeatherObj(weatherData) {
		var weatherObj = {};
		weatherObj.main = weatherData.weather.main || undefined;
		weatherObj.clouds = weatherData.clouds || undefined;
		weatherObj.wind =  weatherData.wind.speed + " m/s";
		weatherObj.weather = weatherData.weather[0].description || undefined;
		weatherObj.location = weatherData.name || undefined;
		weatherObj.tempCelsius = weather.convertToCelciusFromKelvin(weatherData.main.temp) || undefined;
		weatherObj.tempKelvin = weatherData.main.temp || undefined;
		weatherObj.humidity = weatherData.main.humidity;
		
		return weatherObj;
	}

	function getWeatherForecastList(weatherData){
		var weatherConditionList = [];
		var weatherObjData = {};
		weatherObjData.listlength = weatherData.list.length;
		weatherObjData.list = weatherData.list;
		
		for (var i = 0; i < weatherObjData.listlength; i++) {
			console.log(weatherData.list[i].dt_txt);
			var condition = new WeatherCondition(
				weatherData.list[i].dt_txt, 
				weatherData.list[i].clouds, 
				weatherData.list[i].main.temp_min, 
				weatherData.list[i].main.temp_max, 
				weatherData.list[i].rain, 
				weatherData.list[i].weather[0].description, 
				weatherData.list[i].wind.speed);
			 weatherConditionList.push(condition);
		};
		return weatherConditionList;
	}

	function getWeatherConditionObj(weatherDataListItem) {
		var weatherObj = {};
		weatherObj.date_time = weatherDataListItem.condition_time|| undefined;
		weatherObj.clouds = weatherDataListItem.clouds || undefined;
		weatherObj.wind =  weatherDataListItem.wind+ " m/s";
		weatherObj.description = weatherDataListItem.maindescription|| undefined;
		weatherObj.temp_max = weather.convertToCelciusFromKelvin(weatherDataListItem.temp_max) || undefined;
		weatherObj.temp_min =  weather.convertToCelciusFromKelvin(weatherDataListItem.temp_min)  || undefined;
		weatherObj.rain = weatherDataListItem.rain;
		
		return weatherObj;
	}


	function displayWeatherConditionTable(array){
		var el = document.getElementById("fiveDayForecast");
		el.className = "";
		el.className = "fiveDayForecast_show";
		var ul = document.createElement("UL");
		ul.id = "conditionList";
		el.appendChild(ul);
		array.map(function(currentValue, currentIndex) {
			var currentObjDate = weather.getWeatherConditionObj(currentValue);
			var currentDate = new Date(currentObjDate.date_time).getDate();
			var li = document.createElement("LI");
			var t = document.createTextNode( currentObjDate.description + " " + currentDate);
			li.appendChild(t);
			ul.appendChild(li); 

  			return  currentValue;
		});
		return true;
	}

	function sortWeatherByDay(array){
		var listOfdays = [];
		var today = new Date(weather.getWeatherConditionObj(array[0]).date_time).getDate();
		var findInList = function(arr, num){
			var ind = -1;
			for (var i = 0; i < arr.length; i++) {
				if (arr[i].day === num) {
					ind = i;
				} 
			}
			return ind;
		};

		var listSortedByDays = array.reduce(function(today, currentValue, currentIndex, array) {
			today = new Date(weather.getWeatherConditionObj(array[0]).date_time).getDate();
			var currentObjDate = weather.getWeatherConditionObj(currentValue);
			var currentDate = new Date(currentObjDate.date_time).getDate();
			if( currentDate === today || currentDate !== today){
				var result = findInList(listOfdays,  currentDate);
				if(result !== -1){
					listOfdays[result].list.push(currentObjDate);
				} else {
					listOfdays.push({
						day: new Date( currentObjDate.date_time).getDate(),
						list: [currentObjDate]
					});
				}
			}
  			return  listOfdays;
		});
		return listSortedByDays;
	}


	function displayWeatherByDays(listSortedByDays){
		var el = document.getElementById("fiveDayForecast");
		el.className = "";
		el.className = "fiveDayForecast_show";
		var ul = document.createElement("UL");
		ul.id = "conditionList";
		el.appendChild(ul);
		
		for (var i = 0; i < listSortedByDays.length; i++) {
			var li = document.createElement("LI");
			var date = document.createTextNode(" " + listSortedByDays[i].day);
			li.className = "inline-list";
			ul.appendChild(li);
			li.appendChild(date);
			var calculatedWidth = (100/listSortedByDays.length).toFixed();
			li.style.width =  calculatedWidth + "%";
		};
	}
	
}();


/*

heatIndex: function (input) {
        if (arguments.length === 0) {
            throw new Error("Invalid Argument. Need at least one.");
        }
        if (HI.getType(input) !== 'Object') {
            throw new TypeError("Invalid Argument. Expecting 'Object'");
        }
        if (HI.getType(input.temperature) !== 'Number' ||
            HI.getType(input.humidity) !== 'Number') {
            throw new TypeError("Invalid Argument. temperature and humidity must be 'Number'");
        }

        var t = HI.toFahrenheit(input.temperature) || 0,
            h = input.humidity || 0;

        if (input.fahrenheit) {
            t = input.temperature;
        }

        // Steadman's result
        var heatIndex = 0.5 * (t + 61 + (t - 68) * 1.2 + h * 0.094);

        // regression equation of Rothfusz is appropriate
        if (t >= 80) {
            var heatIndexBase = (-42.379                      +
                                   2.04901523 * t             +
                                  10.14333127         * h     +
                                  -0.22475541 * t     * h     +
                                  -0.00683783 * t * t         +
                                  -0.05481717         * h * h +
                                   0.00122874 * t * t * h     +
                                   0.00085282 * t     * h * h +
                                  -0.00000199 * t * t * h * h);
            // adjustment
            if (h < 13 && t <= 112) {
                heatIndex = heatIndexBase - (13 - h) / 4 * Math.sqrt((17 - Math.abs(t - 95)) / 17);
            } else if (h > 85 && t <= 87) {
                heatIndex = heatIndexBase + ((h - 85) / 10) * ((87 - t) / 5)
            } else {
                heatIndex = heatIndexBase;
            }
        }
        return (input.fahrenheit ? heatIndex : HI.toCelsius(heatIndex));
    }

    */








	 


 

