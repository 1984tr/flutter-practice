import 'package:flutter/material.dart';
import 'package:flutter0131/pages/sample01.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SignInPage(),
    );
  }
}

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  var _id = TextEditingController();
  var _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign in BlahBlah"),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, right: 16),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 24),
              child: getTextField(
                  _id, "Username or email address", Icons.perm_identity),
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: getTextField(_password, "Password", Icons.vpn_key_outlined,
                  obscureText: true),
            ),
            Container(
              width: double.infinity,
              height: 48,
              margin: EdgeInsets.only(top: 48),
              child: FlatButton(
                child: Text('Sign in', style: TextStyle(fontSize: 18)),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
                onPressed: () => signIn(),
                color: Colors.green,
                textColor: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget getTextField(
      TextEditingController controller, String labelText, IconData icon,
      {bool obscureText = false}) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText,
        prefixIcon: Icon(icon),
      ),
    );
  }

  void signIn() {
    // Toast.show("Id is ${_id.text} ans Password is ${_password.text}", context,
    //     duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Sample01()),
  );
  }
}
