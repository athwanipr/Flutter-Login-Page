import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

    // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  static OutlineInputBorder inputBorder = OutlineInputBorder(borderRadius: BorderRadius.circular(12),
  borderSide: BorderSide(
  width: 2,
  color: Colors.blue
  ));

  String email= 'abc';
  String password = 'abc';
  String textValue='Enter your name';
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: <Widget>[
          TextFormField(
            controller: emailController,
            decoration: InputDecoration(
              //focusedBorder: OutlineInputBorder(),
              disabledBorder: inputBorder.copyWith(borderSide: BorderSide(color: Colors.black)),
                enabledBorder: inputBorder,  // By default border on display
                errorBorder: inputBorder.copyWith(borderSide: BorderSide(color: Colors.red)),
                focusedBorder: inputBorder.copyWith(borderSide: BorderSide(color: Colors.green)),
                focusedErrorBorder: inputBorder,
                border: inputBorder,
              hintText: 'Enter email here',
              labelText: 'Email',


            ),

          ),
              SizedBox(height: 40,),
              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                  //focusedBorder: OutlineInputBorder(),
                  disabledBorder: inputBorder.copyWith(borderSide: BorderSide(color: Colors.black)),
                  enabledBorder: inputBorder,  // By default border on display
                  errorBorder: inputBorder.copyWith(borderSide: BorderSide(color: Colors.red)),
                  focusedBorder: inputBorder.copyWith(borderSide: BorderSide(color: Colors.green)),
                  focusedErrorBorder: inputBorder,
                  border: inputBorder,
                  hintText: 'Enter password here',
                  labelText: 'Password',


                ),

              ),

              SizedBox(height: 40,),

              TextButton(onPressed:(){
                  email=emailController.text;
                  password=passwordController.text;
                  print(email);
                  print(password);
                  //print(password)
              }, child: Container(child: Text('Login'),
              height: 40,
                width: 80,
                color: Colors.black87,
              )

              )

            ],
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: (){
      //     setState(() {
      //      // textValue = textcontroller.text;
      //
      //     });
      //   },
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
