import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SwitchCheckBoxExample extends StatefulWidget {
  const SwitchCheckBoxExample({super.key});

  @override
  State<SwitchCheckBoxExample> createState() => _SwitchCheckBoxExampleState();
}

class _SwitchCheckBoxExampleState extends State<SwitchCheckBoxExample> {
  bool isSwitched = false;
  bool isSwitched2 = false;
  bool isChecked1 = true;
  bool isChecked2 = false;
  bool isChecked3 = false;
  int selectedValue = 0;

  void toggleSwitch(bool value) {
    setState(() {
      isSwitched = value;
      if (isSwitched) {
        Fluttertoast.showToast(
          msg: "Mobile data enabled",
          backgroundColor: Colors.blue,
          textColor: Colors.white,
        );
      } else {
        Fluttertoast.showToast(
            msg: "Mobile data disabled",
            backgroundColor: Colors.blue,
            textColor: Colors.white);
      }
    });
  }

  void toggleSwitch2(bool value) {
    setState(() {
      isSwitched2 = value;
      if (isSwitched2) {
        Fluttertoast.showToast(
            msg: "Wifi enabled",
            backgroundColor: Colors.blue,
            textColor: Colors.white);
      } else {
        Fluttertoast.showToast(
            msg: "Wifi disabled",
            backgroundColor: Colors.blue,
            textColor: Colors.white);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Settings"),
        foregroundColor: Colors.white,
      ),
      body: Column(

          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              alignment: Alignment.centerLeft,
              child: const Text(
                "Toggle",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: const Text(
                "Cellular data",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              trailing: Switch(
                value: isSwitched,
                onChanged: toggleSwitch,
              ),
            ),
            const Divider(),
            ListTile(
              leading: const Text(
                "Wifi",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              trailing: Switch(value: isSwitched2, onChanged: toggleSwitch2),
            ),
            Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                alignment: Alignment.centerLeft,
                child: const Text("Single Check",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ))),
            ListTile(
                leading: const Text(
                  "Allow notifications",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                trailing: Radio(
                  value: 1,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value!;
                      Fluttertoast.showToast(
                          msg: "Notifications allowed",
                          backgroundColor: Colors.red,
                          textColor: Colors.white);
                    });
                  },
                  groupValue: selectedValue,
                )),
            const Divider(),
            ListTile(
                leading: const Text(
                  "Turn off notifications",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                trailing: Radio(
                  value: 2,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value!;
                      Fluttertoast.showToast(
                          msg: "Notifications are turned off",
                          backgroundColor: Colors.red,
                          textColor: Colors.white);
                    });
                  },
                  groupValue: selectedValue,
                )),
            Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                alignment: Alignment.centerLeft,
                child: const Text("Multiple Check",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ))),
            CheckboxListTile(
              value: isChecked1,
              onChanged: (value) {
                setState(() {
                  if (isChecked1) {
                    isChecked1 = value!;
                    Fluttertoast.showToast(
                        msg: "Microphone permission denied",
                        backgroundColor: Colors.red,
                        textColor: Colors.white);
                  } else {
                    isChecked1 = value!;
                    Fluttertoast.showToast(
                        msg: "Microphone permission granted",
                        backgroundColor: Colors.red,
                        textColor: Colors.white);
                  }
                });
              },
              title: const Text(
                "Microphone Access",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            CheckboxListTile(
              value: isChecked2,
              onChanged: (value) {
                setState(() {
                  if (isChecked2) {
                    isChecked2 = value!;
                    Fluttertoast.showToast(
                        msg: "Location permission denied",
                        backgroundColor: Colors.red,
                        textColor: Colors.white);
                  } else {
                    isChecked2 = value!;
                    Fluttertoast.showToast(
                        msg: "Location permission granted",
                        backgroundColor: Colors.red,
                        textColor: Colors.white);
                  }
                });
              },
              title: const Text(
                "Location Access",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            CheckboxListTile(
              value: isChecked3,
              onChanged: (value) {
                setState(() {
                  isChecked3 = value!;
                });
              },
              title: const Text(
                "Haptics",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ]),
    );
  }
}
