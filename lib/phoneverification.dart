import 'package:flutter/material.dart';
import 'homepage.dart';
import 'bottomtabs.dart';

class PhoneVerification extends StatefulWidget {
  @override
  _PhoneVerificationState createState() => _PhoneVerificationState();
}

class _PhoneVerificationState extends State<PhoneVerification> {
  TextEditingController controller = TextEditingController();
  var pinLength = 6;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
     // toast('7858');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Verification")),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Text(
                "OTP Verification",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              SizedBox(
                height: 30,
              ),
              Text("Relax. We will automatically validate OTP."),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  controller: controller,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 15, top: 15),
                      hintText: 'Enter OTP',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      )),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: ButtonTheme(
                  height: 40,
                  minWidth: MediaQuery.of(context).size.width / 2,
                  child: RaisedButton.icon(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 0,
                    color: Colors.indigo,
                    icon: Text(""),
                    label: Text(
                      "Confirm",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => BottomTabs()
                      ));
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                  onTap: () {},
                  child: Container(
                      child: Text(
                        "Resend OTP",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.indigo),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}