import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({required Key key}) : super(key: key);
  @override
  createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> with SingleTickerProviderStateMixin {
  late TabController controller;
  late List<Tab> tabBars;
  late List<Widget> tabBarViews;
  final tabIconSize = 30.0;

  @override
  void initState() {
    controller = new TabController(vsync: this, length: 3);
    controller.index = 1;
    tabBars = [
      Tab(icon: Icon(Icons.view_list, size: tabIconSize)),
      Tab(icon: Icon(Icons.account_circle, size: tabIconSize)),
      Tab(icon: Icon(Icons.shopping_cart, size: tabIconSize)),
    ];
    tabBarViews = [TestScreen1(), TestScreen2(), TestScreen3()];

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        bottomNavigationBar: Material(
          child: SafeArea(child: TabBar(controller: controller, tabs: tabBars)),
          color: theme.primaryColor,
        ),
        body: TabBarView(
          children: tabBarViews,
          controller: controller,
          physics: NeverScrollableScrollPhysics(),
        ),
      ),
    );
  }
}

class TestScreen1 extends StatefulWidget {
  @override
  createState() => _TestScreen1State();
}

class _TestScreen1State extends State<TestScreen1> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text('Testing1'),
        ),
        body: Center(
          child: Text("Test"),
        ));
  }
}

class TestScreen2 extends StatefulWidget {
  @override
  createState() => _TestScreen2State();
}

class _TestScreen2State extends State<TestScreen2> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text('Testing2'),
        ),
        body: Center(
          child: Text("Test"),
        ));
  }
}

class TestScreen3 extends StatefulWidget {
  @override
  createState() => _TestScreen3State();
}

class _TestScreen3State extends State<TestScreen3> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text('Testing3'),
        ),
        body: Center(
          child: Text("Test"),
        ));
  }
}