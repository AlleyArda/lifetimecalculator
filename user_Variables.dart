class UserVariables {
  double smokeValue = 0.0;
  double sportValue = 0.0;
  int selectedGender = 3;
  int userHeight = 150;
  int userWeight = 80;

  UserVariables({
    required this.smokeValue ,
    required this.sportValue ,
    required this.selectedGender ,
    required this.userHeight ,
    required this.userWeight ,
});


  int getUserWeight(){
    return userWeight;
  }

  int getUserHeight(){
    return userHeight;
  }

}//class



