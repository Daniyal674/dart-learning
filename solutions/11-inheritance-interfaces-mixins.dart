class Vehicle{
    String brand;
    Vehicle(this.brand);
    void startEngine(){
        print('Engine started');
    }
}

class Car extends Vehicle{
    Car(String brand) : super(brand);
    @override
    void startEngine(){
        super.startEngine();
        print('Car is ready to drive');
    }
}

mixin Electric{
    void chargeBattery(){
        print('Charging...');
    }
}

class Tesla extends Vehicle with Electric{
    Tesla(String brand) : super(brand);
}

void main() {
    Tesla t = Tesla('Tesla Model S');
    t.startEngine(); // Engine started
                     // Car is ready to drive
    t.chargeBattery(); // Charging...
}