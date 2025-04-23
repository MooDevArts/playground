import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hima",
      // debugShowMaterialGrid: true,
      color: Colors.red,
      home: MyHomePage(),
      theme: ThemeData(
        // buttonTheme: ButtonThemeData(buttonColor: Colors.red),
        brightness: Brightness.dark,
        // bottomNavigationBarTheme: BottomNavigationBarThemeData(
        // backgroundColor: Colors.red,
        // ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;
  late Widget title;
  late Widget currentIcon;

  @override
  Widget build(BuildContext context) {
    Widget body;
    switch (selectedIndex) {
      case 0:
        currentIcon = Icon(Icons.abc);
        body = Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: currentIcon),
              Text("label"),
            ],
          ),
        );
        title = Text("Label");
        break;
      case 1:
        currentIcon = Icon(Icons.ac_unit);
        body = Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: currentIcon),
              Text("Now"),
            ],
          ),
        );
        title = Text("Now");
        break;
      case 2:
        currentIcon = Icon(Icons.access_alarm);

        body = Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: currentIcon),
              Text("Then"),
            ],
          ),
        );
        title = Text("Then");
        break;
      case 3:
        currentIcon = Icon(Icons.access_time);
        body = Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: currentIcon),
              Text("When"),
            ],
          ),
        );
        title = Text("When");
        break;
      default:
        throw UnimplementedError('no widget for $selectedIndex');
    }

    return Scaffold(
      appBar: AppBar(
        title: title,
        leading: currentIcon,
        actions: [
          Padding(padding: const EdgeInsets.all(8.0), child: currentIcon),
          Padding(padding: const EdgeInsets.all(8.0), child: currentIcon),
          Padding(padding: const EdgeInsets.all(8.0), child: currentIcon),
        ],
      ),
      body: body,
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (n) {
          setState(() {
            selectedIndex = n;
          });
        },
        selectedIndex: selectedIndex,
        destinations: [
          NavigationDestination(icon: Icon(Icons.abc), label: "label"),
          NavigationDestination(icon: Icon(Icons.ac_unit), label: "Now"),
          NavigationDestination(icon: Icon(Icons.access_alarm), label: "Then"),
          NavigationDestination(icon: Icon(Icons.access_time), label: "When"),
        ],
      ),
    );
  }
}
