var AVAILABLE_LOCATION_LIST = [
	{
		name: "Helsinki"
	},
	{
		name: "Stockholm"
	},
	{
		name: "Oslo"
	}
];

var SELECTED_CITY = "Helsinki";
var USER_NAME = "";

var weatherAPIToken = "&appid=0b80560c4a970c01ef20235a6a8b6dcd";
var weatherNowHTTPQuery = "http://api.openweathermap.org/data/2.5/weather?q=";
var weatherFiveDaysHTTPQuery = "http://api.openweathermap.org/data/2.5/forecast?q=";
