'use strict';

var weather = function(){
	return {
		convertToCelcius: convertToCelcius,
		displayWeather: displayWeather,
		backgroundWeather: backgroundWeather,
		displayTemperature: displayTemperature,
		displayWind: displayWind,
		displayLocation: displayLocation,
		httpRequestWeatherForNow: httpRequestWeatherForNow,
		httpRequestWeatherForFiveDays: httpRequestWeatherForFiveDays,
		getWeatherInfoAsync: getWeatherInfoAsync,
		getWeatherObj: getWeatherObj
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
	 	//this.displayLocation(weatherObject.location);
	 	 
	}

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

	function httpRequestWeatherForNow(url) {
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

	function httpRequestWeatherForFiveDays(url) {
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


	function getWeatherInfoAsync(userCity){
			var weatherPromise = weather.httpRequestWeatherForNow("http://api.openweathermap.org/data/2.5/weather?q=" + userCity + "&appid=0b80560c4a970c01ef20235a6a8b6dcd");
			return weatherPromise.then(responseText => JSON.parse(responseText));
		}

	function getWeatherObj(weatherData) {
		var weatherObj = {};
		weatherObj.main = weatherData.weather.main;
		weatherObj.clouds = weatherData.clouds;
		weatherObj.wind =  weatherData.wind.speed + " m/s";
		weatherObj.weather = weatherData.weather[0].description;
		weatherObj.location = weatherData.name;
		weatherObj.tempCelsius = weather.convertToCelcius(weatherData.main.temp);
		//weather.checkConditionNumber(weatherObj);
		return weatherObj;
	}
	
}();

/*function convertToCelcius(temperature){
	if((temperature - 273.15) >= 0){
	 	return "+" + (temperature - 273.15).toFixed(0) + "°C";
	}
	else{
		return "-" + (temperature - 273.15).toFixed(0) + "°C";
	}
}



function displayImages(response){
	var length = JSON.parse(response).data.length;
		for (var i = 0; i < length; i++) {
			var image = document.createElement("IMG");
			image.src = JSON.parse(response).data[i].images.standard_resolution.url;
			document.getElementById("insta").appendChild(image); 
		};
}



function displayWeather(weatherObject){
	var condition = "rain";
 	backgroundWeather(condition);
 	displayTemperature(weatherObject.tempCelsius);
 	displayWind(weatherObject.wind);
 	displayLocation(weatherObject.location);
 	 
}



function backgroundWeather(weatherCondition){
	weatherCondition = "rain";
	if(weatherCondition == "rain"){
		document.body.style.backgroundImage = "url('../img/bgs/rain_bg-01.png')";
		document.getElementById("rain").innerHTML = "baby, it´s raining outside!";
		var image = document.createElement("IMG");
		image.src = "../img/umbr.svg";
		document.getElementById("rain").appendChild(image); 

		//console.log("baby, its rain outside!");
	}
}


function displayTemperature(weatherTemp){
	document.getElementById("temperature").innerHTML = weatherTemp;
}

function displayWind(weatherWind){
	document.getElementById("wind").innerHTML = "wind " + weatherWind;
}
function displayLocation(weatherLocation){
	document.getElementById("location").innerHTML = weatherLocation;
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








	 


 

