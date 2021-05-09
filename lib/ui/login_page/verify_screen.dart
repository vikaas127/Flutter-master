import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inventory_management/ui/components/input_field.dart';
import 'package:inventory_management/ui/login_page/login_page.dart';
import 'package:inventory_management/ui/login_page/phone_verification.dart';
import 'package:inventory_management/ui/sign_in/controller.dart';
import 'package:provider/provider.dart';

class verify_screen extends StatefulWidget {
  static const routeName = '/verifyscreen';
  static Widget wrapped() {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => SignInController(
            context.read(),
            context.read(),
          ),
        ),
      ],
      child: verify_screen(),
    );
  }

  @override
  _verify_screenState createState() => _verify_screenState();
}

class _verify_screenState extends State<verify_screen> {
  bool radiobutton=true;

  static final _formKey = GlobalKey<FormState>();
  bool animate = false;

  @override
  void initState() {
    super.initState();

    Future<dynamic>.delayed(const Duration(milliseconds: 500)).then(
          (dynamic e) => setState(
            () {
          animate = true;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<SignInController>();


    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xfff2f3f7),
        body: Stack(
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(

              ),
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.52,
                width: MediaQuery.of(context).size.width * 0.66,
                child: SvgPicture.asset(
                  'images/Illustration 3Illustrations.svg',
                ),
              ),
            ),
            Positioned(top: 320,left: 40,
              child: Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.80,
                child: Center(child: Text("Please verify your account using "
                    "one of the below options",style: GoogleFonts.aBeeZee(fontSize: 18),)),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: _NextButtonAndAgreement(
                onTap: (){
                  Navigator.pushNamed(context, phonevrification_screen.routeName);
                },
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              bottom: animate ? MediaQuery.of(context).size.height / 3.3 : -56 * 8.0,
              left: 16,
              right: 16,
              child: InkWell(
                onTap: (){
                  setState(() {
                    radiobutton==false;
                  });

                },
                child: Container(
                  margin: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 9,
                        blurRadius: 8,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  height: MediaQuery.of(context).size.height * 0.11,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom /3.5),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(children: [
                        radiobutton==false?Icon(Icons.radio_button_on,color: Colors.lightBlue,):Icon(Icons.radio_button_off,color: Colors.grey,),


                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal:14.0),
                          child: Icon(Icons.phone,color: Colors.lightBlue,size: 42,),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal:8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Phone:",style: GoogleFonts.aBeeZee(fontSize: 16),)
                           ,   Padding(
                             padding: const EdgeInsets.only(top:3.0),
                             child: Text("+918233081931",style: GoogleFonts.aBeeZee(fontSize: 18,color: Colors.blueAccent,fontWeight: FontWeight.bold),),
                           )

                            ],
                          ),
                        )
                      ],),
                    )
                  ),
                ),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              bottom:
              animate ? MediaQuery.of(context).size.height /5.8 : -56 * 8.0,
              left: 16,
              right: 16,
              child: InkWell(
                onTap: (){
                  setState(() {
                    radiobutton==true;
                  });

                },
                child: Container(
                  margin: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 9,
                        blurRadius: 8,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  height: MediaQuery.of(context).size.height * 0.11,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom / 4),
                    child:  Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(children: [
                        radiobutton==true?Icon(Icons.radio_button_on,color: Colors.lightBlue,):Icon(Icons.radio_button_off,color: Colors.grey,),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal:14.0),
                          child: Icon(Icons.email,color: Colors.lightBlue,size: 42,),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal:8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Email:",style: GoogleFonts.aBeeZee(fontSize: 16),)
                              ,   Padding(
                                padding: const EdgeInsets.only(top:3.0),
                                child: Text("infoemail@gmail.com",style: GoogleFonts.aBeeZee(fontSize: 16,color: Colors.blueAccent,fontWeight: FontWeight.bold),),
                              )

                            ],
                          ),
                        )
                      ],),
                    )
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _NextButtonAndAgreement extends StatelessWidget {
  const _NextButtonAndAgreement({
    Key key,
    @required this.onTap,
  }) : super(key: key);
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 96),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          GestureDetector(
            onTap: onTap,
            child: Container(
              height: 46,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                gradient: const RadialGradient(
                  center: Alignment.topRight,
                  radius: 1.5,
                  colors: <Color>[
                    Color(0xff33CEFF),
                    Color(0xff30AAFF),
                  ],
                ),
              ),
              child: const Center(
                child: Text(
                  'Proceed',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 36,
          ),
         // const _BottomTextBox(),
        ],
      ),
    );
  }
}

class _BottomTextBox extends StatelessWidget {
  const _BottomTextBox({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RichText(
          text: TextSpan(
            text: 'as',
            style: const TextStyle(color: Colors.black, fontSize: 20),
            children: <TextSpan>[
              TextSpan(
                text: 'Proceed',
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.pushNamed(context, verify_screen.routeName);
                  },
                style: const TextStyle(color: Colors.blueAccent, fontSize: 15),
              )
            ],
          ),
        ),
      ],
    );
  }
}
