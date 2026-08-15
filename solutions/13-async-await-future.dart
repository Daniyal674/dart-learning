Future <double> fetchTemperature(){
    return Future.delayed(Duration(seconds:2), () => 35.2);
}

Future <int> fetchHumidity(){
    return Future.delayed(Duration(seconds:2), () => 68);
}

Future <void> main() async { 
    print('Loading Temperature...');
    try{
        final start = DateTime.now();
        List<dynamic> results = await Future.wait([
            fetchTemperature(),
            fetchHumidity(),
        ]);
        double temp= results[0];
        int humidity= results[1];
        final end = DateTime.now();
        print('Took: ${end.difference(start).inSeconds} seconds');
        print('Temperature: $temp C \nHumidity: $humidity %');
    }
    catch(e){
        print('Error: $e');
    }
    print('Loading done.');
}