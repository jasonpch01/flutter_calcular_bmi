import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyCard(),
    );
  }
}

class MyCard extends StatefulWidget {
  const MyCard({super.key});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("My Card"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 10.0),
        color: Colors.blue[400],
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                //backgroundImage: AssetImage("assets/images/DanielJPEG.jpeg"),
                radius: 60,
                backgroundColor: Colors.black,
                child: Text(
                  'MF',
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.blue[400],
                    fontWeight: FontWeight.bold
                    ),
                    ),
                //child: Image.asset("assets/images/DanielJPEG.jpeg"),
              ),
              ListTile(
                titleAlignment: ListTileTitleAlignment.center,
                title: Center(
                  child: Text(
                    "Mañuico Flores, Roly",
                    style: TextStyle(
                        fontFamily: "tektur", fontWeight: FontWeight.bold),
                  ),
                ),
                subtitle: Text(
                  "developer flutter",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: "tektur", fontSize: 18.0),
                ),
              ),
              Divider(
                thickness: 0.7,
                color: Colors.black,
                indent: 20.0,
                endIndent: 20.0,
              ),
              Card(
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.phone),
                  title: Text("+51 967 743 864"),
                  subtitle: Text("Telefono"),
                  trailing: Icon(Icons.check_circle_outline),
                ),
              ),
              Card(
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.email),
                  title: Text("systemgroup.peru@gmail.com",style: TextStyle(fontSize: 14.0),),
                  subtitle: Text("Correo electronico"),
                  trailing: Icon(Icons.check_circle_outline),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/facebook.png",
                    height: 60.0,
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Image.asset(
                    "assets/images/instagram.png",
                    height: 60.0,
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Image.asset(
                    "assets/images/twitter.png",
                    height: 60.0,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class calcularIBM extends StatefulWidget {
  const calcularIBM({super.key});

  @override
  State<calcularIBM> createState() => _calcularIBMState();
}

class _calcularIBMState extends State<calcularIBM> {
  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    primary: Colors.black87,
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Calcular la masa corporal"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Altura :",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "200 cm",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Slider(value: 0, onChanged: (value) {}),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Peso :",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "60 kg",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Slider(value: 0, onChanged: (value) {}),
              //TextButton(
              //  style: ButtonStyle(),
              //  onPressed: () {
              //    print("clcik");
              //  },
              //  child: Text('TextButton'),
              //),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 40.0),
                  primary: Colors.blue, // background
                  onPrimary: Colors.white, // foreground
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.save),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text('Calcular'),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              Text(
                "70",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ListTile(
                title: Center(
                  child: Text("Saludable"),
                ),
                subtitle: Center(
                  child: Text("Se enciente en buen estado"),
                ),
              ),
              SvgPicture.asset("assets/images/imagen1.svg",
                  height: 150.0, fit: BoxFit.contain),
//              Image(image: SvgPicture("assets/images/imagen1.svg"),)
            ],
          ),
        ),
      ),
    );
  }
}
