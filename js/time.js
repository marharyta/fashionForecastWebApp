'use strict';

var time = function() {

	return {

		getNow: getNow,
	    getCurrentTime: getCurrentTime,
		getCurrentDate: getCurrentDate,
		greetUser: greetUser,
		showGreetingToUser: showGreetingToUser,
		refreshTimer: refreshTimer

	}

	function getNow() { return new Date();}

	function getCurrentTime() {
		var hours = this.getNow().getHours();
		var prefix = "";
		if(hours >= 12){
			hours = hours % 12;
			prefix = "pm";
		} else{
			hours = hours;
			prefix = "am";
		}
		var minutes = this.getNow().getMinutes();  
		minutes = minutes < 10 ? '0'+minutes : minutes;
		var seconds = this.getNow().getSeconds(); 
						
		return hours +":" + minutes + " " + seconds + " " + prefix;
	}


	function getCurrentDate() {
		return this.getNow().toDateString();
	}

	function greetUser() {
		if( this.getNow().getHours() > 4 && this.getNow().getHours() < 12 ){
			document.body.className = "morningSkyClear";
			return "Good morning! " + localStorage.getItem("user.name");
		}
		else if(this.getNow().getHours() >= 12 && this.getNow().getHours() < 18){
			document.body.className = "daySkyClear";
		 	return "Good afternoon! " + localStorage.getItem("user.name");
		}
		else if(this.getNow().getHours() >=18 && this.getNow().getHours() < 23){
			document.body.className = "eveningSkyClear";
			return "Good evening! " + localStorage.getItem("user.name");	
		}
		else {
			document.body.className = "eveningSkyClear";
			return "Good night! " + localStorage.getItem("user.name");
		}
	}


	function showGreetingToUser() {
		document.getElementById("date").innerHTML = this.getCurrentDate();
		document.getElementById("time").innerHTML = this.getCurrentTime();
		document.getElementById("greet").innerHTML = this.greetUser();
	}


	function refreshTimer(){
		setInterval(() => time.showGreetingToUser(), 1000);
	}

}();