'use strict';

var userlocation = function(){

	//to do: set local storage get to var
	
	return {
		selectedCity: null,
		getCityChoice: getCityChoice,
		setCityChoice: setCityChoice,

		saveCityToLocalStorage: saveCityToLocalStorage,
		saveCityToCookies : function(){
			return true;
		},
		getCityFromLocalStorage: getCityFromLocalStorage,
		getCityFromCookies: function(){
			//here set city to cookies
			return true;
		},
		requestLocationFromApi: requestLocationFromApi,
		getLocationSelectorValue: getLocationSelectorValue,

		addEventListeners: addEventListeners,
		watchSelectorChanged: watchSelectorChanged,

		watchSaveButton: watchSaveButton,
		displayLocation: displayLocation,
		populateLocationsSelector: populateLocationsSelector,
		getLocationDataAsync:  getLocationDataAsync

	};

	function getCityChoice(){ return this.selectedCity;}

	function setCityChoice(selectedCity){
			this.selectedCity  = selectedCity;
	}

	function saveCityToLocalStorage(){
		if(localStorage.getItem("user.city") === userlocation.selectedCity && localStorage.getItem("user.city") !== null &&  localStorage.getItem("user.city") !== undefined)
		{
			console.log("city exists!");
			document.getElementsByClassName('registration_block')[0].style.display = "none";
		} else {
			//localStorage.removeItem("user.city"	);
			localStorage.setItem("user.city", userlocation.selectedCity);
			document.getElementsByClassName('registration_block')[0].style.display = "none";
		}
	}

	function getCityFromLocalStorage(){
		if(localStorage.getItem("user.city")){
			this.selectedCity = localStorage.getItem("user.city");
		}
		return this.selectedCity;
	}

	function getLocationSelectorValue(){
		var selectedValue = document.getElementsByClassName("selectLocation")[0].selectedIndex;
		var selectedCity = document.getElementsByTagName("option")[selectedValue].value;
		console.log(document.getElementsByTagName("option")[selectedValue].value);

		//WHY?
		console.log(this);
		userlocation.setCityChoice(selectedCity);

	}

	function addEventListeners(){
		this.watchSelectorChanged();
		this.watchSaveButton();
	}

	function watchSelectorChanged() {
		var watch = document.getElementsByClassName("selectLocation")[0].addEventListener("change", this.getLocationSelectorValue);
	}
	function populateLocationsSelector(){
		console.log('inside populateLocationsSelector');
		var parent = document.getElementsByClassName("selectLocation")[0];
		var locationList = AVAILABLE_LOCATION_LIST;
		for(var i=0; i < locationList.length; i++ ){
			console.log(locationList[i].name);
			var location = document.createElement("OPTION");
			location.innerHTML = locationList[i].name;
			location.value = locationList[i].name;
			parent.appendChild(location);
		}
	}

	function watchSaveButton() {
		let el = document.getElementsByClassName("selectLocationButton")[0];
		el.addEventListener("click", this.saveCityToLocalStorage);
		el.addEventListener("click", this.saveCityToCookies);
	}

	function requestLocationFromApi(){
		return new Promise(function(resolve, reject){
			var locationRequest = new XMLHttpRequest();
		    locationRequest.open("GET", 'https://freegeoip.net/json/', true);

			locationRequest.onreadystatechange = function() {
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
			    	reject(new Error("no location data"));
			    }
			  };
		  	locationRequest.send();
		});
	}


	function getLocationDataAsync(){
		var locationData = requestLocationFromApi();
		return locationData.then(responseText => JSON.parse(responseText));

	}

	function displayLocation(userlocation){
		document.getElementById("location").innerHTML = userlocation;
	}


}();


