import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  String nama = "", alamat = "", noHP = "";
  TextEditingController namaController = TextEditingController();
  TextEditingController alamatController = TextEditingController();
  TextEditingController noHPController = TextEditingController();

  @override
  void dispose() {
    namaController.dispose();
    alamatController.dispose();
    noHPController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Container(
          width: mediaQueryWidth,
          height: mediaQueryHeight,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black, Color.fromARGB(255, 87, 87, 87)])),
          child: ListView(
            children: [
              SizedBox(
                height: 90,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("BACK"),
                ),
              ),
              Text(
                "FORM DATA DIRI",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 38,
                    fontFamily: "baskvi"),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 19, horizontal: 19),
                width: mediaQueryWidth,
                child: Column(
                  children: [
                    Container(
                      width: mediaQueryWidth,
                      child: Text(
                        "Nama Lengkap",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 24,
                            fontFamily: "baskvi"),
                      ),
                    ),
                    TextField(
                      controller: namaController,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(),
                        hintText: "Nama Lengkap",
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      width: mediaQueryWidth,
                      child: Text(
                        "Alamat",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 24,
                            fontFamily: "baskvi"),
                      ),
                    ),
                    TextFormField(
                      controller: alamatController,
                      maxLines: 4,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(),
                        hintText: "Alamat",
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      width: mediaQueryWidth,
                      child: Text(
                        "Nomor HP",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 24,
                            fontFamily: "baskvi"),
                      ),
                    ),
                    TextField(
                      controller: noHPController,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(),
                        hintText: "Nomor HP",
                      ),
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          nama = namaController.text;
                          alamat = alamatController.text;
                          noHP = noHPController.text;
                        });
                      },
                      child: Text("Submit"),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      width: mediaQueryWidth,
                      child: Text(
                        "Nama Lengkap :\n\t$nama \nAlamat:\n\t $alamat \nNo HP:\n\t $noHP",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 24,
                            fontFamily: "baskvi"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
