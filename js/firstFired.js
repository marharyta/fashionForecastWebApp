time.refreshTimer();

var defaultCity = 'Helsinki';
function getLocationAsync(){
	return userlocation.getLocationDataAsync()
		.then(response => { 
			userlocation.displayLocation(response.city);
			return response.city;
		});
}

function getDefaultCity(){
	return defaultCity;
}

var myCity = getDefaultCity();

function updateWeatherNowAsync() {
	return _locationPromise
		.then(userLocation => weather.getWeatherInfoAsync(userLocation, "http://api.openweathermap.org/data/2.5/weather?q=", weatherAPIToken))
		.then(userLocation => weather.getWeatherInfoAsync(defaultCity, "http://api.openweathermap.org/data/2.5/weather?q=", weatherAPIToken))
		.then(weather.getWeatherObj)
		.then(weatherObj => {
				weather.displayWeather(weatherObj);
				return weatherObj;
		})
		.catch(err => console.log("no data for you :(", err));
	//.then(weatherObj => instagram.getSummutAsync(weatherObj.param)) // отправить запрос на фотки
	//.then(response => ...) // отобразить фотки из ответа;
}

let _locationPromise = getLocationAsync();

updateWeatherNowAsync();

setInterval(updateWeatherNowAsync, 30*1000);
function callFiveDays(){
		return _locationPromise
			.then(userLocation => weather.getWeatherInfoAsync(userLocation, "http://api.openweathermap.org/data/2.5/forecast?q=", weatherAPIToken))
			.then(function(value){
				return weather.getWeatherForecastList(value);
			})
			.then(function(array){

				weather.displayWeatherConditionTable(array);
				var weatherDayObj = weather.sortWeatherByDay(array);
				return weatherDayObj;
			})
			.then(function(array){
				weather.displayWeatherByDays(array);
			})
			.catch(err => console.log("no data for you :(", err));

	}

document.getElementById("classnayaKnopka").addEventListener("click",callFiveDays);


var user = new User(null, null);

if(userlocation.getCityFromLocalStorage()){
	//call display options

	userlocation.getCityFromLocalStorage();
	userlocation.getCityFromCookies();
}
else{
	user.watchNameChanged();
	userlocation.populateLocationsSelector();
	userlocation.addEventListeners();

	document.getElementsByClassName('registration_block')[0].style.display = "block";
	document.getElementById('registration-name').style.display = "block";	


}


//1209535015.1fb234f.4133b5223e4749b0ba934b9754eedffb 
//https://api.instagram.com/v1/tags/springoutfit?access_token=1209535015.1fb234f.4133b5223e4749b0ba934b9754eedffb 
//httpRequestHashtag("https://api.instagram.com/v1/tags/swhelsinki/media/recent?access_token=1209535015.9a9374b.03169950da0e47d4b1e5e3772edf2fd9")
function resetDOM(){
	var info = document.getElementById("info").style.display = "none";
	document.getElementById("back").style.display = "block";
	document.getElementById("insta").style.display = "block";
}

function returnDOM(){
	document.getElementById("insta").style.display = "none";
	document.getElementById("back").style.display = "none";

	var info = document.getElementById("info").style.display = "block"; 
}
	 

function requestSWHelsinki() {
	resetDOM();
	var imgContainer = document.getElementById("insta");
	if (imgContainer.hasChildNodes()) {
		for (var i = imgContainer.childNodes.length - 1; i >= 0; i--) {
			 imgContainer.removeChild(imgContainer.childNodes[i]);
		};
	}
	weatherData = getTagName("swhelsinki");
	returnResponseFromInstaPromise(weatherData);
}


function getTagName(condition){
	if(condition !== "swhelsinki"){
		return "summeroutfit";
	}
	else{
		return "swhelsinki";
	}
	
}


var weatherData = getTagName("hi");
 
  document.addEventListener("DOMContentLoaded", function(event) {
    console.log("DOM fully loaded and parsed");
    document.getElementById("spring").onclick = insta.requestSpringOutfit;//returnRespoinseFromInstaPromise;
    document.getElementById("swhelsinki").onclick = insta.requestSWHelsinki;//returnRespoinseFromInstaPromise;
    document.getElementById("back").onclick = returnDOM;//returnRespoinseFromInstaPromise;
  });




  function returnResponseFromInstaPromise(weatherData) {
		insta.httpRequestHashtag("https://api.instagram.com/v1/tags/" + weatherData + "/media/recent?access_token=1209535015.1fb234f.4133b5223e4749b0ba934b9754eedffb")
			.then(function(response){ 
				weather.displayImages(response);
				return JSON.parse(response);
			},
			function(response){	
				return "no data";
			}); 
	}