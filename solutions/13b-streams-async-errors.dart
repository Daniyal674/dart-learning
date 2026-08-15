Stream <int> countDownStream(int start) async* {
    for(int i=start; i>=-1; i--){
        await Future.delayed(Duration(seconds:1));
        if(i==0){
            throw Exception('Lift off!');
        }
        yield i;
    }
}

Future<void> main() async {
  try {
    await for (int value in countDownStream(5)) {
      print('Received: $value');
    }
  } catch (e) {
    print('Caught error: $e');
  } finally {
    print('Done listening.');
  }
}