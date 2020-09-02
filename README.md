
Makes an interesting Text Field Widget  
  
## Getting Started  
  
To use this plugin, add `TextFieldWidget` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/).  
  

  
### Example  
  
```dart  
import 'package:flutter/material.dart';
import 'package:TextFieldWidget/TextFieldWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextFieldWidget Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: TextFieldDemo(),
    );
  }
}

class TextFieldDemo extends StatelessWidget {
  TextEditingController Login_password_ctrlr = TextEditingController();
  TextEditingController Signup_password_ctrlr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          TextFieldWidget(
            kBtype: TextInputType.emailAddress,
            hint: "SignUp",
            icn: Icons.email,
            ctrlr: Signup_password_ctrlr,
          ),

          TextFieldWidget(
            scureText: true,
            hint: "Password",
            icn: Icons.lock,
            ctrlr: Login_password_ctrlr,
          ),

        ],
      ),
    );
  }
}
 
```