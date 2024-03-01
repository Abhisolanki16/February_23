import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> category = ['All', 'Hp', 'Dell', 'lenovo', 'Acer', 'Zebronics'];

  List<Map<String, dynamic>> products = [
    {
      "name": "KITECH KB-021 Wired USB Multi-device Keyboard",
      'price': "\u{20B9}${229}",
      'image':
          "https://rukminim2.flixcart.com/image/612/612/xif0q/keyboard/desktop-keyboard/n/3/c/kb-021-kitech-original-imagkx85eytae9eq.jpeg?q=70"
    },
    {
      "name": "Portronics POR 2113 Wireless Laptop Keyboard  (Grey)",
      'price': "\u{20B9}${949}",
      'image':
          "https://rukminim2.flixcart.com/image/416/416/xif0q/keyboard/laptop-keyboard/k/9/t/key7-combo-keyboard-mouse-combo-set-with-2-4ghz-1200-dpi-original-imagvr8csghzsvn6.jpeg?q=70&crop=false"
    },
    {
      "name": "ZEBRONICS K20 Keyboard and Alex Wired Optical Mouse",
      'price': "\u{20B9}${949}",
      'image':
          "https://rukminim2.flixcart.com/image/612/612/k1dw70w0/keyboard/desktop-keyboard/9/3/j/zabolo-usb-wired-keyboard-for-desktop-kb20-original-imafgzrfuwaastnb.jpeg?q=70"
    },
    {
      "name": "SCOTLON All Panel_Futuristic purple and orange car_Prem",
      'price': "\u{20B9}${249}",
      'image':
          "https://rukminim2.flixcart.com/image/612/612/xif0q/laptop-skin-decal/k/b/d/all-panel-futuristic-purple-and-orange-car-premium-laptop-skin-original-imagshh3hzpk2zwt.jpeg?q=70"
    },
    {
      "name": "The Originals Alive Set of 5 Keyboard and Mouse",
      'price': "\u{20B9}${599}",
      'image':
          "https://rukminim2.flixcart.com/image/612/612/xif0q/laptop-accessories-combo/c/k/7/set-of-5-keyboard-and-mouse-combo-with-usb-hub-c-type-otg-cable-original-imagubuhpsnynfk3.jpeg?q=70"
    },
    {
      "name":
          "YAJNAS Universal sbybyhdvwdbuwdbwbbudbeubdubweubdudbudbbdwudbubyvdybdybvdd Silicone Keyboard Protector Skin Cover",
      'price': "\u{20B9}${109}",
      'image':
          "https://rukminim2.flixcart.com/image/612/612/k34rki80/keyboard-skin/y/g/j/laptop-universal-silicone-keyboard-protector-skin-cover-dust-original-imafmb83ys8cbcsh.jpeg?q=70"
    },
  ];
  int selectedIndex = 0;

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
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(left: 20, top: 15),
            child: const Text(
              "Mechanical Keyboard",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),

          Container(
            height: 50,
            margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: category.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.all(7),
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 25,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(width: .7, color: Colors.black),
                      color: selectedIndex == index
                          ? Colors.white
                          : Colors.blueGrey[100],
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Text(
                      category[index],
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 10, right: 10, left: 10),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: (.20 / .33),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 2),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(children: [
                      Container(
                          height: 120,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                            //color: Colors.black,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: products.elementAt(index)['image'] != null
                              ? Image.network(
                                  products.elementAt(index)['image'],
                                  fit: BoxFit.fill,
                                  loadingBuilder:
                                      (context, child, loadingProgress) {
                                    if (loadingProgress == null) {
                                      return child;
                                    } else {
                                      return const Center(
                                          child: CircularProgressIndicator());
                                    }
                                  },
                                )
                              : const Center(
                                  child: CircularProgressIndicator(),
                                )),
                      Container(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          "${products.elementAt(index)['name']}",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          "${products.elementAt(index)['price']}",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 5),
                        child: ElevatedButton(
                            onPressed: () {
                              var snackBarDemo = SnackBar(
                                  backgroundColor: Colors.blue.shade800,
                                  content: Text(
                                      "Your product has been added to the cart and its price is ${products.elementAt(index)['price']}"));
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBarDemo);
                            },
                            style: ElevatedButton.styleFrom(
                                //padding: const EdgeInsets.all(10),
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.deepPurpleAccent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.add_shopping_cart),
                                Text("Add to cart"),
                              ],
                            )),
                      ),
                    ]),
                  );
                },
              ),
            ),
          )
        ]),
      ),
    );
  }
}
