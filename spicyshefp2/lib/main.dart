import 'package:flutter/material.dart';
import 'dice.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dice game',
      home: LogIn(),
    );
  }
}

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn>{

  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log in'),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: (){}
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              onPressed: (){}
          )
        ],
      ),
      body: Builder(
        builder:(context) {
          return GestureDetector(
            onTap: (){
              FocusScope.of(context).unfocus();
            },
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 50)),
                  Center(
                    child: Image(
                      image: AssetImage('image/chef.gif'),
                      width: 170.0,
                      height: 190.0,
                    ),
                  ),
                  Form(child: Theme(
                    data: ThemeData(primaryColor: Colors.teal,
                      inputDecorationTheme: InputDecorationTheme(
                        labelStyle: TextStyle(
                          color: Colors.teal,
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(40.0),
                      child: Column(
                        children: [
                          TextField(
                            controller: controller,
                            decoration: InputDecoration(
                                labelText: 'Enter "dice"'
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          TextField(
                            controller: controller2,
                            decoration: InputDecoration(
                                labelText: 'Enter Password'
                            ),
                            keyboardType: TextInputType.text,
                            obscureText: true, //보안을 위해 안보이도록 한다
                          ),
                          SizedBox(height: 40.0,),
                          ButtonTheme(
                              minWidth: 100.0,
                              height: 50.0,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  textStyle: const TextStyle(
                                    color: Colors.amber, fontSize: 20.0,
                                    backgroundColor: Colors.orangeAccent,
                                  ),
                                ),
                                onPressed: () {
                                  if (controller.text == 'dice' &&
                                      controller2.text == '1234') {
                                    Navigator.push(context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                Dice()));
                                  } else if (controller.text == 'dice' &&
                                      controller2.text != '1234') {
                                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('input Error PW'),
                                    duration: Duration(seconds: 3),
                                    backgroundColor: Colors.blue,));

                                  } else if (controller.text != 'dice' &&
                                      controller2.text == '1234') {
                                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('input Error ID'),
                                      duration: Duration(seconds: 3),
                                      backgroundColor: Colors.blue,));

                                  } else {ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('input Error ID or PW'),
                                    duration: Duration(seconds: 3),
                                    backgroundColor: Colors.blue,));}
                                },
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size: 35.0,
                                ),
                              ))
                        ],
                      ),
                    ),))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
