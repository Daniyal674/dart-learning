import 'package:http/http.dart' as http;
import 'dart:convert';

Future <Map<String, double>> fetchWeather(double lat, double lon) async{
    final url = 'https://api.open-meteo.com/v1/forecast?latitude=$lat&longitude=$lon&current_weather=true';
    final response = await http.get(Uri.parse(url));
    if(response.statusCode==200){
        final Map<String, dynamic> decodedJson = jsonDecode(response.body);
        final Map<String, dynamic> currentWeather = decodedJson['current_weather'];
        final double temperature = currentWeather['temperature'].toDouble();
        final double windspeed = currentWeather['windspeed'].toDouble();
        return {'temperature': temperature, 'windspeed': windspeed};
    }
    else{
        throw Exception('Failed to load weather data. Status Code: ${response.statusCode}');
    }
}

Future <void> main() async{
    try{
        final result = await fetchWeather(32.09451, 73.20091);
        print('Temperature: ${result['temperature']}°C, Windspeed: ${result['windspeed']} km/h');
    }
    catch(e){
        print('Error fetching weather: $e');
    }
}