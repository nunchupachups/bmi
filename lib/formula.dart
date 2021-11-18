import 'dart:math';

class Logic{
  double calculateBMI(int height, int weight){
    double bmi=weight/ pow(height, 2);
    return bmi;
  }
}