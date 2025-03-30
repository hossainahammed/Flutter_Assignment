abstract class Vehicle{
 int _speed =0;
 void move();
  set setSpeed(int speed){
    if (speed >= 0) {
      _speed = speed;
    } else {
      print("Speed cannot be negative");
    }
  }
  int get speed=>_speed;
}

class Car extends Vehicle{
  @override
  void move() {
   print("The car is moving at ${speed} km/h");
  }
}

