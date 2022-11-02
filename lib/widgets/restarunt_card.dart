import 'package:flutter/material.dart';

// ignore: camel_case_types
class Restaurant_card extends StatelessWidget {
  const Restaurant_card({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // IMAGE SECTION
                  Column(
                    children: [
                      Image.network(
                        "https://images.pexels.com/photos/262978/pexels-photo-262978.jpeg?auto=compress&cs=tinysrgb&w=140&h=1400&dpr=2",
                        fit: BoxFit.cover,
                        width: 150,
                        height: 120,
                      ),
                    ],
                  ),
                  // TEXT SECTION
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Peter's Cafe",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "Address Text Comes here",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            padding: const EdgeInsets.all(5),
                            constraints: const BoxConstraints(),
                            onPressed: () {},
                            icon: const Icon(Icons.local_drink),
                            iconSize: 18,
                            color: Colors.grey,
                          ),
                          IconButton(
                            padding: const EdgeInsets.all(5),
                            constraints: const BoxConstraints(),
                            onPressed: () {},
                            icon: const Icon(Icons.food_bank_outlined),
                            iconSize: 18,
                            color: Colors.grey,
                          ),
                          IconButton(
                            padding: const EdgeInsets.all(5),
                            constraints: const BoxConstraints(),
                            onPressed: () {},
                            icon: const Icon(Icons.wifi),
                            iconSize: 18,
                            color: Colors.grey,
                          ),
                          IconButton(
                            padding: const EdgeInsets.all(5),
                            constraints: const BoxConstraints(),
                            onPressed: () {},
                            icon: const Icon(Icons.attach_money_sharp),
                            iconSize: 18,
                            color: Colors.grey,
                          ),
                        ],
                      )
                    ],
                  ),
                  // QR CODE SECTION
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        maxRadius: 12,
                        child: IconButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) =>
                                  _buildPopupDialog(context),
                            );
                          },
                          icon: const Icon(Icons.qr_code),
                          iconSize: 8,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Open",
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )),
    );
  }

  Widget _buildPopupDialog(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: AlertDialog(
        title: SizedBox(
          child: Center(
              child: Column(
            children: const [
              Text(
                'Scan To access my Profile',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          )),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              "It will show you my profile page if any of your friend scan it",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 12,
                  color: Colors.grey),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Image.network(
                "https://miro.medium.com/max/1400/1*sHmqYIYMV_C3TUhucHrT4w.png",
                width: 200,
                height: 200,
              ),
            )
          ],
        ),
        actions: <Widget>[
          Center(
            child: ElevatedButton.icon(
              label: const Text("Share"),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  backgroundColor: const Color.fromRGBO(232, 136, 19, 1),
                  textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              icon: const Icon(Icons.share_sharp),
            ),
          ),
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: TextButton.styleFrom(padding: EdgeInsets.zero),
              child: const Text(
                "Not Now",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
