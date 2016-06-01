$(document).ready(function() {

  //weather
  // Docs at http://simpleweatherjs.com
  $(document).ready(function() {
    $.simpleWeather({
      location: 'Melbourne',
      woeid: '',
      unit: 'c',
      success: function(weather) {
        html = '<p>'+weather.temp+'&deg;'+weather.units.temp+'</p>';
        desc = '<p>'+weather.currently+'</p>';
        $("#weather").html(html + desc);
      },
      error: function(error) {
        $("#weather").html('<p></p>');
      }
    });
  });
});
