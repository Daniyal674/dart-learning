void main(){
    print('Area of Rectangle: ${calculateArea(2.16, 3.6)}');

    greetTime(name: 'Alex', TimeofDay: 'Morning');

    print('Is the number even? ${isEven(5)}');
}

double calculateArea(double width, double height) => width*height;

void greetTime({required String name, required String TimeofDay}){
    print('Good $TimeofDay, $name!');
}

bool isEven(int number){
    if(number%2 == 0){
        return true;
    }
    else{
        return false;
    }
}