import 'package:flutter/material.dart';
import 'package:life_expected/user_Variables.dart';
import 'calculate_result.dart';
class ResultPage extends StatelessWidget {

  final UserVariables user_1;
  ResultPage(this.user_1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Sonuçlar',)
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children:[
          Expanded(
            flex: 8,
          child: Center(
            child:
              Text('Toplam yaşam Süresi : ${Hesap(user_1).getFinalResult().round().toString()}',
                style: TextStyle(
                    color: Colors.white ,
                    fontWeight: FontWeight.bold ,
                    fontSize: 25
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              onPressed: (){
                    Navigator.pop(context);
                },
              child: Text('geri dön' ,
                style: TextStyle(fontSize: 30 ,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

