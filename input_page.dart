import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'result_page.dart';
import 'user_Variables.dart';



class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

UserVariables user_1 = UserVariables(smokeValue: 0.0, sportValue:0.0 , selectedGender: 3, userHeight: 150, userWeight: 80);

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'YAŞAM BEKLENTİSİ',
          style: TextStyle(color: Colors.black54),
        ),
        backgroundColor: Colors.green[800],
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        RotatedBox(
                          quarterTurns: -1,
                          child: Text('KİLO' ,
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.grey , fontSize: 20,
                            ),
                          ),
                        ),
                        RotatedBox(
                          quarterTurns: -1,
                          child: Text( '${user_1.getUserWeight()}' , textAlign: TextAlign.center, style: TextStyle(
                            color: Colors.blue , fontSize: 40,
                          ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ButtonTheme(
                              minWidth: 36,
                              child: OutlinedButton(
                                // BorderSide(color: Colors.lightGreen),
                                  child: Icon(FontAwesomeIcons.plus),
                                  onPressed:(){
                                    print('plus button');
                                    setState(() {
                                      user_1.userWeight += 1;
                                    });

                                  }
                              ),
                            ),
                            ButtonTheme(
                              minWidth: 36,
                              child: OutlinedButton(
                                //BorderSide(color: Colors.lightGreen),
                                  child: Icon(FontAwesomeIcons.minus),
                                  onPressed: (){
                                    print('minus button');
                                    setState(() {
                                      user_1.userWeight -= 1;
                                    });


                                  }
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        RotatedBox(
                            quarterTurns: -1,
                            child: Text('BOY' ,
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.grey , fontSize: 20,
                              ),
                            ),
                        ),
                        RotatedBox(
                          quarterTurns: -1,
                          child: Text( '${user_1.getUserHeight()}' ,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                            color: Colors.blue , fontSize: 40,
                            ),
                          ),
                        ),
                        Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ButtonTheme(
                              minWidth: 36,
                              child: OutlinedButton(
                                   // BorderSide(color: Colors.lightGreen),
                                child: Icon(FontAwesomeIcons.plus),
                                  onPressed:(){
                                    print('plus button');
                                    setState(() {
                                      user_1.userHeight += 1;
                                    });

                                  }
                              ),
                            ),
                            ButtonTheme(
                              minWidth: 36,
                              child: OutlinedButton(
                                  //BorderSide(color: Colors.lightGreen),
                                child: Icon(FontAwesomeIcons.minus),
                                onPressed: (){
                                  print('minus button');
                                  setState(() {
                                    user_1.userHeight -= 1;
                                  });


                                }
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Haftada kaç egzersiz yapıyorsunuz?',
                    style: TextStyle(fontSize: 20),
                  ),
                  Slider(
                    value: user_1.sportValue,
                    onChanged: (double value2) {
                      setState(() {
                        user_1.sportValue = value2;
                      });
                    },
                    divisions: 10,
                    label: getLabel(user_1.sportValue),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Günde kaç sigara kullanıyorsunuz?',
                    style: TextStyle(fontSize: 20),
                  ),
                  Slider(
                    value: user_1.smokeValue,
                    onChanged: (double value) {
                      setState(() {
                        user_1.smokeValue = value;
                      });
                    },
                    divisions: 10,
                    label: getLabel(user_1.smokeValue),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(

                    onTap: (){
                      setState(() {
                        print('pressed L');
                        user_1.selectedGender = 0;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: user_1.selectedGender == 0 ? Colors.lightGreen[100] : Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Kadın',
                            style: TextStyle(fontSize: 20 ,
                                color: Colors.pinkAccent,
                                fontWeight: FontWeight.w800),

                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        print('pressed');
                        user_1.selectedGender = 1;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: user_1.selectedGender == 1 ? Colors.lightGreen[100] : Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Erkek', style: TextStyle(fontSize: 20 , color: Colors.blueAccent, fontWeight: FontWeight.w800),),
                        ],
                      ),
                      // Add your code here
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),


      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // getNextPage(ResultPage());
          Navigator.push(context,
              MaterialPageRoute(builder:(context)=> ResultPage(UserVariables(smokeValue: user_1.smokeValue,
                  sportValue: user_1.sportValue,
                  selectedGender: user_1.selectedGender,
                  userHeight: user_1.userHeight,
                  userWeight: user_1.userWeight))));
        },
        child: Icon(Icons.redo_sharp),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

String getLabel(double smokeValueCopy){
  smokeValueCopy = smokeValueCopy * 10 ;
  int reValue = smokeValueCopy.toInt();
    String label = reValue.toString();
    return label;

}
