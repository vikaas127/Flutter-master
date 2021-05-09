import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inventory_management/ui/components/input_field.dart';
import 'package:inventory_management/ui/login_page/controller/login_page_controller.dart';
import 'package:provider/provider.dart';

class RegisterForm extends StatefulWidget {
  final bool isLogin;
  final Duration animationDuration;
  final Size size;
  final double defaultLoginSize;
  static const routeName = '/loginPage';
  static Widget wrapped({
    @required bool isLogin,
    @required Duration animationDuration,
    @required Size size,
    @required double defaultLoginSize,
  }) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<LoginPageController>(
          lazy: false,
          create: (context) => LoginPageController(
              onError: (value) {},
              accountRepository: context.read(),
              appNavigator: context.read()),
        )
      ],
      child: RegisterForm(
        isLogin: isLogin,
        defaultLoginSize: defaultLoginSize,
        size: size,
        animationDuration: animationDuration,
      ),
    );
  }

  const RegisterForm({
    Key key,
    @required this.isLogin,
    @required this.animationDuration,
    @required this.size,
    @required this.defaultLoginSize,
  }) : super(key: key);
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  @override
  Widget build(BuildContext context) {
    final controller = context.watch<LoginPageController>();
    return AnimatedOpacity(
      opacity: widget.isLogin ? 0.0 : 1.0,
      duration: widget.animationDuration * 5,
      child: Visibility(
        visible: !widget.isLogin,
        child: Align(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: SizedBox(
              width: widget.size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Welcome',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  BuildInputField(
                    label: 'username',
                    icon: const Icon(Icons.person),
                    validator: controller.validationMessageUserName,
                    onChanged: controller.usernameChanged,
                  ),
                  BuildInputField(
                      label: 'Email',
                      icon: const Icon(Icons.email),
                      onChanged: controller.emailChanged,
                      validator: controller.validationMessageEmail),
                  BuildInputField(
                    label: 'phoneNumber',
                    type: TextInputType.number,
                    icon: const Icon(Icons.phone),
                    onChanged: controller.phoneNumberChanged,
                    validator: controller.validationMessageContactNumber,
                  ),
                  BuildInputField(
                      label: 'password',
                      icon: const Icon(Icons.remove_red_eye),
                      onChanged: controller.passwordChanged,
                      validator: controller.validationMessagePassword),
                  BuildInputField(
                    label: 'confirm password',
                    icon: const Icon(Icons.remove_red_eye),
                    onChanged: controller.confirmPasswordChanged,
                    validator: controller.validationMessageConfirmPassword,
                  ),
                  BuildInputField(
                    label: 'recovery_question',
                    icon: const Icon(Icons.remove_red_eye),
                    onChanged: controller.recoveryQuestionChanged,
                    validator: controller.validationMessageRecoveryQuestion,
                  ),
                  BuildInputField(
                    label: 'recovery_answer',
                    icon: const Icon(Icons.remove_red_eye),
                    onChanged: controller.recoveryAnswerChanged,
                    validator: controller.validationMessageRecoveryAnswer,
                  ),
                  BuildInputField(
                    label: 'user_type',
                    icon: const Icon(Icons.supervised_user_circle),
                    //onChanged: controller.userTypeChanged,
                    validator: controller.validationMessageUserType,
                  ),
                  const SizedBox(height: 40),
                  SvgPicture.asset('assets/images/login.svg'),
                  const SizedBox(height: 40),
                  //RoundedInput(icon: Icons.mail, hint: 'Username'),
                  //RoundedInput(icon: Icons.face_rounded, hint: 'Name'),
                  //RoundedPasswordInput(hint: 'Password'),
                  const SizedBox(height: 10),
                  //RoundedButton(title: 'SIGN UP')
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
