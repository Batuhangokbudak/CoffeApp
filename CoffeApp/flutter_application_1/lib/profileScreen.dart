import 'package:flutter/material.dart';

class ProfilScreen extends StatefulWidget {
  const ProfilScreen({Key? key});

  @override
  State<ProfilScreen> createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.05),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Navigator.pushNamed(context, '/main'),
                    child: Icon(Icons.arrow_back_ios),
                  ),
                  Text(
                    "Profil",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: screenWidth * 0.06),
                  ),
                  Icon(Icons.dark_mode),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.04,
              ),
              CircleAvatar(
                radius: screenWidth * 0.2,
                backgroundImage: AssetImage("assets/images/coffe.jpg"),
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              Text(
                "User Example",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: screenWidth * 0.06),
              ),
              Text("userexpample@ornek.com"),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(screenWidth * 0.1),
                ),
                width: screenWidth * 0.5,
                height: screenHeight * 0.08,
                child: Center(
                  child: Text(
                    "Profili Düzenle",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.04,
              ),
              Divider(),
              Column(
                children: [
                  buildMenuRow("Ayarlar", Icons.settings),
                  SizedBox(
                    height: 10,
                  ),
                  buildMenuRow("Kart Bilgileri", Icons.credit_card),
                  SizedBox(
                    height: 10,
                  ),
                  buildMenuRow("Bilgi", Icons.info),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  InkWell(
                    onTap: () => Navigator.pushNamed(context, '/first'),
                    child:
                        buildMenuRow("Çıkış", Icons.logout, color: Colors.red),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMenuRow(String title, IconData icon,
      {Color color = Colors.green}) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(
              icon,
              color: color,
            ),
            SizedBox(
              width: screenWidth * 0.02,
            ),
            Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: screenWidth * 0.035),
            ),
          ],
        ),
        SizedBox(
          width: screenWidth * 0.2,
        ),
        Row(
          children: [
            Icon(Icons.arrow_forward_ios),
          ],
        ),
      ],
    );
  }
}
