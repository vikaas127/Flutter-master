import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inventory_management/data/repositories/account_repository.dart';
import 'package:inventory_management/ui/components_new/rounded_button.dart';
import 'package:inventory_management/ui/components_new/rounded_input.dart';
import 'package:inventory_management/ui/components_new/rounded_password_input.dart';
import 'package:inventory_management/ui/sign_in/controller.dart';
import 'package:provider/provider.dart';

class LoginForm extends StatefulWidget {
  final bool isLogin;
  final Duration animationDuration;
  final Size size;
  final double defaultLoginSize;
  const LoginForm({
    Key key,
    @required this.isLogin,
    @required this.animationDuration,
    @required this.size,
    @required this.defaultLoginSize,
  }) : super(key: key);
  static Widget wrapped({
    @required bool isLogin,
    @required Duration animationDuration,
    @required Size size,
    @required double defaultLoginSize,
  }) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => SignInController(
            context.read(),
            context.read(),
          ),
        ),
      ],
      child: LoginForm(
        isLogin: isLogin,
        animationDuration: animationDuration,
        size: size,
        defaultLoginSize: defaultLoginSize,
      ),
    );
  }

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  String password;
  String username;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final controller = context.watch<SignInController>();
    final vm = controller.value;

    return AnimatedOpacity(
      opacity: widget.isLogin ? 1.0 : 0.0,
      duration: widget.animationDuration * 4,
      child: Align(
          alignment: Alignment.center,
          child: () {
            if (vm.loading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: SizedBox(
                  width: widget.size.width,
                  height: widget.defaultLoginSize,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Center(
                        child: Text(
                          'BitCope\nConnecting every bit',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                      ),
                      const SizedBox(height: 40),
                      SvgPicture.asset(
                        'images/analytics.svg',
                        height: 150,
                      ),
                      const SizedBox(height: 40),
                      RoundedInput(
                          validation: (value) {
                            if (value.isEmpty) {
                              return 'please enter username';
                            }
                            return null;
                          },
                          onChanged: (value) {
                            username = value;
                            controller.setUserName(value);
                          },
                          icon: Icons.mail,
                          hint: 'Username'),
                      RoundedPasswordInput(
                          validation: (value) {
                            if (value.isEmpty) {
                              return 'please enter password';
                            }
                            return null;
                          },
                          onChanged: (value) {
                            password = value;
                            controller.setPassword(value);
                          },
                          hint: 'Password'),
                      const SizedBox(height: 10),
                      if (vm.status == LoginStatus.failed)
                        const Text(
                          'No account found',
                          style: TextStyle(color: Colors.red),
                        ),
                      RoundedButton(
                          onTap: vm.valid ? controller.signIn : null,
                          title: 'LOGIN')
                    ],
                  ),
                ),
              ),
            );
          }()),
    );
  }
}
