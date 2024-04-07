
import 'package:life_expected/user_Variables.dart';

class Hesap{

 UserVariables user_1;
 Hesap(this.user_1);

double getFinalResult(){
  double result;

  result = (user_1.userHeight / user_1.userWeight) + (90.0 + user_1.sportValue - user_1.smokeValue);

  if(user_1.selectedGender == 0)
    result += 3;

  return  result;
}

}


