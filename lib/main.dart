
import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp"),
          backgroundColor: Colors.green,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.chat)),
              Tab(icon: Icon(Icons.circle_outlined)),
              Tab(icon: Icon(Icons.call)),
            ],
          ),
        ),

        body: TabBarView(
          children: [

            // TAB CHAT
            Column(
              children: [
                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(
                      Icons.person,
                    ),
                    title: Text("Ari"),
                    subtitle: Text("OMAIGATT"),
                    trailing: Text(
                      "50",
                      style: TextStyle(
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),

                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(
                      Icons.person,
                    ),
                    title: Text("Yuni"),
                    subtitle: Text("OKEE"),
                    trailing: Text(
                      "50",
                      style: TextStyle(
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // TAB STATUS
            Card(
              elevation: 5,
              child: ListTile(
                leading: Icon(
                  Icons.person,
                ),
                title: Text("Status saya"),
                subtitle: Text(
                  "ketuk untuk menambahkan status",
                ),
                trailing: Icon(
                  Icons.add_circle,
                  color: Colors.green,
                ),
              ),
            ),

            // TAB PANGGILAN
            Card(
              elevation: 5,
              child: ListTile(
                leading: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.person),
                    Icon(Icons.call_received),
                  ],
                ),
                title: Text("Ari"),
                subtitle: Text("23.00"),
                trailing: Icon(
                  Icons.call,
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
