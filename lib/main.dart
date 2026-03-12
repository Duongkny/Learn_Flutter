import 'package:flutter/material.dart';

// import 'MyScaffold.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        body: Center(
          child: MyApp2(loading:false)
          ),
      //   appBar: AppBar(
      //     backgroundColor: Colors.green,
      //     title: const Text('My App')
      //     ),
          
          
      //   // body: const Center(
      //   //   child: Text(
      //   //     'Hello World!',
      //   //     style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      //   //   ),
      //   // ),
      //   bottomNavigationBar: BottomNavigationBar(
      //     backgroundColor: Colors.green,
      //     items:   [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home" ),
      //     BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
      //     BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
      //   ]
      // ),
    ),
    ),
  ));
  
}

class MyApp extends StatelessWidget {

  final bool loading;
  
  const MyApp({super.key, required this.loading});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: loading ? const CircularProgressIndicator() : const Text('App Loaded Successfully'),
    );
  }
}

class MyApp2 extends StatefulWidget {
  final bool loading;
  MyApp2({required this.loading});

  @override
  State<StatefulWidget> createState(){
    return _MyApp2State();
  }
}

class _MyApp2State extends State<MyApp2>{
  late bool _loading;
  void initState(){
    super.initState();
    _loading = widget.loading;
  }
  @override
  Widget build(BuildContext context) {
    return  _loading ? const CircularProgressIndicator() : FloatingActionButton(
      onPressed: onClick,
      child: Center(child: const Text('Load App')),
    );
  }
  void onClick(){
    setState(() {
      _loading = !_loading;
    });
  }
}



