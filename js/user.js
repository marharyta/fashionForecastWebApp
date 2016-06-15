'use strict';


function User(userName, userLocation){
	this.username = userName;
	this.userLocation = userLocation;
	this.firstTime = true;

}

User.prototype.setUserNameCookie = function(propName, userName, exdays) {
	if(document.cookie){
		var now = new Date();
		now.setTime(now.getTime() + (exdays*24*60*60*1000));
		var expires = "expires="+ now.toUTCString();
		document.cookie = propName + "=" + userName + "; " + expires;
	} else{
		//TO DO - update to better browser

	}
};


User.prototype.getCookieUserName = function (propName) {
	if(document.cookie){
		var name = propName + "=";
		var ca = document.cookie.split(';');
		for(var i = 0; i < ca.length; i++) {
		    var c = ca[i];
		    while (c.charAt(0) == ' ') {
		        c = c.substring(1);
		    }
		    if (c.indexOf(name) == 0) {
		        return c.substring(name.length, c.length);
		    }
		}
		return "";
	} else{
		//TODO
	}
};


	//checks if the cookies with user name have been saved in users computer
User.prototype.checkCookieUserName  = function() {
	    var username = this.getCookieUserName("user.name");
	    
	    if (username !== "" && username !== undefined && username !== null ) {
	        alert("Welcome again " + username);
	        this.firstTime = false;
	        return true;
	    } else {
	        this.firstTime = true;
	        return false;
	        
	    }
};


User.prototype.saveUserName = function(){
	var name = document.getElementById('userName').value;
	localStorage.setItem("user.name", name);
	this.username = name;
	//user.setUserNameCookie("user.name", name, 60);

};

User.prototype.watchNameChanged = function() {
    	document.getElementsByClassName("saveYourName")[0].addEventListener("click", this.saveUserName);
    	document.getElementsByClassName("saveYourName")[0].addEventListener("click", function(){
	    	document.getElementById('registration-location').style.display = "block";
	    	document.getElementById('registration-name').style.display = "none";
	    });
}


