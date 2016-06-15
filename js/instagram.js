
var insta = function(){
	return{
		displayInstaImages: displayInstaImages,
		httpRequestHashtag: function (url) {
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

		},
		requestSpringOutfit: function() {
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
	}


	function displayInstaImages(response){
			var length = JSON.parse(response).data.length;
				for (var i = 0; i < length; i++) {
					var image = document.createElement("IMG");
					image.src = JSON.parse(response).data[i].images.standard_resolution.url;
					document.getElementById("insta").appendChild(image); 
				};
		}
	
};