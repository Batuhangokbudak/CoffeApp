import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 243, 241, 1),
      body: SafeArea(
          child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20)),
            child: Stack(
              children: [
                Image.asset("assets/images/white.jpg"),
                InkWell(
                  onTap: () => Navigator.pushNamed(context, '/main'),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Icon(
                      Icons.arrow_circle_left,
                      size: 50,
                      color: Colors.white60,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Cappucino",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                Text(
                  "\$10.7",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.green),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.green,
                  size: 25,
                ),
                Icon(
                  Icons.star,
                  color: Colors.green,
                  size: 25,
                ),
                Icon(
                  Icons.star,
                  color: Colors.green,
                  size: 25,
                ),
                Icon(
                  Icons.star,
                  color: Colors.green,
                  size: 25,
                ),
                Icon(
                  Icons.star,
                  color: Colors.grey,
                  size: 25,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text(
                  " %2 süt extra şeker, vanilya şurubu, italya menşeli, buharla \n pişirilmiş süt köpüğüyle hazırlanan espresso bazlı \n kahve içeceği",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Divider(),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text(
                  "Boyut Seç",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.local_cafe_outlined,
                      color: Colors.green,
                      size: 30,
                    ),
                    Text(
                      "Küçük",
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Icon(
                      Icons.local_cafe_outlined,
                      color: Colors.grey,
                      size: 40,
                    ),
                    Text("Orta"),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Icon(
                      Icons.local_cafe_outlined,
                      color: Colors.grey,
                      size: 50,
                    ),
                    Text("Büyük")
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Icon(
                      Icons.local_cafe_outlined,
                      color: Colors.grey,
                      size: 60,
                    ),
                    Text("Çok Büyük")
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Divider(),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "-",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "1",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "+",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 150,
                  height: 70,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(50)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "\$10.7",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      Icon(
                        Icons.arrow_circle_right,
                        color: Colors.white,
                        size: 40,
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
