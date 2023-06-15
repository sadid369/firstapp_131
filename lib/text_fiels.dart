import 'package:flutter/material.dart';

class TextFieldEx extends StatelessWidget {
  TextFieldEx({super.key});
  var n01Controller = TextEditingController();
  var n02Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Text Field'),
      ),
      body: Center(
        child: SizedBox(
          // color: Colors.grey,
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                // enabled: false,
                controller: n01Controller,
                onChanged: (textValue) {
                  print(textValue);
                },
                decoration: InputDecoration(
                  icon: Icon(Icons.email),
                  iconColor: Colors.yellow,
                  label: Text("Email"),
                  hintText: "Email",
                  helperText: "Email",
                  prefixIcon: Icon(Icons.email),
                  // suffixIcon: Icon(Icons.access_alarm),
                  // hintTextDirection: TextDirection.rtl,
                  enabledBorder: OutlineInputBorder(
                    // borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.teal,
                      width: 4,
                    ),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.grey.shade200,
                      width: 2,
                    ),
                  ),
                  //  errorBorder: ,
                  //  focusedBorder: ,
                  //  enabledBorder: ,
                  //  disabledBorder: ,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                // enabled: false,
                controller: n02Controller,
                onChanged: (textValue) {
                  print(textValue);
                },
                decoration: InputDecoration(
                  icon: Icon(Icons.password_rounded),
                  iconColor: Colors.green,
                  label: Text("Password"),
                  hintText: "Password",
                  helperText: "Password",
                  prefixIcon: Icon(Icons.password),
                  suffixIcon: Icon(Icons.visibility),
                  hintTextDirection: TextDirection.rtl,
                  enabledBorder: OutlineInputBorder(
                    // borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.teal,
                      width: 4,
                    ),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.grey.shade200,
                      width: 2,
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    print('Tap');
                  },
                  child: SizedBox(
                    width: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.play_arrow_sharp), Text('Tap Me')],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
