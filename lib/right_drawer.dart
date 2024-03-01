import 'package:flutter/material.dart';
import 'package:twenty_three/switch_checkbox.dart';
import 'categories.dart';

class Right_Drawer extends StatelessWidget {
  const Right_Drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          title: const Text("Homepage"),
          //actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu))],
        ),
        body: Column(children: [
          Container(
              margin: const EdgeInsets.all(20), child: const Text("Homepage")),
          Center(child: Builder(builder: (context) {
            return ElevatedButton(
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
                child: const Text("Open Drawer"));
          })),
        ]),
        endDrawer: Drawer(
            elevation: 20.0,
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: const Text('ABHI SOLANKI'),
                  accountEmail: const Text('abhinavsolanki@gmail.com'),
                  currentAccountPicture: Image.network(
                      'https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg'),
                  decoration: const BoxDecoration(color: Colors.blueAccent),
                ),
                ListTile(
                  leading: const Icon(Icons.home),
                  title: const Text('Switch Buttons Example'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SwitchCheckBoxExample(),
                        ));
                  },
                ),
                const Divider(
                  height: 2.0,
                ),
                ListTile(
                  leading: const Icon(Icons.category_rounded),
                  title: const Text('Category'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Categories(),
                        ));
                  },
                ),
                const Divider(
                  height: 2.0,
                ),
                ListTile(
                  leading: const Icon(Icons.add_box_sharp),
                  title: const Text('Add items'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                const Divider(
                  height: 2.0,
                ),
                ListTile(
                  leading: const Icon(Icons.info),
                  title: const Text('About us'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                const Divider(
                  height: 2.0,
                ),
                ListTile(
                  leading: const Icon(Icons.share),
                  title: const Text('Share with friends '),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                const Divider(
                  height: 2.0,
                ),
                ListTile(
                  leading: const Icon(Icons.privacy_tip),
                  title: const Text('Privacy Policy  '),
                  onTap: () {
                    Navigator.pop(context);
                  },
                )
              ],
            )),
      ),
    );
  }
}
