import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inventory_management/ui/components/input_field.dart';
import 'package:inventory_management/ui/login_page/login_page.dart';
import 'package:inventory_management/ui/login_page/verify_screen.dart';
import 'package:inventory_management/ui/sign_in/controller.dart';
import 'package:provider/provider.dart';

class SignInPage extends StatefulWidget {
  static const routeName = '/signinPage';
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
      child: SignInPage(),
    );
  }

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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
                gradient: RadialGradient(
                  center: Alignment.topRight,
                  radius: 1.5,
                  colors: <Color>[
                    Color(0xff33CEFF),
                    Color(0xff30AAFF),
                  ],
                ),
              ),
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.22,
                width: MediaQuery.of(context).size.width * 0.36,
                child: SvgPicture.asset(
                  'images/analytics.svg',
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: _NextButtonAndAgreement(
                onTap: controller.signIn,
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              bottom:
                  animate ? MediaQuery.of(context).size.height / 3 : -56 * 8.0,
              left: 16,
              right: 16,
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
                height: MediaQuery.of(context).size.height * 0.26,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom / 4),
                  child: Form(
                    key: _formKey,
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: CustomScrollView(
                        slivers: [
                          SliverList(
                            delegate: SliverChildListDelegate(
                              [
                                BuildInputField(
                                  label: 'username',
                                  icon: const Icon(Icons.person),
                                  onChanged: controller.setUserName,
                                ),
                                BuildInputField(
                                  label: 'password',
                                  icon: const Icon(Icons.remove_red_eye),
                                  onChanged: controller.setPassword,
                                ),
                              ],
                            ),
                          ),
                          const SliverPadding(
                            padding: EdgeInsets.all(
                              16,
                            ),
                          ),
                        ],
                      ),
                    ),
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
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
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
                  'Sign In',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 36,
          ),
          const _BottomTextBox(),
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
            text: 'Dont have an account? ',
            style: const TextStyle(color: Colors.black, fontSize: 20),
            children: <TextSpan>[
              TextSpan(
                text: 'Sign up',
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.pushNamed(context, verify_screen.routeName);
                  },
                style: const TextStyle(color: Colors.blueAccent, fontSize: 18),
              )
            ],
          ),
        ),
      ],
    );
  }
}
