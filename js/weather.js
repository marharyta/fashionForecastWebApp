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
		convertToCelcius: convertToCelcius,
		displayWeather: displayWeather,
		backgroundWeather: backgroundWeather,
		displayTemperature: displayTemperature,
		displayWind: displayWind,
		displayLocation: displayLocation,
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

	function convertToCelcius(temperature){
		if((temperature - 273.15) >= 0){
		 	return "+" + (temperature - 273.15).toFixed(0) + "°C";
		}
		else{
			return "-" + (temperature - 273.15).toFixed(0) + "°C";
		}
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
	function displayWeather(weatherObject){
		var  condition  = weatherObject.weather;
	 	this.backgroundWeather(condition);
	 	this.displayTemperature(weatherObject.tempCelsius);
	 	this.displayWind(weatherObject.wind);
	 	
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
		weatherObj.tempCelsius = weather.convertToCelcius(weatherData.main.temp) || undefined;
		
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
		weatherObj.temp_max = weather.convertToCelcius(weatherDataListItem.temp_max) || undefined;
		weatherObj.temp_min =  weather.convertToCelcius(weatherDataListItem.temp_min)  || undefined;
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
		};
	}
	
}();

/*



function displayImages(response){
	var length = JSON.parse(response).data.length;
		for (var i = 0; i < length; i++) {
			var image = document.createElement("IMG");
			image.src = JSON.parse(response).data[i].images.standard_resolution.url;
			document.getElementById("insta").appendChild(image); 
		};
}



function httpRequestHashtag (url) {
  return new Promise(function(resolve, reject) {
    var instaRequest = new XMLHttpRequest();
    instaRequest.open("GET", url, true);

	instaRequest.onreadystatechange = function() {
	  	if(this.readyState == 0){
	  		//console.log("request not initialized ");
	  	}
	  	else if(this.readyState == 1){
	  		//console.log("server connection established");
	  	}
	  	else if(this.readyState == 2){
	  		//console.log(" request received ");
	  	}
	  	else if(this.readyState == 3){
	  		//console.log(" processing request ");
	  	}
	    else if (this.readyState == 4 && this.status == 200) {
	     	//console.log("request finished and response is ready");
	     	resolve(this.response);
	    }
	    else{
	    	reject(this.response);
	    }
	  };
  	instaRequest.send();
  });

}
*/



/*
function requestSpringOutfit() {
	resetDOM();
	var imgContainer = document.getElementById("insta");
	if (imgContainer.hasChildNodes()) {
		for (var i = imgContainer.childNodes.length - 1; i >= 0; i--) {
			 imgContainer.removeChild(imgContainer.childNodes[0]);
		};
	}
	weatherData = getTagName("hi");
	returnResponseFromInstaPromise(weatherData);
}

*/








	 


 

