import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:klicky/map_view.dart';
import 'package:klicky/widgets/restarunt_card.dart';
import 'package:klicky/widgets/search_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    TextEditingController textController = TextEditingController();
    String dropdownvalue = 'Item 1';

    // List of items in our dropdown menu
    var items = [
      'Item 1',
      'Item 2',
      'Item 3',
      'Item 4',
      'Item 5',
    ];

    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SafeArea(
          child: Scaffold(
            body: Container(
              decoration:
                  const BoxDecoration(color: Color.fromRGBO(240, 245, 239, 1)),
              child: Column(
                children: [
                  const SearchWidget(),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          width: 120,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: DropdownButton(
                              // Initial Value
                              value: dropdownvalue, // Down Arrow Icon
                              icon: const Icon(Icons.arrow_drop_down_sharp),
                              iconSize: 24,
                              isExpanded: true,
                              borderRadius: BorderRadius.circular(5),
                              // Array list of items
                              items: items.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              // After selecting the desired option,it will
                              // change button value to selected value
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownvalue = newValue!;
                                });
                              },
                            ),
                          ),
                        ),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.tune)),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ScrollConfiguration(
                      behavior: const ScrollBehavior(),
                      child: GlowingOverscrollIndicator(
                        axisDirection: AxisDirection.down,
                        color: const Color.fromRGBO(232, 136, 19, 1),
                        child: ListView(
                          shrinkWrap: true,
                          children: const [
                            Restaurant_card(),
                            Restaurant_card(),
                            Restaurant_card(),
                            Restaurant_card(),
                            Restaurant_card(),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                        width: 160,
                        height: 40,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          child: ElevatedButton.icon(
                            label: const Text("View Map"),
                            onPressed: () {
                              Get.to(const MyMapScreen());
                            },
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                                backgroundColor:
                                    const Color.fromRGBO(232, 136, 19, 1),
                                textStyle: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            icon: const Icon(Icons.map_outlined),
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
